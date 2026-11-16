<div align="center">

# ⚡ COREX

<p align="center">
  <b>The Next-Generation Windows 10 &amp; 11 Optimization, Security Hardening &amp; Hardware Testing Suite</b>
  <br />
  <i>Engineered in Pure Native C# (.NET 9 / WPF) • Multi-Threaded Asynchronous Core • 100% Self-Contained</i>
</p>

<p align="center">
  <a href="https://github.com/rafaysadiq-cys/Corex/releases"><img src="https://img.shields.io/badge/Version-v1.3.0-0969da?style=for-the-badge&logo=github&logoColor=white" alt="Version" /></a>
  <a href="https://github.com/rafaysadiq-cys/Corex"><img src="https://img.shields.io/badge/Platform-Windows%2010%20%7C%2011-0078D6?style=for-the-badge&logo=windows&logoColor=white" alt="Platform" /></a>
  <a href="https://github.com/rafaysadiq-cys/Corex"><img src="https://img.shields.io/badge/Architecture-x64%20(AMD64)-343b42?style=for-the-badge&logo=intel&logoColor=white" alt="Architecture" /></a>
  <a href="https://github.com/rafaysadiq-cys/Corex"><img src="https://img.shields.io/badge/Framework-.NET%209.0%20(Native%20WPF)-512BD4?style=for-the-badge&logo=dotnet&logoColor=white" alt="Framework" /></a>
  <a href="https://github.com/rafaysadiq-cys/Corex"><img src="https://img.shields.io/badge/Runtime-100%25%20Self--Contained-2ea44f?style=for-the-badge&logo=dependabot&logoColor=white" alt="Runtime" /></a>
  <a href="https://github.com/rafaysadiq-cys/Corex/blob/main/LICENSE"><img src="https://img.shields.io/badge/License-MIT-e3b341?style=for-the-badge" alt="License" /></a>
</p>

<p align="center">
  <a href="#-downloads--quick-start"><b>📦 Download Installer</b></a> •
  <a href="#-downloads--quick-start"><b>🚀 Portable Binary</b></a> •
  <a href="#-feature-matrix--core-modules"><b>✨ Feature Matrix</b></a> •
  <a href="#-hardware-inspector--testing-suite"><b>💻 Hardware Suite</b></a> •
  <a href="#-corex-vs-traditional-tweakers"><b>📊 Comparison</b></a> •
  <a href="#-keyboard-shortcuts"><b>⌨️ Shortcuts</b></a>
</p>

---

</div>

## 🌟 Executive Overview

**Corex** is an enterprise-grade Windows optimization, defensive security baseline, and hardware testing platform. Built entirely from scratch in native **C# (.NET 9)** utilizing hardware-accelerated **WPF**, Corex operates directly against the native **Win32 API, Windows Registry, WMI, DISM, and PnP subsystems**.

Unlike legacy optimization tools that wrap fragile interpreted PowerShell/Batch scripts, Corex:
- **Never blocks the UI**: Runs every heavy operation, scan, and system modification on asynchronous worker threads (`async / await`).
- **Requires Zero Dependencies**: Compiled as a **100% self-contained single-file binary** with the desktop runtime embedded directly inside.
- **Includes a Built-in Safety Net**: Every deep tweak and debloat is protected with 1-click **System Restore Point** generation.

---

## 📦 Downloads & Quick Start

<div align="center">

| Distribution Package | Filename | Size | Target Use-Case |
| :--- | :---: | :---: | :--- |
| **Windows Setup Wizard** *(Recommended)* | [`Corex_Setup.exe`](Corex_Setup.exe) | `~60.6 MB` | Full Windows installer wizard with custom directory picker, Start Menu shortcuts, Desktop icon, and clean Control Panel uninstaller. |
| **Standalone Portable Executable** | [`Corex.exe`](Corex.exe) | `~64.7 MB` | Zero-install single-file portable executable. Bundles the complete runtime. Run directly from flash drives or any folder. |

</div>

> [!IMPORTANT]
> **Administrator Privileges**: Corex automatically requests elevated UAC privileges on launch to manage low-level registry keys, BitLocker volumes, and network adapters.

---

## 📊 Corex vs Traditional Tweakers

