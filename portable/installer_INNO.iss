; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

;WinPython Inno Setup Installer script
;Copyright © 2018 WinPython team
;Licensed under the terms of the MIT License
;(see winpython/__init__.py for details)

;================================================================
; These lines are automatically replaced when creating installer:
; (see winpython/make.py)
#define DISTDIR "C:\WinP\bd36\buPs2\winp64-3.6.x.0"
#define ARCH "64"
#define VERSION "3.6.7.0Ps2"
; 2018-04-04 need to minimize path length of installation further: remove flavor in install path
#define VERSION_INSTALL "3670"
#define RELEASELEVEL "beta3" ; empty means final release
;================================================================

#define ID "Winpython"
; 2018-04-20 need to minimize path length of installation:
;#define ID_INSTALL "WinPython"
#define ID_INSTALL "WPy"
#define FILE_DESCRIPTION "{#ID} Installer"
#define COMPANY "{#ID}"
#define BRANDING "{#ID}, the portable Python Distribution for Scientists"
#define COPYRIGHT "Copyright � 2018+ WinPython Team"
#define PORTABLE_DIR "C:\WinPython-64bit-3.4.3.7Qt5\winpython_github20181029\portable"
#define MyAppPublisher "WinPython team"
#define MyAppURL "https://winpython.github.io/"

;OutFile "${DISTDIR}\..\${ID}${ARCH}-${VERSION}${RELEASELEVEL}.exe"
#define MyBinaryOutputDir "C:\WinP\bd37\buZero"
; nota:  OutputBaseFilename "{#ID}{#ARCH}-{#VERSION}{#RELEASELEVEL}"
#define MyInstallerDir "WPy-3710b3"

[Setup]
;don't write in registery
CreateUninstallRegKey=no
;give choice  of install  (same logic)
UsePreviousAppDir=no

; if ever wanted FLIPFLAP    (see Task section also)
;Uninstallable=not IsTaskSelected('portablemode')

; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{0012652B-17E7-4C1F-815B-0DE013D47DA0}
AppName={#ID}{#VERSION}
AppVersion={#VERSION} {#COPYRIGHT}
AppVerName={#VERSION_INSTALL}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}

;non portable mode if ever wanted FLIPFLAP
;DefaultDirName={pf}\{#ID_INSTALL}-{#VERSION_INSTALL}{#RELEASELEVEL}
;non portable mode
;
;2018-12-10: making 64 art of the install path (7zip similarity)
;DefaultDirName={src}\{#ID_INSTALL}-{#VERSION_INSTALL}{#RELEASELEVEL}
DefaultDirName={src}\{#ID_INSTALL}{#ARCH}-{#VERSION_INSTALL}{#RELEASELEVEL}

DefaultGroupName={#ID}
DisableProgramGroupPage=yes
LicenseFile={#PORTABLE_DIR}\license.txt
;InfoBeforeFile={#PORTABLE_DIR}\licence_info.txt
;OutputDir={#MyBinaryOutputDir}
OutputDir={#DISTDIR}\..
OutputBaseFilename={#ID}{#ARCH}-{#VERSION}{#RELEASELEVEL}
SetupIconFile={#PORTABLE_DIR}\icons\install.ico

; When set to none, Setup will only run with administrative privileges if it 
; was started by a member of the Administrators group.
; On pre vista: will *not* run with administrative privileges
PrivilegesRequired = none 

; If True, Setup will refresh env/associations in explorer after install
ChangesEnvironment = no
ChangesAssociations = no

; decrepited WizardImageBackColor=$d28b26
WizardImageStretch=no
WizardImageFile={#PORTABLE_DIR}\images\installer_logo.bmp
WizardSmallImageFile={#PORTABLE_DIR}\images\installer_logo.bmp

AllowNoIcons = yes

Compression = lzma2
SolidCompression = yes
;LZMAUseSeparateProcess = yes
;LZMANumBlockThreads = 2

; 2048 = normal; 8192=max ; 4096=ideal
LZMADictionarySize = 4096 

;LZMANumFastBytes = 273

[Tasks]
; if ever wanted FLIPFLAP
;Name: portablemode; Description: "Portable Mode"


[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: {#DISTDIR}\*; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

