# Magnetic-Levitation-Control
Modeling, simulation, and control of a magnetic levitation system using MATLAB/Simulink.


## Overview

This project focuses on the modeling, simulation, and control of a magnetic
levitation system using MATLAB and Simulink.

The magnetic levitation process is an inherently unstable open-loop system.
The objective is to stabilize the levitated object and control its position
using a cascaded feedback control structure.

The project combines system modeling, controller design, discrete-time
implementation, simulation, and analysis of the resulting control behavior.

---

## Control Architecture

The control system is based on cascaded electrical and mechanical control
loops:

```text
Position Reference
        │
        ▼
  2-DOF PID Controller
   Position Control
        │
        ▼
 Current Reference
        │
        ▼
  2-DOF PI Controller
    Current Control
        │
        ▼
   Power Inverter
        │
        ▼
 Electromagnetic Coil
        │
        ▼
 Magnetic Levitation
        │
        ▼
 Position Sensor
        │
        └────────────── Feedback
```

## Author

**Taha Abdessalem Merad**
