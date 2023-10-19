Run, lib\lib.ahk
Gui, Font, S10 CGreen Bold, Comic Sans MS
Gui, Add, Text, x2 y-1 w480 h20 +Center, AHK NoRecoil CS2
Gui, Font, S8 CBlack Bold, Comic Sans MS
Gui, Add, Tab, x2 y19 w480 h390 , Keybinds
Gui, Add, GroupBox, x2 y59 w110 h60 , M4A4
Gui, Add, GroupBox, x362 y59 w110 h60 , Famas
Gui, Add, GroupBox, x182 y59 w110 h60 , M4A1
Gui, Add, GroupBox, x2 y129 w110 h60 , AUG
Gui, Add, GroupBox, x182 y129 w110 h60 , AK
Gui, Add, GroupBox, x362 y129 w110 h60 , Galil
Gui, Add, GroupBox, x2 y199 w110 h60 , SG
Gui, Add, GroupBox, x182 y199 w110 h60 , UMP
Gui, Add, GroupBox, x362 y199 w110 h60 , off
Gui, Add, GroupBox, x2 y269 w110 h60 CRed, zoomsens
Gui, Add, GroupBox, x182 y269 w110 h60 CRed, sens
Gui, Add, GroupBox, x362 y269 w110 h60 , hold zoom
Gui, Add, Hotkey, x12 y79 w90 h30 vM4A4, 
Gui, Add, Hotkey, x12 y149 w90 h30 vAUG, 
Gui, Add, Hotkey, x12 y219 w90 h30 vSG, 
Gui, Add, Hotkey, x192 y79 w90 h30 vM4A1, 
Gui, Add, Hotkey, x192 y149 w90 h30 vAK, 
Gui, Add, Hotkey, x192 y219 w90 h30 vUMP, 
Gui, Add, Hotkey, x372 y79 w90 h30 vFamas, 
Gui, Add, Hotkey, x372 y149 w90 h30 vGalil, 
Gui, Add, Hotkey, x372 y219 w90 h30 voff, 
Gui, Add, Hotkey, x372 y289 w90 h30 vzoom, 
Gui, Font, S7 CBlack Bold, Comic Sans MS
Gui, Font, S10 CBlack, Comic Sans MS
Gui, Add, Text, x42 y359 w390 h20 +Center, You can change recoil weapon keys as you wish
Gui, Add, Text, x42 y339 w390 h20 CRed +Center, Important: Set your game sensitivity
Gui, Add, Picture, x412 y339 w60 h60 , img\cs2.png
Gui, Add, Button, x182 y379 w110 h20 gGenerateConfig, Save
Gui, Add, Edit, x12 y289 w90 h30  vzoomsenss
Gui, Add, Edit, x192 y289 w90 h30  vsenss
Gui, Font, S8 Cblue Bold Underline, Comic Sans MS
Gui, Add, Text, x422 y19 w40 h20 , Daived
IniFile := "config\config.ini"
GuiControl,, senss, % GetIniValue(IniFile, "Settings", "sens")
GuiControl,, zoomsenss, % GetIniValue(IniFile, "Settings", "zoomsens")
GuiControl,, M4A4, % GetIniValue(IniFile, "KeyBinds", "M4A4")
GuiControl,, AUG, % GetIniValue(IniFile, "KeyBinds", "AUG")
GuiControl,, SG, % GetIniValue(IniFile, "KeyBinds", "SG")
GuiControl,, Galil, % GetIniValue(IniFile, "KeyBinds", "Galil")
GuiControl,, M4A1, % GetIniValue(IniFile, "KeyBinds", "M4A1")
GuiControl,, AK, % GetIniValue(IniFile, "KeyBinds", "AK")
GuiControl,, UMP, % GetIniValue(IniFile, "KeyBinds", "UMP")
GuiControl,, zoom, % GetIniValue(IniFile, "KeyBinds", "Zoom")
GuiControl,, Famas, % GetIniValue(IniFile, "KeyBinds", "Famas")
GuiControl,, off, % GetIniValue(IniFile, "KeyBinds", "Off")
Gui, Show, x599 y260 h417 w489, AHK NoRecoil CS2
Return

GenerateConfig:
Gui, Submit, NoHide
IniFile := "config\config.ini"
FileDelete, %IniFile%

FileAppend, [Settings]`nsens=%senss%`nzoomsens=%zoomsenss%`n , %IniFile%
FileAppend, [KeyBinds]`nM4A4=%M4A4%`nAUG=%AUG%`nSG=%SG%`nGalil=%Galil%`nM4A1=%M4A1%`nAK=%AK%`nUMP=%UMP%`nZoom=%zoom%`nFamas=%Famas%`nOff=%off%`n, %IniFile%

MsgBox, Settings have been saved!
Return

GetIniValue(file, section, key) {
    IniRead, value, %file%, %section%, %key%
    return value
}

GuiClose:
ExitApp



