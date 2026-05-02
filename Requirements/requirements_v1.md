# SVV LAB OEL 
# Smart Traffic Signal Control System - Requirements v1

## Functional Requirements
1. System shall control traffic signals dynamically.
2. System shall ensure no conflicting directions have green signals.
3. System shall prioritize emergency vehicles.
4. System shall adjust signal timing based on traffic density.
5. System shall log all signal changes and events.

## Non-Functional Requirements
1. Response time must be less than 2 seconds.
2. System must be reliable and fault-tolerant.
3. System must ensure data accuracy from sensors.

## Constraints
1. Emergency override must activate only with valid sensor input.
2. Signal timers must remain within safe bounds.

## Additional Requirement
- The system shall activate emergency override only when verified emergency vehicle is detected.
- System shall support multiple intersections coordination.
