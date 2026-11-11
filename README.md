# Corex

[![Platform](https://img.shields.io/badge/Platform-Windows%2010%20%7C%2011-0078D6?style=flat-square)](https://github.com/rafaysadiq-cys/Corex)
[![Architecture](https://img.shields.io/badge/Architecture-x64-555555?style=flat-square)](https://github.com/rafaysadiq-cys/Corex)
[![Version](https://img.shields.io/badge/Version-1.1.0-0366d6?style=flat-square)](https://github.com/rafaysadiq-cys/Corex/releases)
[![Runtime](https://img.shields.io/badge/Runtime-100%25%20Self--Contained-2ea44f?style=flat-square)](https://github.com/rafaysadiq-cys/Corex)
[![Installer](https://img.shields.io/badge/Installer-Corex__Setup.exe-0969da?style=flat-square)](https://github.com/rafaysadiq-cys/Corex/releases)
[![License](https://img.shields.io/badge/License-MIT-gray?style=flat-square)](LICENSE)

**Corex** is an enterprise-grade, native C# WPF Windows Optimizer and Maintenance Suite engineered for Windows 10 and Windows 11. Designed from the ground up on an asynchronous multi-threaded architecture (`async / await`), Corex delivers instant responsiveness, zero interface lag, and deep system cleaning without relying on fragile PowerShell scripts or external command wrappers.

Corex is distributed as a **100% self-contained single-file package** that bundles the necessary desktop runtime components directly into the executable. It runs instantly out-of-the-box on freshly installed Windows environments without prompting for manual runtime downloads.

**Author & Lead Developer:** Rafay Sadiq ([@rafaysadiq-cys](https://github.com/rafaysadiq-cys)) | [rafaysadiq.cys@gmail.com](mailto:rafaysadiq.cys@gmail.com)

---

## Downloads & Distribution Packages

| Package | File | Approximate Size | Description |
| :--- | :--- | :--- | :--- |
| **Windows Setup Wizard (Recommended)** | [`Corex_Setup.exe`](Corex_Setup.exe) | ~60.6 MB | Complete Windows installer wizard with custom directory picker, Desktop shortcut option, Start Menu folder, and clean Windows Control Panel / Settings uninstaller integration. |
| **Standalone Portable Executable** | [`Corex.exe`](Corex.exe) | ~64.7 MB | Self-contained single-file portable executable. Bundles the complete runtime. Zero installation or runtime prerequisites required. |

### Setup Wizard Highlights
- **Custom Directory Picker**: Install into any directory (defaults to `C:\Program Files\Corex` with Browse navigation).
- **Shortcut Deployment**: Optional Desktop and Start Menu program group shortcuts.
- **Clean Uninstaller**: Full integration into Windows "Installed Apps" and "Programs and Features" via `unins000.exe`.
- **Immediate Launch**: Option to start Corex automatically upon setup completion.
- **Digital Signatures**: Both binary and setup packages are digitally signed with publisher certificates.

---

## Technical Specifications

| Parameter | Specification |
| :--- | :--- |
| Application Name | Corex |
| Version | 1.1.0 |
| Category | Windows Optimizer & Maintenance Suite |
| Publisher / Author | Rafay Sadiq |
| Digital Signature | Authenticode SHA256 (`CN=Rafay Sadiq`) |
| Setup Package | `Corex_Setup.exe` (~60.6 MB compressed installer) |
| Portable Binary | `Corex.exe` (~64.7 MB self-contained single-file) |
| Runtime Prerequisites | None (100% Self-Contained, zero dependencies) |
| Target Architecture | x86-64 (AMD64) |
| Core Framework | Native C# (.NET 9 / WPF) with Non-Blocking Asynchronous Threading |
| Supported Operating Systems | Windows 10 (Build 1809 and newer), Windows 11 (All Builds) |
| Graphics & Shell Pipeline | Hardware-Accelerated DirectX (Solid `#0d1117` Theme, Zero DWM Lag) |
| Privilege Requirement | Elevated Administrator (Automatic UAC manifest token request) |

---

## Core Capabilities & Modules

### 1. System Information & Hardware Inventory
Comprehensive real-time hardware and operating system telemetry with zero background polling overhead:
- Operating system edition, version, build number, and kernel architecture.
- Computer name, active username, Windows activation status, and live system uptime.
- Processor model, physical core count, and logical thread count.
- Installed RAM capacity and active GPU adapter identification with dedicated VRAM.
- Fixed storage drives monitoring with live storage capacity progress bars and filesystem types.
- System directory paths, boot timestamps, and .NET runtime environment details.
- Structured hardware report export to plaintext file.

### 2. Battery Health, Diagnostics & Power Modes
Comprehensive real-time hardware telemetry and diagnostic audit querying ACPI subsystems and Battery Management System (BMS) gas gauges:
- **Live Electrical Telemetry**: Real-time AC connection status, charge level percentage, operating voltage, and estimated runtime remaining.
- **Factory Hardware Specifications**: Battery Model ID, certified OEM manufacturer validation (Simplo, LG Energy Solution, Panasonic, Samsung SDI, Celxpert, Sunwoda, BYD, etc.), serial number, chemistry, design capacity (mWh), and full charge capacity (mWh).
- **Health & Degradation Analytics**: Accurate battery health retention percentage and capacity loss degradation calculated against factory ratings.
- **Charge Cycle Lifespan**: Real-time hardware cycle counter tracking with lifespan estimation.
- **BMS Tamper & Fraud Diagnostics**: Heuristic audit detecting counterfeit replacement batteries, dummy serial numbers, abnormal capacity tables, and EEPROM cycle reset tools (e.g. NLBA1/EV2300 cycle zeroing with high capacity wear).
- **Power Modes & Performance Schemes**: Direct Windows power scheme selector allowing users to set active power profiles on demand:
  - *Balanced* (Default Windows profile balancing performance with energy efficiency)
  - *High Performance* (Maximum responsiveness and elevated CPU clocks)
  - *Power Saver* (Extends battery runtime and throttles background power draws)
  - *Ultimate Performance* (Eliminates micro-latencies and disables all CPU power-saving idling states)
- **1-Click Official Reports**: Generates the official Windows HTML battery report to the Desktop or exports a plaintext hardware audit log.

### 3. SSD & NVMe S.M.A.R.T. Health Monitor (CrystalDiskInfo Alternative)
Native low-level storage drive telemetry and hardware diagnostic engine querying the Microsoft Storage management namespace and physical disk controllers:
- **Physical Drive Hardware Inspection**: Detects NVMe PCIe high-speed drives, SATA solid-state drives, hard drives, and removable storage media.
- **Hardware Telemetry & Controller Profiles**: Retrieves exact drive model name, hardware serial number, active firmware revision, physical slot location, and partition scheme (GPT/MBR).
- **Drive Health & Operational Status**: Live monitoring of hardware reliability status (Healthy, Warning, Degraded) and operational flags.
- **Advanced Format & Sector Sizing**: Detects physical sector sizing (e.g., 4096 bytes 4K Native / Advanced Format).
- **Plaintext Storage Audit Export**: 1-click export of structured storage hardware diagnostics to a timestamped audit report on the Desktop.

### 4. Recommended Baseline Profile (1-Click Optimization)
Instant 1-click system optimization tailored for clean installations and maintenance routines:
- Restores the classic Windows 11 right-click context menu.
- Displays file extensions (`.txt`, `.exe`, `.zip`) and hidden files in File Explorer.
- Disables integrated Bing web queries inside Start Menu search.
- Disables promotional suggestions, tips, and lock screen advertisements.
- Disables Windows Fast Startup to ensure a full hardware power cut upon shutdown (stops uptime clock ticking).
- Fixes PCIe energy-saving states that cause wireless network adapters to disconnect.
- Disables non-essential diagnostic telemetry.
- Configures High Performance power plans.
- Purges temporary file caches and flushes DNS resolver cache.

### 5. Startup Manager (Boot Speed Optimizer)
Complete startup program inspection and execution control engine designed to eliminate system boot bottlenecks:
- **Comprehensive Startup Scans**: Scans registry startup autoruns across `HKCU\Software\Microsoft\Windows\CurrentVersion\Run`, `HKLM\Software\Microsoft\Windows\CurrentVersion\Run`, 64-bit/32-bit `WOW6432Node` keys, and the Windows user Startup folder.
- **Task Manager Native State Synchronization**: Directly reads and updates Windows `StartupApproved\Run` binary flags (`0x02` for enabled, `0x03` for disabled) to ensure instant synchronization with Windows Task Manager without registry corruption.
- **Search & Live Filtering**: Instant dynamic search across startup item names, executable commands, and scope.
- **Safe Item Removal**: Permanently deletes unwanted startup entries or shortcuts with confirmation.

### 6. UI/UX Interface Tweaks
Fine-grained customization for standard Windows shell components:
- Classic right-click context menu toggle for Windows 11.
- File extensions and hidden files visibility toggles.
- Start Menu web search and recommendation suppressors.
- Taskbar alignment adjustment (Left or Center).
- Background activity suppression for Copilot and Recall telemetry components.
- Direct management of notification thresholds and account banner prompts.

### 7. Debloating & Package Removal
Safely purges non-essential preinstalled UWP packages and provisioned background apps:
- Preinstalled trial games (Candy Crush, Solitaire, Xbox Extras).
- Redundant consumer apps (Feedback Hub, People, Maps, 3D Viewer, Mixed Reality, OneNote, Phone Link, Teams Personal).
- Telemetry-heavy background widgets and Cortana.
- Complete uninstallation routine for Microsoft OneDrive, including process termination, uninstaller execution, and residual folder purging.

### 8. Privacy & Telemetry Hardening
Disables tracking mechanisms and diagnostic logging services at the policy level:
- Enforces `AllowTelemetry = 0` (Security/Enterprise baseline).
- Stops and disables `DiagTrack` (Connected User Experiences and Telemetry) and `dmwappushservice`.
- Disables advertising identifiers, customer activity history, and Timeline tracking.
- Shuts down sensor-based location tracking and remote speech recognition collection.
- Blocks diagnostic feedback frequency prompts and tailored experience profiling.

### 9. System Performance & Power Management
Optimizes system resources and responsiveness:
- Service state configuration: Safely adjusts non-critical background services including Geolocation, Maps Broker, Retail Demo, and Fax.
- Superfetch / SysMain configuration for mechanical drives experiencing sustained disk usage.
- Search indexing service optimization.
- Visual effect adjustments to reduce window transition delays.
- Clean Hardware Power Off button: Executes clean, 100% full hardware power shutdown without hybrid sleep.

### 10. System Personalization & Customization
Configures Windows aesthetic themes and visual settings:
- Dark Mode and Light Mode switching across Windows applications and system shell.
- Transparency and acrylic effects toggles.
- Accent color synchronization and window title bar styling.
- Compact File Explorer view options.

### 11. System Security & Defense Baseline
Low-level registry policy baselines and exploit mitigations:
- **LSA Protection (RunAsPPL)**: Locks LSASS process memory against credential dumping attacks.
- **Disable LLMNR & NetBIOS**: Blocks local network name poisoning and NBT-NS spoofing.
- **Disable Legacy SMBv1**: Hardens against network worm vulnerabilities.
- **Attack Surface Reduction (ASR)**: Blocks obfuscated scripts, Office child processes, and executable email payloads.
- **Remote Desktop Hardening**: Enforces Network Level Authentication (NLA).
- **USB Defense**: 1-click USB Read-Only mode to prevent data theft and complete AutoPlay/AutoRun disablement.

### 12. BitLocker Drive Encryption Manager (Windows Home & Pro)
Hardware-backed encryption management accessible across all Windows editions:
- Live volume encryption status, conversion percentage progress bars, and lock/unlock states.
- 1-click Turn On BitLocker with password protection (featuring a clean eye button toggle for password reveal) and 48-digit Recovery Key backup.
- Decryption safeguards preventing accidental volume lock while encryption conversion is running.
- Suspend / Resume protection and emergency auto-unlock configuration.

### 13. App Installer (Categorized & Sorted)
Silent package installation via the Windows Package Manager (`winget`) engine:
- **Categorized Software Sections**: Organized into Web Browsers, Development, System Utilities, Media & Communication, and Documents & Runtimes.
- **Real-Time Category Sorting & Search**: Filter software by category or search instantly across the catalog.
- **50+ Curated Applications**: Google Chrome, Mozilla Firefox, Brave, Visual Studio Code, Git, Node.js, Python, Windows Terminal, 7-Zip, PowerToys, Everything, Notepad++, Spotify, VLC, Discord, Telegram, and more.

### 14. Deep App Uninstaller (Residue & Registry Scrubber)
An advanced application removal engine that purges stubborn files and registry entries left behind by standard uninstallers:
- **Instant Scan**: Scans 32-bit, 64-bit, and user-space applications across the registry in under 250 milliseconds.
- **Live Search & Filter**: Instant search filtering as you type.
- **Non-Blocking Silent Execution**: Runs native uninstallers asynchronously in the background.
- **Deep File System Residue Purge**: Scans and eliminates orphaned program directories in `Program Files`, `Program Files (x86)`, `ProgramData`, `AppData\Local`, `AppData\Roaming`, and `AppData\LocalLow`.
- **Desktop & Start Menu Shortcut Cleanup**: Removes all orphaned `.lnk` shortcuts pointing to the removed application.
- **Deep Registry Scrubber**: Eradicates lingering keys across `HKCU\Software`, `HKLM\SOFTWARE`, `WOW6432Node`, startup `Run` keys, and orphaned `Uninstall` registry entries.
- **Strict Safety Guards**: Built-in safeguards that protect critical operating system directories and core registry keys.

### 15. Activation Utilities
- Live Windows License Expiration check (`slmgr.vbs /xpr`).
- One-click launch for official Microsoft Activation Scripts (MAS) for Windows & Office.
- One-click launch for official IDM Activation Script (IAS).

### 16. 1-Click Driver Backup & Restore (Technician Tool)
Enterprise-grade OEM hardware driver export and restoration utility designed for system technicians and fresh Windows reinstallations:
- **PnP Driver Enumeration**: Enumerate all installed third-party OEM hardware drivers (`oem*.inf`), displaying provider name, published name, device class, driver version, and release date.
- **1-Click Full Driver Backup**: Executes native `dism.exe /online /export-driver` asynchronously to dump all third-party drivers into an organized, timestamped folder on the Desktop or custom location.
- **Driver Restoration & Injection**: Restores and installs backed-up driver packages into the Windows DriverStore via `pnputil.exe /add-driver *.inf /subdirs /install` with comprehensive error logging.
- **Search & Filter**: Search drivers instantly by class, provider, or hardware INF identifier.

### 17. Windows Optional Features & Virtualization Hub
Centralized control plane for native Windows virtualization platforms, hypervisors, and optional system components:
- **Virtualization & Subsystem Controls**: 1-click enable or disable for Windows Sandbox, Windows Subsystem for Linux (WSL), Virtual Machine Platform, Hyper-V Platform & Management, and Windows Hypervisor Platform.
- **Enterprise & Security Components**: Direct toggle for Microsoft Defender Application Guard and legacy enterprise tools (Telnet Client, TFTP Client, DirectPlay Legacy Gaming).
- **Real-Time DISM Querying**: Reads live state from the Windows Component Store via native DISM table formatting and executes non-blocking background toggles with `/norestart` handling.

### 18. Network Diagnostics & DNS Configuration
- Active network adapter identification with IPv4, Gateway, DNS, and Link Speed.
- TCP/IP Winsock stack reset and DNS resolver cache flush.
- Wi-Fi adapter reset and Bluetooth service restart.
- Print Spooler queue cleaner and service restart.
- Fix for disappearing Wi-Fi adapter (disables PCIe sleep power cuts).
- One-click secure DNS server configuration (Google, Cloudflare, Quad9, OpenDNS, Default/DHCP).

### 19. Windows Update Management
- Pause Windows Updates for 30 days.
- Resume Windows Updates on demand.
- Disable driver updates in Windows Update.
- Disable automatic restart after updates when users are logged on.
- Check update status and configure Active Hours.

### 20. In-App User Guide & Interactive Navigation
Comprehensive user guide with clickable navigation triggers:
- Tab-by-tab walkthrough of all 20 system modules.
- Microsoft Office 365 Permanent Activation (Ohook method) step-by-step guide.
- Windows 10 & 11 Permanent Digital License (HWID) activation guide.
- Fixing disappearing Wi-Fi adapters under Windows 11 idle sleep.
- Internet Download Manager (IDM) lifetime activation instructions.

---

## About Corex & Developer Information

Accessible by clicking the Corex logo in the top titlebar or sidebar header:
- **Author / Lead Dev**: Rafay Sadiq
- **GitHub**: [github.com/rafaysadiq-cys](https://github.com/rafaysadiq-cys)
- **Direct Email**: [rafaysadiq.cys@gmail.com](mailto:rafaysadiq.cys@gmail.com)
- **License**: MIT License

---

## License

Corex is released under the **MIT License**.

Copyright (c) 2026 **Rafay Sadiq**. All rights reserved.
