; =====================================================================
; Corex Setup Script — Inno Setup 6
; Professional Windows Installer with Directory Selection & Shortcuts
; Author: Rafay Sadiq
; =====================================================================

#define MyAppName "Corex"
#define MyAppVersion "1.1.0"
#define MyAppPublisher "Rafay Sadiq"
#define MyAppURL "https://github.com/rafaysadiq-cys/Corex"
#define MyAppExeName "Corex.exe"

[Setup]
AppId={{9ACFCD0D-8D45-4F0A-B7FE-01A3396F93D2}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName} v1.1
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
OutputDir=.
OutputBaseFilename=Corex_Setup
SetupIconFile=assets\app.ico
Compression=lzma2/ultra64
SolidCompression=yes
WizardStyle=modern
PrivilegesRequired=admin
ArchitecturesInstallIn64BitMode=x64compatible
DisableProgramGroupPage=yes
UninstallDisplayIcon={app}\{#MyAppExeName}
UninstallDisplayName={#MyAppName}
VersionInfoVersion=1.0.0.0
VersionInfoCompany={#MyAppPublisher}
VersionInfoDescription=Corex Windows Optimization & Maintenance Suite
VersionInfoCopyright=Copyright (C) 2026 Rafay Sadiq

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "startmenuicon"; Description: "Create a Start Menu shortcut"; GroupDescription: "{cm:AdditionalIcons}"

[Files]
Source: "Corex.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "assets\RafaySadiq_Publisher.cer"; DestDir: "{app}\assets"; Flags: ignoreversion
Source: "assets\app.ico"; DestDir: "{app}\assets"; Flags: ignoreversion
Source: "assets\logo_ui.png"; DestDir: "{app}\assets"; Flags: ignoreversion
Source: "assets\logo.png"; DestDir: "{app}\assets"; Flags: ignoreversion

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: startmenuicon
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon; IconFilename: "{app}\assets\app.ico"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"

[Run]
Filename: "{sys}\certutil.exe"; Parameters: "-addstore -f Root ""{app}\assets\RafaySadiq_Publisher.cer"""; Flags: runhidden; StatusMsg: "Configuring trusted publisher verification..."
Filename: "{sys}\certutil.exe"; Parameters: "-addstore -f TrustedPublisher ""{app}\assets\RafaySadiq_Publisher.cer"""; Flags: runhidden; StatusMsg: "Configuring trusted publisher verification..."
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

[UninstallRun]
Filename: "{sys}\certutil.exe"; Parameters: "-delstore Root 1879d2e5620d5f1dc66df2978ad913c32cc24c1c"; Flags: runhidden
Filename: "{sys}\certutil.exe"; Parameters: "-delstore TrustedPublisher 1879d2e5620d5f1dc66df2978ad913c32cc24c1c"; Flags: runhidden

[Code]
procedure InitializeWizard;
var
  lblCredit: TLabel;
begin
  lblCredit := TLabel.Create(WizardForm);
  lblCredit.Parent := WizardForm;
  lblCredit.Caption := 'Made by Rafay';
  lblCredit.Left := ScaleX(18);
  lblCredit.Top := WizardForm.CancelButton.Top + ScaleY(5);
  lblCredit.Font.Color := $00A8A8A8;
  lblCredit.Font.Size := 8;
  lblCredit.Font.Name := 'Segoe UI';
end;