| Feature / Metric | Traditional Script Wrappers (Batch / PS1) | Standard GUI Tweakers | ⚡ Corex Suite |
| :--- | :---: | :---: | :---: |
| **Underlying Engine** | Interpreted PowerShell / CMD | C# / Electron | **Native C# (.NET 9 / WPF)** |
| **UI Responsiveness** | Freezes terminal during execution | Frequent UI hangs | **100% Asynchronous (Zero Lag)** |
| **External Dependencies** | Requires specific PowerShell versions | Requires .NET Runtime install | **100% Self-Contained Single-File** |
| **Safety Net** | ❌ No Restore Points | ⚠️ Seldom implemented | **✔ 1-Click System Restore Points** |
| **Storage Reclaimer** | Simple `%TEMP%` wipe | Basic disk cleanup | **✔ Multi-GB Purge (Updates + Hiberfil + Caches)** |
| **Hardware Testing Suite** | ❌ None | ❌ None | **✔ 75% Keyboard + Mouse Hz/Clicks + Dead Pixels** |
| **AI / Recall Disabler** | ❌ None | ⚠️ Basic Copilot toggle | **✔ Recall Snapshot Block + Physical Key Remapper** |
| **Wi-Fi Diagnostics** | ❌ Simple disconnect | ⚠️ Basic info | **✔ Plaintext Passwords + Mobile QR Generator** |
| **Silent Auto-Pilot** | ❌ None | ❌ None | **✔ Weekly Scheduled Task Maintenance** |
| **Digital Signature** | ❌ Unsigned | ❌ Unsigned | **✔ Authenticode SHA256 (`CN=Rafay Sadiq`)** |

---

## ✨ Feature Matrix & Core Modules

<div align="center">

| Module | Category | Primary Functionality |
| :---: | :--- | :--- |
| 🛡️ | **Safety Net** | 1-Click System Restore Point creation, checkpoint manager, and `rstrui.exe` launcher. |
| 🧹 | **Deep Storage Cleaner** | Purge Windows Update cache (5–20 GB), Hibernation toggle (`powercfg -h off`), browser caches. |
| 🎛️ | **Context Menu Manager** | Scan & disable bloated third-party right-click shell extensions; restore classic Windows 10 menu. |
| 🔒 | **AI & Privacy Stripper** | Block Windows Recall snapshots & database; disable physical Copilot key & Edge background pre-launch. |
| 📶 | **Network & Speed Test** | Pure native C# speed test (Mbps/Ping); reveal saved Wi-Fi plaintext passwords + Mobile QR Code. |
| 💻 | **Hardware Testing Suite** | Interactive 75% Keyboard Tester, Mouse Polling Rate (Hz) & Double-Click detector, Dead Pixel test. |
| ⏱️ | **Corex Auto-Pilot** | Scheduled Windows Task: weekly automated SSD TRIM, update cache purge, and memory flush. |
| 🔐 | **BitLocker Manager** | Full GUI for Windows Home & Pro; live encryption bars, 48-digit key backup, emergency auto-unlock. |
| 📦 | **Deep App Uninstaller** | Batch multi-app removal with residue scrubber across AppData, Program Files, and Registry. |
| 🛠️ | **Technician Toolkit** | 1-Click OEM Driver Backup via DISM, Windows Virtualization Hub (WSL/Hyper-V/Sandbox). |
| ⚡ | **Activations & Power** | Official MAS integration (Office 365 / Windows HWID), IDM activation, True Hardware Power Off. |

</div>

---

## 🔍 In-Depth Module Highlights

<details open>
<summary><b>🛡️ 1. Safety Net & System Security Baseline</b></summary>
<br />

* **1-Click System Restore Points**: Protects your system before any aggressive tweaking or debloating. Displays existing system checkpoints with sequence numbers and launches the native System Restore wizard in one click.
* **LSASS Memory Protection (RunAsPPL)**: Locks Local Security Authority Subsystem Service (LSASS) memory to prevent Mimikatz, procdump, and malicious tools from dumping plaintext credentials and NTLM hashes.
* **Network Poisoning Neutralization**: Disables Link-Local Multicast Name Resolution (LLMNR) and NetBIOS over TCP/IP to prevent Responder-style credential poisoning on shared Wi-Fi networks.
* **Ransomware & Exploit Hardening**: Disables outdated SMBv1 protocol to mitigate network worm vectors (EternalBlue/WannaCry) and enforces Defender Attack Surface Reduction (ASR) rules.
* **USB Virus & Leak Shield**: 1-click toggle for USB Read-Only Mode and complete disablement of AutoPlay/AutoRun subsystems to stop shortcut viruses on USB insertion.

