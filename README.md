<div align="center">

# Corex

**Windows 10 &amp; 11 Optimization, Security Hardening and Hardware Diagnostics Suite**

*Native C# (.NET 9 / WPF) • Asynchronous Architecture • 100% Self-Contained*

<br/>

[![Version](https://img.shields.io/badge/Version-v1.3.0-0969da?style=flat-square)](https://github.com/rafaysadiq-cys/Corex/releases)
[![Platform](https://img.shields.io/badge/Platform-Windows%2010%20%7C%2011-0078D6?style=flat-square)](https://github.com/rafaysadiq-cys/Corex)
[![Architecture](https://img.shields.io/badge/Architecture-x64-343b42?style=flat-square)](https://github.com/rafaysadiq-cys/Corex)
[![Framework](https://img.shields.io/badge/Framework-.NET%209.0%20WPF-512BD4?style=flat-square)](https://github.com/rafaysadiq-cys/Corex)
[![Runtime](https://img.shields.io/badge/Runtime-Self--Contained-2ea44f?style=flat-square)](https://github.com/rafaysadiq-cys/Corex)
[![License](https://img.shields.io/badge/License-MIT-gray?style=flat-square)](LICENSE)

<br/>

[**Download Installer (Corex_Setup.exe)**](Corex_Setup.exe) | [**Download Portable (Corex.exe)**](Corex.exe) | [**Documentation**](#core-capabilities) | [**Technical Specs**](#technical-specifications)

---

</div>

## Overview

Corex is a native Windows system optimization, security baseline, and hardware diagnostic suite engineered for Windows 10 and Windows 11. Designed on an asynchronous multi-threaded engine (`async / await`), Corex interacts directly with the Win32 API, Windows Registry, WMI, DISM, and the PnP subsystem without relying on interpreted PowerShell scripts or command-line wrappers.

The application is distributed as a single-file, 100% self-contained binary with embedded desktop runtime components, requiring no prior software installation.

---

## Distribution Packages

| Package | File | Approximate Size | Target Environment |
| :--- | :--- | :---: | :--- |
| **Windows Setup Wizard** | [`Corex_Setup.exe`](Corex_Setup.exe) | ~60.6 MB | Standard Windows installation with custom directory selection, Start Menu shortcuts, and Control Panel uninstaller integration. |
| **Standalone Portable** | [`Corex.exe`](Corex.exe) | ~64.7 MB | Zero-install single-file executable for system technicians and portable USB deployments. |

*Note: Corex requests Administrator privileges upon startup via its application manifest to interact with low-level system subkeys, BitLocker volumes, and network adapters.*

---

## Core Capabilities

| Category | Primary Functions |
| :--- | :--- |
| **Safety Net** | 1-Click System Restore Point generation, snapshot list inspection, and native restore wizard launcher (`rstrui.exe`). |
| **Firewall Controller** | Temporary firewall disablement with auto-reactivation countdown timer (5m, 15m, 30m, 1h, custom), master shields, and profile configuration. |
| **Storage Reclaimer** | Multi-gigabyte purge of Windows Update download cache (`SoftwareDistribution`), hibernation toggle (`powercfg -h off`), and browser cache flushes. |
| **Context Menu Manager** | Scan and toggle third-party shell extensions under `*\shellex` and `Directory\shellex`; restore classic Windows 10 context menu. |
| **Windows 11 AI Stripper** | Complete block of Windows Recall continuous screen capture databases, physical Copilot key remapper, and Edge pre-launch killer. |
| **Network &amp; Diagnostics** | Pure C# download/upload/ping speed test, plaintext Wi-Fi password viewer, and scan-to-connect mobile QR code generator. |
| **Hardware Testing Suite** | Interactive 75% visual keyboard tester, real-time mouse polling rate (Hz) and double-click fault detection, and screen dead pixel test. |
| **Scheduled Auto-Pilot** | Windows Task Scheduler automation executing weekly SSD TRIM, temporary cache purge, DNS flush, and memory working set release. |
| **Security Baseline** | LSASS RunAsPPL password locking, LLMNR/NetBIOS poisoning neutralization, SMBv1 closure, and USB virus AutoRun prevention. |
| **BitLocker Manager** | Full GUI encryption dashboard for Windows Home and Pro editions, 48-digit numerical recovery key backup, and emergency unlock. |
| **Deep App Uninstaller** | Batch multi-app uninstaller with residue directory scrubbing across `Program Files` and `AppData`, plus deep registry cleanup. |
| **Technician Hub** | 1-Click OEM driver backup and restoration via `DISM`/`pnputil`, Windows virtualization feature management (WSL, Hyper-V, Sandbox). |
| **Activation &amp; Power** | Official Microsoft Activation Scripts (MAS) integration for Office/Windows, IDM activation, and full hardware power shutdown. |

---

## Architectural Highlights

* **Firewall Controller with Auto-Reactivation Timer**: Allows users to temporarily suspend Windows Firewall across Domain, Private, and Public profiles to facilitate software installations or network testing. A real-time countdown timer automatically re-engages firewall protection once the duration elapses, preventing accidental exposure.
* **Non-Blocking Asynchronous Engine**: Every deep scan, disk cleanup, and registry modification executes on background worker threads, preventing interface freezes and providing live timestamped console logging.
* **Direct Subsystem Interop**: Bypasses slow script interpreters to interface directly with low-level Windows APIs, ensuring deterministic execution and sub-millisecond status queries.

---

## Keyboard Navigation

| Key Combination | Scope | Action |
| :--- | :---: | :--- |
| <kbd>Up Arrow</kbd> / <kbd>Down Arrow</kbd> | Global | Switch between navigation tabs. *(Suspended in Hardware Tester for key testing)* |
| <kbd>Tab</kbd> / <kbd>Shift + Tab</kbd> | Global | Cycle control focus forward and backward. |
| <kbd>Enter</kbd> / <kbd>Space</kbd> | Global | Activate selected button or toggle checkbox. |
| <kbd>Escape</kbd> | Global | Dismiss open modal overlays. |

---

## Technical Specifications

| Parameter | Specification |
| :--- | :--- |
| Application Name | Corex |
| Version | 1.3.0 |
| Framework | .NET 9.0 (Desktop SDK) |
| Language | C# 13 |
| User Interface | Windows Presentation Foundation (Hardware-Accelerated) |
| Target Architecture | x86-64 (AMD64) |
| Supported Operating Systems | Windows 11 (All Builds), Windows 10 (Build 1809 and newer) |
| Packaging Model | Single-File Self-Contained Executable |
| Code Signature | Authenticode SHA-256 (`CN=Rafay Sadiq`) |
| External Dependencies | None (Zero prerequisites required) |

---

## Author & Project Information

Developed by **Rafay Sadiq**.

* **GitHub**: [@rafaysadiq-cys](https://github.com/rafaysadiq-cys)
* **Email**: [rafaysadiq.cys@gmail.com](mailto:rafaysadiq.cys@gmail.com)
* **Repository**: [https://github.com/rafaysadiq-cys/Corex](https://github.com/rafaysadiq-cys/Corex)

---

## License

This software is released under the **[MIT License](LICENSE)**.

Copyright (c) 2026 Rafay Sadiq. All rights reserved.
