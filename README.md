# Corex

[![Platform](https://img.shields.io/badge/Platform-Windows%2010%20%7C%2011-0078D6?style=flat-square)](https://github.com/rafaysadiq-cys/Corex)
[![Architecture](https://img.shields.io/badge/Architecture-x64-555555?style=flat-square)](https://github.com/rafaysadiq-cys/Corex)
[![Installer](https://img.shields.io/badge/Installer-Corex__Setup.exe-2ea44f?style=flat-square)](https://github.com/rafaysadiq-cys/Corex/releases)
[![Version](https://img.shields.io/badge/Version-1.0.0-0366d6?style=flat-square)](https://github.com/rafaysadiq-cys/Corex/releases)
[![License](https://img.shields.io/badge/License-MIT-gray?style=flat-square)](LICENSE)

**Corex** is a high-performance, native C# WPF system administration, debloating, deep uninstallation, and optimization suite designed for Windows 10 and Windows 11. Built from the ground up on a multi-threaded asynchronous architecture (`async / await`), it delivers instant responsiveness, zero UI freeze, and deep system cleaning without PowerShell script overhead.

**Author & Branding:** Made by Rafay

---

## Downloads & Installation

| Package | File | Description |
| :--- | :--- | :--- |
| **Windows Installer (Recommended)** | [`Corex_Setup.exe`](Corex_Setup.exe) | Professional setup wizard with custom install location, Desktop shortcut option, Start Menu shortcut option, and full Windows Control Panel / Settings uninstaller integration. |
| **Standalone Portable Executable** | [`Corex.exe`](Corex.exe) | Single-file portable executable. No installation required. Runs out-of-the-box. |

### Installer Features
- **Custom Directory Picker**: Choose exactly where to install (Defaults to `C:\Program Files\Corex` with full Browse support).
- **Shortcut Configuration**: Optional Desktop shortcut and Start Menu shortcuts.
- **Windows Integration**: Registers in Windows "Installed Apps" / "Programs and Features" with clean `unins000.exe` uninstaller.
- **Direct Launch**: Option to launch Corex immediately after setup completes.

---

## Technical Specifications

| Parameter | Specification |
| :--- | :--- |
| Application Name | Corex |
| Publisher / Author | Rafay Sadiq |
| Digital Signature | Authenticode SHA256 (CN=Rafay Sadiq) |
| Setup Package | Corex_Setup.exe (3.31 MB) |
| Binary | Corex.exe (1.05 MB) |
| Target Architecture | x86-64 (AMD64) |
| Architecture Core | Pure Native C# (.NET / WPF) with Async Multi-Threading |
| Supported OS | Windows 10 (1809 and newer), Windows 11 (All Builds) |
| Graphics Pipeline | Hardware-Accelerated DirectX (Zero Transparency Lag, Solid `#0d1117`) |
| Privilege Level | Elevated Administrator (Automatic UAC token request) |

---

## Core Capabilities

### 1. Recommended Baseline Profile (1-Click Optimization)
Applies an essential configuration baseline targeted at newly installed operating systems:
- Restores the classic Windows 11 right-click context menu.
- Displays file extensions and hidden items in File Explorer.
- Disables integrated Bing web queries inside Start Menu search.
- Disables promotional suggestions and lock screen advertisements.
- Disables Windows Fast Startup to ensure a full hardware power cut upon shutdown (stops uptime clock).
- Fixes PCIe energy-saving states that cause wireless network adapters to disconnect.
- Terminates non-essential telemetry and background diagnostic reporting.
- Configures High / Ultimate Performance power plans.
- Purges temporary directories and flushes the local DNS resolver cache.

### 2. Deep App Uninstaller (Comprehensive Residue & Registry Scrubber)
A thorough application uninstallation and deep residue purging engine:
- **Instant Scan**: Scans 32-bit, 64-bit, and user-space applications across the registry in under 250 milliseconds.
- **Live Search & Filter**: Real-time filtering as you type in the search bar.
- **Non-Blocking Execution**: Runs the official uninstaller in the background while monitoring progress asynchronously.
- **Deep File System Residue Purge**: Thoroughly scans and deletes leftover program directories in `Program Files`, `Program Files (x86)`, `ProgramData`, `AppData\Local`, `AppData\Roaming`, and `AppData\LocalLow`.
- **Desktop & Start Menu Shortcut Purge**: Removes all orphaned `.lnk` shortcuts pointing to the removed application.
- **Deep Registry Scrubber**: Eradicates lingering keys across `HKCU\Software`, `HKLM\SOFTWARE`, `WOW6432Node`, startup `Run` keys, and orphaned `Uninstall` registry entries.
- **Strict Safety Guards**: Built-in safeguards that protect critical operating system directories and core keys.

### 3. System Hardware Diagnostics
Real-time hardware and operating system inventory without background polling overhead:
- Operating system edition, version, build number, and kernel architecture.
- Processor model, physical core count, and logical thread count.
- Memory statistics and volume capacity/free space for all fixed drives.
- Active GPU adapter identification and VRAM capacity.
- Windows licensing validation state.
- System uptime counter and last boot timestamp.
- Structured hardware log export to plaintext file.

### 4. UI/UX Interface Tweaks
Fine-grained customization for standard Windows components:
- Classic right-click context menu toggle.
- File extensions and hidden files toggles.
- Start Menu web search and recommendation suppressors.
- Taskbar alignment adjustment (Left or Center).
- Background activity suppression for Copilot and Recall telemetry components.
- Direct management of notification thresholds and account banner prompts.

### 5. Debloating and Package Removal
Removes non-essential preinstalled UWP packages and provisioned applications:
- Preinstalled trial games (Candy Crush, Solitaire, Xbox Extras, Microsoft Games).
- Redundant consumer apps (Feedback Hub, People, Maps, 3D Viewer, Mixed Reality, OneNote, Phone Link, Teams Personal).
- Telemetry-heavy background widgets and Cortana.
- Complete uninstallation routine for Microsoft OneDrive, including sync process termination, installer execution, and residual folders purge.

### 6. Privacy & Telemetry Hardening
Disables tracking mechanisms and diagnostic logging services at the policy level:
- Sets `AllowTelemetry` policy value to `0` (Security/Enterprise baseline).
- Stops and disables `DiagTrack` (Connected User Experiences and Telemetry) and `dmwappushservice`.
- Disables advertising identifiers, customer activity history, and Timeline tracking.
- Shuts down sensor-based location tracking and remote speech recognition collection.
- Blocks diagnostic feedback frequency prompts and tailored experience profiling.

### 7. Performance & Service Management
Optimizes system resources and responsiveness:
- Service state configuration: Safely adjusts non-critical background services including Geolocation, Maps Broker, Retail Demo, and Fax.
- Superfetch / SysMain configuration for mechanical drives experiencing sustained disk usage.
- Search indexing service configuration.
- Visual effect adjustments to reduce window transition delays.
- Clean Hardware Power Off button: Executes clean, 100% full hardware power shutdown without hybrid sleep.

### 8. App Installer
Silent package acquisition via the Windows Package Manager (winget) engine:
- Web Browsers: Google Chrome, Mozilla Firefox, Brave, Arc.
- Development Runtimes: Visual Studio Code, Git, Node.js LTS, Python 3.12, OpenJDK 21, Windows Terminal.
- System Utilities: PowerToys, 7-Zip, Notepad++, Everything Search, ShareX, Lightshot, WinRAR, TreeSize.
- Media & Communication: Spotify, VLC, AIMP, OBS Studio, Discord, Telegram, WhatsApp, Zoom, Slack.
- Documents & Runtimes: LibreOffice, WPS Office, Adobe Reader, Microsoft Visual C++ All-in-One runtimes, .NET runtimes, DirectX.

### 9. Activation Tools
- Check Windows License Expiration status (`slmgr.vbs /xpr`).
- One-click launch for Microsoft Activation Scripts (MAS) for Windows & Office.
- One-click launch for official IDM Activation Script (IAS).

### 10. Customization
- System-wide Dark Mode / Light Mode enforcement across applications and shell surfaces.
- Taskbar icon alignment (Left / Center).
- Desktop system icon visibility (This PC, Recycle Bin, Control Panel, Network).
- Desktop icon spacing adjustments.

### 11. Network Repair & DNS Configuration
- Active adapter identification with IPv4, Gateway, DNS, and Link Speed.
- TCP/IP Winsock stack reset and DNS resolver cache flush.
- Wi-Fi adapter reset and Bluetooth service restart.
- Print Spooler queue cleaner and service restart.
- Fix for disappearing Wi-Fi adapter (disables PCIe sleep power cuts).
- One-click DNS server configuration (Google, Cloudflare, Quad9, OpenDNS, Default/DHCP).

### 12. Windows Update Management
- Pause Windows Updates for 30 days.
- Resume Windows Updates.
- Disable driver updates in Windows Update.
- Disable automatic restart after updates when users are logged on.

### 13. Documentation & User Manual
Comprehensive, professional technical documentation with direct underlined action triggers:
- Operational fundamentals and multi-threaded architecture overview.
- Tab-by-tab operating guide covering all 12 modules.
- Microsoft Office 365 Permanent Activation (Ohook method) step-by-step instructions.
- Windows 10 & 11 Permanent Digital License (HWID) activation guide.
- Fixing disappearing Wi-Fi adapters under Windows 11 idle sleep.
- Full clean hardware power off (stops hybrid sleep and uptime clock ticking).
- Internet Download Manager (IDM) lifetime activation instructions.
- Clean inline action triggers to execute scripts or navigate between modules instantly.

---

## Building from Source

To compile Corex and generate the Windows Setup installer:

```cmd
build.bat
```

This compiles `Corex.exe` using `dotnet publish` and packages `Corex_Setup.exe` with Inno Setup.

---

## License
MIT License. Copyright (c) 2026 Rafay Sadiq.
