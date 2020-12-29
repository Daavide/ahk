#SingleInstance

+#d::Run "C:\Users\...\...\...\Folder1" ; Win Shift D
+#c::Run "C:\Users\...\...\...\...\Folder2" ; Win Shift C

+#k::switchToKeepass() ; Win Shift K
+#t::switchToCMD() ; Win Shift T

CapsLock & WheelUp::SoundSet, +2 ; mouse volume up
CapsLock & WheelDown::SoundSet, -2 ; mouse volume down

CapsLock & w::Send {up}
CapsLock & s::Send {down}
CapsLock & d::Send {right}
CapsLock & a::Send {left}

;;;;; functions
switchToKeepass(){
IfWinNotExist, ahk_exe KeePassXC.exe ;; if app is not open, open it
	Run KeePassXC.exe, C:\Users\...\...\KeePassXC-2.6.2-Win64-portable\KeePassXC-2.6.2-Win64
else
	WinActivate ahk_exe KeePassXC.exe ;; if app is open, but not active, activate it on the last active view
}

switchToCMD(){
IfWinNotExist, ahk_exe powershell.exe ;; if app is not open, open it
	Run powershell.exe
else
	WinActivate ahk_exe powershell.exe ;; if app is open, but not active, activate it on the last active view
}

