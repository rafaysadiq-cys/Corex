# Corex

[![Platform](https://img.shields.io/badge/Platform-Windows%2010%20%7C%2011-0078D6?style=flat-square)](https://github.com/rafaysadiq-cys/Corex)
[![Architecture](https://img.shields.io/badge/Architecture-x64-555555?style=flat-square)](https://github.com/rafaysadiq-cys/Corex)
[![Build](https://img.shields.io/badge/Type-Portable%20Executable-2ea44f?style=flat-square)](https://github.com/rafaysadiq-cys/Corex)
[![Version](https://img.shields.io/badge/Version-1.0.0-0366d6?style=flat-square)](https://github.com/rafaysadiq-cys/Corex/releases)
[![License](https://img.shields.io/badge/License-MIT-gray?style=flat-square)](LICENSE)

Corex is a standalone system administration, debloating, and optimization suite designed for Windows 10 and Windows 11. It centralizes fragmented operating system configurations, privacy controls, performance policies, and maintenance tasks into a single executable interface.

---

## Technical Specifications

| Parameter | Specification |
| :--- | :--- |
| Application Name | Corex |
| Binary | Corex.exe |
| Target Architecture | x86-64 (AMD64) |
| Supported OS | Windows 10 (1809 and newer), Windows 11 (All Builds) |
| Runtime Dependencies | None (Native .NET Framework 4.5+ preinstalled on Windows) |
| Privilege Level | Elevated Administrator (Automatic UAC token request) |
| Distribution Model | Portable Single-File Executable |

---

## Core Capabilities

### 1. Recommended Baseline Profile
Applies an essential configuration baseline targeted at newly installed operating systems:
- Restores the classic Windows 11 right-click context menu.
- Displays file extensions and hidden items in File Explorer.
- Disables integrated Bing web queries inside Start Menu search.
- Disables promotional suggestions and lock screen advertisements.
- Disables Windows Fast Startup to ensure a full hardware power cut upon shutdown.
- Fixes PCIe energy-saving states that cause wireless network adapters to disconnect.
- Terminates non-essential telemetry and background diagnostic reporting.
- Configures High / Ultimate Performance power plans.
- Purges temporary directories and flushes the local DNS resolver cache.

### 2. System Hardware Diagnostics
Real-time hardware and operating system inventory without background polling overhead:
- Operating system edition, release ID, build number, and kernel architecture.
- Processor model, physical core count, and dynamic memory utilization.
- Storage drive partitioning, volume status, and active GPU adapter identification.
- Windows licensing validation state.
- System uptime counter and last boot timestamp.
- Structured hardware log export to plaintext format.

### 3. Interface and Shell Tweaks
Fine-grained customization for standard Windows components:
- Taskbar alignment adjustment (Left or Center).
- System-wide Dark Mode enforcement across applications and shell surfaces.
- Desktop system icon visibility (This PC, Recycle Bin, Control Panel, Network).
- Background activity suppression for Copilot and Recall telemetry components.
- Direct management of notification thresholds and account banner prompts.

### 4. Debloating and Package Removal
Removes non-essential preinstalled UWP packages and provisioned applications:
- Preinstalled trial games and consumer applications.
- Redundant media players and legacy communication stubs.
- Telemetry-heavy background widgets.
- Complete uninstallation routine for Microsoft OneDrive, including sync process termination and Explorer shell namespace cleanup.

### 5. Privacy and Telemetry Hardening
Disables tracking mechanisms and diagnostic logging services at the policy level:
- Sets `AllowTelemetry` policy value to `0` (Security/Enterprise baseline).
- Stops and disables `DiagTrack` (Connected User Experiences and Telemetry) and `dmwappushservice`.
- Disables advertising identifiers, customer activity history, and Timeline tracking.
- Shuts down sensor-based location tracking and remote speech recognition collection.
- Blocks diagnostic feedback frequency prompts and tailored experience profiling.

### 6. Performance and Service Management
Optimizes system resources and disk input/output:
- Service state configuration: Safely adjusts non-critical background services including Geolocation, Maps Broker, Retail Demo, and Fax.
- Superfetch / SysMain configuration for mechanical drives experiencing sustained disk usage.
- TRIM maintenance command verification for solid-state storage.
- Visual effect adjustments to reduce window transition delays.

### 7. Software Deployment
Silent package acquisition via the Windows Package Manager (winget) engine:
- Web Browsers: Google Chrome, Mozilla Firefox, Brave, Arc.
- Development Runtimes: Visual Studio Code, Git, Node.js LTS, Python, OpenJDK.
- System Utilities: PowerToys, 7-Zip, Everything Search, ShareX, Lightshot, WinRAR.
- Runtimes and Redistributables: Microsoft Visual C++ All-in-One runtimes, .NET runtimes, DirectX.

### 8. Network Maintenance and Repair
Hardware recovery and network protocol remediation:
- Complete Winsock catalog reset and TCP/IP stack renewal.
- Interface power cycling and wireless adapter power state management.
- Quick DNS switching between DHCP default, Google DNS (8.8.8.8), and Cloudflare DNS (1.1.1.1).
- Windows Print Spooler queue reset and service recovery.

### 9. Windows Update Governance
Granular scheduling and update distribution policies:
- One-click 30-day update pause and instant resumption.
- Enforcement of Active Hours between 09:00 and 23:00 to prevent automated restarts during production use.
- Driver inclusion prevention to stop Windows Update from replacing vendor hardware drivers.
- Suppression of automated reboots while an active user session is authenticated.

---

## Quick Start

### Execution
1. Download `Corex.exe` directly from the repository root or the [Releases](https://github.com/rafaysadiq-cys/Corex/releases) section.
2. Launch `Corex.exe`. When prompted by User Account Control (UAC), select **Yes** to provide administrative privileges.
3. Select individual modules or click **Apply Recommended Profile** to execute standard optimizations.

### System Verification
Corex does not require an installer, external DLL files, or permanent background background services. To remove the software, delete the single executable binary.

---

## Security and System Integrity

- **Transparency**: Changes are enacted directly through standard Windows APIs, Registry keys (`HKLM` / `HKCU`), and Windows PowerShell administration cmdlets.
- **Safety Policy**: Corex modifies configuration flags rather than deleting critical system libraries or system-critical drivers.
- **SmartScreen / Heuristic Analysis**: Because Corex is an unsigned administrative executable modifying system-level registry settings, Windows Defender SmartScreen may display an unknown publisher notification. Select **More info** followed by **Run anyway** to proceed.

---

## License

This project is licensed under the terms of the MIT License. Refer to the [LICENSE](LICENSE) file for complete terms.