</details>

<details open>
<summary><b>🧹 2. Deep Storage Cleaner & Space Reclaimer (GBs Recovered)</b></summary>
<br />

* **Windows Update Cache Purge**: Safely wipes `C:\Windows\SoftwareDistribution\Download` to free **5 GB to 20 GB+** of obsolete update cache files that Windows never cleans automatically.
* **Hibernation Toggle (`hiberfil.sys`)**: Instantly recovers **8 GB to 32 GB** of disk space on the `C:` drive by disabling hybrid hibernation for users who prefer standard clean shutdown.
* **Browser Cache Flush**: Scans and cleans multi-gigabyte browser caches across Google Chrome, Microsoft Edge, Brave, and Mozilla Firefox.
* **Crash Dumps & Temp Scrub**: Clears residual Windows mini-dumps, memory crash dumps (`*.dmp`), and user temporary directory caches.
* **SSD S.M.A.R.T. Health Monitor**: Real-time NVMe controller telemetry, temperature readouts, health status, and 1-click audit report export.

</details>

<details open>
<summary><b>🎛️ 3. Right-Click Context Menu Manager & Shell Customization</b></summary>
<br />

* **Shell Extension Manager**: Scans and enumerates all third-party context menu handlers under `*\shellex\ContextMenuHandlers` and `Directory\shellex`. Allows 1-click enabling and disabling of stubborn items (WinRAR, 7-Zip, graphics control panels, cloud storage shortcuts).
* **Classic Windows 10 Context Menu**: Permanently restores the full classic right-click menu on Windows 11 without needing "Show more options" or secondary clicks.
* **Taskbar & Explorer Personalization**: Align taskbar to the Left or Center, hide search boxes and widgets, show file extensions (`.exe`, `.zip`), reveal hidden files, and toggle compact Explorer spacing.

</details>

<details open>
<summary><b>🔒 4. Windows 11 AI & Copilot Deep Stripper</b></summary>
<br />

* **Windows Recall Disabler**: Fully disables Windows Recall continuous screenshot recording, AI optical character recognition (OCR), and background biometric indexing databases.
* **Physical Copilot Key Remapper / Disabler**: Blocks hardware Copilot keys on modern Windows 11 laptops and disables shell shortcut integrations.
* **Edge Background Killer**: Prevents Microsoft Edge from running persistent background pre-launch processes and startup boost services when closed.
* **Telemetry & Tracking Blocker**: Enforces `AllowTelemetry = 0`, disables `DiagTrack` (Connected User Experiences and Telemetry), advertising IDs, and lock screen promotional feeds.

</details>

<details open>
<summary><b>📶 5. Network Diagnostics, Speed Test & Wi-Fi Password QR</b></summary>
<br />

* **Native C# Internet Speed Test**: Real-time latency (ping), jitter, download speed (Mbps), and upload speed (Mbps) diagnostics implemented directly in C# without web wrappers.
* **Saved Wi-Fi Passwords Viewer**: Retrieves and displays plaintext network security keys for all previously connected wireless profiles (`key=clear`).
* **Mobile Scan-to-Connect QR Generator**: Generates an on-screen Wi-Fi QR code in real-time—allowing phones and guest laptops to scan and connect instantly without password typing.
* **Network Stack Reset**: 1-click Winsock reset, TCP/IP stack re-initialization, and DNS cache flush.
* **Wi-Fi Sleep Fix**: Resolves the infamous Windows 11 bug where PCIe/USB Wi-Fi adapters drop off the bus during modern standby sleep.

</details>

<details open>
<summary><b>💻 6. Hardware Inspector & Testing Suite</b></summary>
<br />

*Designed specifically for inspecting used laptops and benchmarking custom builds:*
* **Interactive 75% Keyboard Key Tester**: Visual on-screen laptop keyboard layout with pixel-perfect arrow cluster alignment. Responsive keys turn green on press, with active key testing counters and layout reset.
* **Mouse Polling Rate & Double-Click Switch Detector**: Live polling rate (Hz) frequency counter and heuristic switch chatter detection to identify failing microswitches that cause unwanted double-clicks.
* **Screen Dead Pixel & Backlight Bleed Test**: Full-screen solid color switching (Red, Green, Blue, White, Black) to detect stuck sub-pixels and IPS glow / backlight bleeding.
* **Battery Authenticity & Degradation**: Live charge telemetry, cycle count, factory wear percentage, and BMS tamper detection against counter-reset fraud.

