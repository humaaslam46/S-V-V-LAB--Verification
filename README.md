# 🚦 Smart Traffic Signal Control System – SVV Lab

![GitHub repo size](https://img.shields.io/github/repo-size/humaaslam46/V-V-LAB-VERIFICATION?style=for-the-badge)
![GitHub last commit](https://img.shields.io/github/last-commit/humaaslam46/V-V-LAB-VERIFICATION?style=for-the-badge)
![GitHub language](https://img.shields.io/github/languages/top/humaaslam46/V-V-LAB-VERIFICATION?style=for-the-badge)

---

## 🧾 Overview

This repository contains my lab work for **Software Verification & Validation (SVV)**.

The project focuses on formally modeling and verifying a **Smart Traffic Signal Control System** that:

* 🚦 Dynamically controls traffic signals
* 🚑 Prioritizes emergency vehicles
* ⚠️ Prevents conflicting traffic flows
* 📊 Maintains system correctness through formal verification

---

## 🧰 Tools & Technologies

![Z Notation](https://img.shields.io/badge/Formal%20Modeling-Z%20Notation-blue?style=for-the-badge)
![VDM](https://img.shields.io/badge/VDM-SL-Overture-orange?style=for-the-badge)
![Alloy](https://img.shields.io/badge/Alloy-Analyzer-purple?style=for-the-badge)
![Git](https://img.shields.io/badge/Version%20Control-Git-black?style=for-the-badge)
![GitHub](https://img.shields.io/badge/Repository-GitHub-lightgrey?style=for-the-badge)

---

## 🏗️ Repository Structure

```plaintext id="p6v2xk"
VV-LAB-VERIFICATION/
│
├── requirements/
│   └── requirements_v1.md
│
├── models/
│   ├── Z models
│   ├── VDM-SL specifications
│   └── Alloy models
│
└── README.md
```

---

## 🧪 Work Performed (Task-wise)

### 🔹 Task 1: Repository Setup & Configuration

✔ Created GitHub repository
✔ Organized project folders
✔ Added requirements document
✔ Maintained commit history for traceability

---

### 🔹 Task 2: State-Based Modeling (Z)

✔ Defined system state variables
✔ Modeled traffic signals and system conditions
✔ Specified safety invariants:

* Only one direction gets green signal
* Timers remain within safe limits
* Emergency mode overrides normal flow

---

### 🔹 Task 3: Operation Schema (Z)

✔ Modeled **UpdateSignalPhase**
✔ Represented state transitions (before → after)
✔ Ensured invariants remain preserved

---

### 🔹 Task 4: Constraint & Exception Modeling (Z)

✔ Modeled **ActivateEmergencyOverride**
✔ Added validation constraints
✔ Handled exceptions:

* Invalid sensor input
* Conflicting emergency requests

---

### 🔹 Task 5: Function-Oriented Specification (VDM-SL)

✔ Implemented function:
`optimizeSignal(signalState, trafficDensity)`

✔ Logic:

* Highest traffic direction → Green
* Others → Red

---

### 🔹 Task 6: Pre/Post Verification (VDM-SL)

✔ Defined preconditions (valid input)
✔ Defined postconditions (safe output)
✔ Verified:

* Only one green signal
* Correct signal assignment
* Complete system state

---

### 🔹 Task 7: Relational Modeling (Alloy)

✔ Modeled system entities and relationships
✔ Defined directions and signal mapping
✔ Implemented safety constraint:
❗ No conflicting directions receive green signals

---

### 🔹 Task 8: Assertion & Counterexample Analysis (Alloy)

✔ Wrote assertions for system correctness
✔ Verified constraints using Alloy Analyzer
✔ Intentionally violated constraint
✔ Generated counterexample
✔ Analyzed failure to validate system safety

---

## 🧠 Approach

I followed a **verification-driven approach** instead of direct implementation:

🔸 Requirements → Formal Modeling → Verification → Validation

This ensured:

* ✅ Safety constraints are enforced
* ✅ Logical errors are detected early
* ✅ System behavior matches real-world requirements

---

## 🚀 Conclusion

This lab demonstrates how formal methods help ensure:
✔ System correctness
✔ Safety in critical systems
✔ Reliable decision-making

---

## 👩‍💻 Author

**Huma Aslam**
BS Software Engineering (6th Semester)
