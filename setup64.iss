; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "OvGME"
#define MyAppVersion "1.5.9"
#define MyAppPublisher "Ovoid"
#define MyAppURL "https://github.com/sedenion/ovgme"
#define MyAppExeName "OvGME.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{B1539DF0-0BB5-48A8-BF6F-1099D861B4F8}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DisableProgramGroupPage=yes
LicenseFile=D:\dev\proj\cpp\OvGME1_5\gpl-3.0.txt
OutputDir=D:\dev\proj\cpp\OvGME1_5\redist
OutputBaseFilename=ovgme_1_5_9_setup_64
SetupIconFile=D:\dev\proj\cpp\OvGME1_5\res\icon.ico
Compression=lzma
SolidCompression=yes
ArchitecturesInstallIn64BitMode=x64

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "D:\dev\proj\cpp\OvGME1_5\bin\64\rel\OvGME.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\dev\proj\cpp\OvGME1_5\ovgme.chm"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\dev\proj\cpp\OvGME1_5\README.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\dev\proj\cpp\OvGME1_5\CHANGELOG.txt"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{commonprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

[UninstallRun]
Filename: "{app}\{#MyAppExeName}"; Parameters: "/uninstall"
