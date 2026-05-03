abstract sig Direction {}
one sig North, South, East, West extends Direction {}

abstract sig SignalColor {}
one sig Red, Yellow, Green extends SignalColor {}

sig Signal {
  direction: one Direction,
  currentPhase: one SignalColor
}

sig Sensor {
  monitors: one Direction,
  trafficFlow: one Int
}

sig Intersection {
  signals: set Signal,
  connectedSensors: set Sensor
}

sig EmergencyVehicle {
  priorityRoute: one Direction
}

-- Each direction has exactly one signal
fact OneSignalPerDirection {
  all d: Direction |
    one s: Signal | s.direction = d
}
-- Each signal belongs to exactly one intersection (FIXES YOUR ISSUE)
fact SignalOwnership {
  all s: Signal | one i: Intersection | s in i.signals
}
-- Sensors monitor valid directions
fact SensorMapping {
  all s: Sensor | s.monitors in Direction
}
-- No conflicting green signals (per intersection)
fact NoConflictingGreen {
  all i: Intersection |
    all s1, s2: i.signals |
      s1 != s2 and
      s1.currentPhase = Green and
      s2.currentPhase = Green
      implies not (
        (s1.direction = North and s2.direction = South) or
        (s1.direction = South and s2.direction = North) or
        (s1.direction = East and s2.direction = West) or
        (s1.direction = West and s2.direction = East)
      )
}
-- Emergency vehicle must get green signal on its route
fact EmergencyPriority {
  all e: EmergencyVehicle |
    one s: Signal |
      s.direction = e.priorityRoute and
      s.currentPhase = Green
}
-- Run with controlled scope (IMPORTANT)
run {} for exactly 1 Intersection, exactly 4 Signal, exactly 2 Sensor, exactly 1 EmergencyVehicle