</details>

<details>
<summary><b>⏱️ 7. Corex Auto-Pilot (Scheduled Silent Maintenance)</b></summary>
<br />

* **1-Click Windows Task Scheduler Integration**: Sets up an automated, quiet maintenance routine that triggers every Sunday at 03:00 AM:
  * Triggers SSD TRIM optimization (`defrag.exe C: /O`).
  * Purges temporary Windows Update download caches.
  * Flushes dormant RAM working sets via `EmptyWorkingSet`.
  * Flushes the DNS resolver cache.
  * Updates battery health metrics.

</details>

<details>
<summary><b>📦 8. Deep App Uninstaller & Residue Registry Scrubber</b></summary>
<br />

* **Multi-App Batch Removal**: Select multiple applications and remove them in sequence with a single click.
* **Deep Residue Scrubber**: Eradicates leftover files and folders across `Program Files`, `Program Files (x86)`, `ProgramData`, `%AppData%`, and `%LocalAppData%`.
* **Deep Registry Purge**: Scans and cleans lingering registry subkeys across `HKLM`, `HKCU`, and `WOW6432Node`.
* **Curated Winget App Installer**: 1-click silent batch installation of 50+ curated developer, browser, media, and system utility packages.

</details>

<details>
<summary><b>🛠️ 9. Technician Toolkit & Virtualization Hub</b></summary>
<br />

* **1-Click OEM Driver Backup & Restore**: Exports all third-party OEM hardware drivers via `DISM` into a structured, timestamped backup folder; 1-click restore via `pnputil.exe`.
* **Windows Virtualization Hub**: 1-click control plane for Windows Sandbox, Windows Subsystem for Linux (WSL), Hyper-V, and Virtual Machine Platform.
* **Official MAS Integration**: Permanent Microsoft Office 365 / 2024 (Ohook method) and Windows 10/11 (HWID digital license) activation.
* **Clean Hardware Power Off**: Disables Fast Startup hybrid sleep to ensure 100% full motherboard shutdown and uptime clock reset.

</details>

---

## ⌨️ Keyboard Shortcuts & Global Navigation

Corex supports full keyboard accessibility for rapid deployment:

| Shortcut | Scope | Function |
| :---: | :---: | :--- |
| <kbd>▲ Up Arrow</kbd> / <kbd>▼ Down Arrow</kbd> | Global | Switch sidebar tabs instantly. *(Automatically suspended on Hardware Tester for key testing)* |
| <kbd>Tab</kbd> / <kbd>Shift + Tab</kbd> | Global | Move focus between controls, buttons, and input fields. |
| <kbd>Enter</kbd> / <kbd>Space</kbd> | Global | Activate the selected button, checkbox, or switch. |
| <kbd>Esc</kbd> | Global | Close active modal dialogs (About / Loading modals). |

---

## ⚙️ Technical Specifications

```yaml
Application: Corex Windows Optimization & Maintenance Suite
Version: 1.3.0
Platform: Windows 10 (Build 1809+) / Windows 11 (All Builds)
Architecture: x86-64 (AMD64)
Framework: .NET 9.0 (Desktop SDK)
Language: Pure Native C# 13
Graphics Pipeline: Hardware-Accelerated WPF (DirectX)
Packaging: 100% Self-Contained Single-File Executable
Installer Engine: Inno Setup 6 (SHA-256 Authenticode Signed)
Digital Signature: CN=Rafay Sadiq
External Dependencies: None
```

---

## 👨‍💻 Author & Contact

Designed and engineered with precision by **Rafay Sadiq**.

* **GitHub**: [@rafaysadiq-cys](https://github.com/rafaysadiq-cys)
* **Email**: [rafaysadiq.cys@gmail.com](mailto:rafaysadiq.cys@gmail.com)
* **Repository**: [https://github.com/rafaysadiq-cys/Corex](https://github.com/rafaysadiq-cys/Corex)

---

## 📄 License

This project is licensed under the **[MIT License](LICENSE)**.

```
Copyright (c) 2026 Rafay Sadiq. All rights reserved.
```
