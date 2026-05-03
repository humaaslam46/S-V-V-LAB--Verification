# 🚦 Smart Traffic Signal Control System
### Software Verification & Validation Lab — Lahore Garrison University

<div align="center">

![GitHub repo size](https://img.shields.io/github/repo-size/humaaslam46/V-V-LAB-VERIFICATION?style=for-the-badge&color=c084fc&labelColor=1e1e2e)
![GitHub last commit](https://img.shields.io/github/last-commit/humaaslam46/V-V-LAB-VERIFICATION?style=for-the-badge&color=f472b6&labelColor=1e1e2e)
![GitHub top language](https://img.shields.io/github/languages/top/humaaslam46/V-V-LAB-VERIFICATION?style=for-the-badge&color=a78bfa&labelColor=1e1e2e)
![Status](https://img.shields.io/badge/Status-Completed-22c55e?style=for-the-badge&labelColor=1e1e2e)

</div>

---

## 📌 Overview

This repository documents lab work for **Software Verification & Validation (SVV)**, where formal methods are applied to model and verify a **Smart Traffic Signal Control System** — a safety-critical application where correctness is non-negotiable.

The system is designed to:

- 🚦 Dynamically control traffic signals based on real-time conditions
- 🚑 Detect and prioritize emergency vehicle requests
- ⚠️ Prevent conflicting simultaneous traffic flows
- ✅ Guarantee system correctness through mathematical verification

The work follows a **requirements → formal modeling → verification → validation** pipeline using Z Notation, VDM-SL, and Alloy — tools used in industry for high-assurance software.

---

## 🛠️ Tools & Technologies

| Tool | Purpose |
|------|---------|
| ![Z Notation](https://img.shields.io/badge/Z%20Notation-Formal%20Modeling-c084fc?style=flat-square) | State-based formal specification |
| ![VDM-SL](https://img.shields.io/badge/VDM--SL-Function%20Specification-f472b6?style=flat-square) | Function-oriented modeling with pre/post conditions |
| ![Alloy](https://img.shields.io/badge/Alloy%20Analyzer-Relational%20Modeling-a78bfa?style=flat-square) | Constraint checking and counterexample generation |
| ![Git](https://img.shields.io/badge/Git-Version%20Control-fb923c?style=flat-square) | Commit history for traceability |
| ![GitHub](https://img.shields.io/badge/GitHub-Repository-94a3b8?style=flat-square) | Code hosting and documentation |

---

## 📁 Repository Structure

```
VV-LAB-VERIFICATION/
│
├── requirements/
│   └── requirements_v1.md          # System requirements document
│
├── models/
│   ├── z/                          # Z Notation specifications
│   ├── vdm/                        # VDM-SL function models
│   └── alloy/                      # Alloy relational models
│
└── README.md
```

---

## 🧪 Lab Tasks — Step by Step

### Task 1 — Repository Setup & Configuration
> *Establishing traceability and project structure*

- Created and configured the GitHub repository
- Organized folders for requirements and models
- Added requirements document with system specifications
- Maintained a meaningful commit history for traceability

---

### Task 2 — State-Based Modeling (Z Notation)
> *Formally defining what the system IS*

Defined the core system state, including:
- Traffic signal states per direction
- System mode (normal / emergency)
- Timer and sensor variables

**Safety invariants enforced:**
- Only one direction can hold a green signal at any time
- Timers stay within safe operational bounds
- Emergency mode unconditionally overrides standard flow

---

### Task 3 — Operation Schema (Z Notation)
> *Formally defining what the system DOES*

- Modeled `UpdateSignalPhase` — the primary state transition operation
- Represented before-state and after-state explicitly
- Proved all safety invariants are preserved across transitions

---

### Task 4 — Constraint & Exception Modeling (Z Notation)
> *Handling edge cases with formal rigor*

- Modeled `ActivateEmergencyOverride` schema
- Defined validation constraints on inputs
- Handled exceptional scenarios:
  - Invalid or missing sensor data
  - Simultaneous conflicting emergency requests

---

### Task 5 — Function-Oriented Specification (VDM-SL)
> *Expressing system logic as verifiable functions*

Implemented:
```
optimizeSignal(signalState, trafficDensity) → SignalOutput
```
**Logic:** The direction with highest traffic density receives green; all others are set to red.

---

### Task 6 — Pre/Post Condition Verification (VDM-SL)
> *Mathematically bounding function behavior*

- **Preconditions:** All inputs are within valid ranges; signal state is well-formed
- **Postconditions:** Exactly one green signal; correct directional assignment; complete output state

Verified that no valid input can produce an unsafe output.

---

### Task 7 — Relational Modeling (Alloy)
> *Modeling relationships and structural constraints*

- Modeled system entities: directions, signals, intersections
- Mapped signal states to directions using relational logic
- Enforced the core safety constraint: **no two conflicting directions can simultaneously receive a green signal**

---

### Task 8 — Assertion & Counterexample Analysis (Alloy)
> *Testing the model by trying to break it*

- Wrote assertions encoding safety properties
- Verified all constraints hold using Alloy Analyzer
- **Intentionally introduced a violation** to test assertion strength
- Generated and analyzed a counterexample to confirm the system correctly detects unsafe states

---

## 🔍 Approach

This project followed a **verification-driven development** approach — not a coding-first one.

```
Requirements → Formal Specification → Verification → Validation
```

Each formal model was treated as a contract: if the specification is correct and verified, the implemented system behavior follows by construction. This approach ensures:

- Safety constraints are enforced *before* any code is written
- Logical errors surface early in modeling, not in testing
- The system's behavior is mathematically grounded in real-world requirements

---

## 📊 Key Takeaways

| Formal Method | Strength |
|--------------|----------|
| Z Notation | Precise state modeling; invariant enforcement |
| VDM-SL | Functional verification with pre/post conditions |
| Alloy Analyzer | Counterexample generation; constraint checking |

Formal methods are not just academic exercises — they are industry-standard tools used in avionics, medical devices, and transportation systems where failures are unacceptable.

---

## ✅ Conclusion

This lab demonstrates that **formal verification** can provide stronger correctness guarantees than traditional testing alone. By modeling the Smart Traffic Signal Control System using Z, VDM-SL, and Alloy, safety-critical properties were verified mathematically — not just checked against test cases.

---

## 👩‍💻 Author

**Huma Aslam**  
BS Software Engineering — 6th Semester  
Lahore Garrison University, Lahore, Pakistan  

[![Portfolio](https://img.shields.io/badge/Portfolio-humaaslam.site-c084fc?style=for-the-badge)](https://humaaslam.site)
[![GitHub](https://img.shields.io/badge/GitHub-humaaslam46-f472b6?style=for-the-badge&logo=github)](https://github.com/humaaslam46)

---
