scriptDir := A_ScriptDir
ConfigFile := scriptDir "\..\config\config.ini"
mouse:= scriptDir "\..\config\mouse.ini"
IniRead, key_M4A4, %ConfigFile%, KeyBinds, M4A4
IniRead, key_M4A1, %ConfigFile%, KeyBinds, M4A1
IniRead, key_Famas, %ConfigFile%, KeyBinds, Famas
IniRead, key_AUG, %ConfigFile%, KeyBinds, AUG
IniRead, key_AK, %ConfigFile%, KeyBinds, AK
IniRead, key_Galil, %ConfigFile%, KeyBinds, Galil
IniRead, key_SG, %ConfigFile%, KeyBinds, SG
IniRead, key_UMP, %ConfigFile%, KeyBinds, UMP
IniRead, key_off, %ConfigFile%, KeyBinds, off
IniRead, key_exit, %ConfigFile%, KeyBinds, exit
IniRead, key_shoot, %mouse%, KeyBinds, shoot
IniRead, key_zoom, %ConfigFile%, KeyBinds, zoom
IniRead, sens, %ConfigFile%, Settings, sens
IniRead, zoomsens, %ConfigFile%, Settings, zoomsens
IniRead, PauseKey, %mouse%, Controls, PauseKey
smoothness := 0.7
modifier:= 2.52/sens
if (PauseKey = "")
{
    PauseKey := "F12"
}

loop
{
    sleep 1

    if GetKeyState(PauseKey, "P")
    {
        Paused := !Paused
        Sleep 200
    }

    if (!Paused)
    {

if GetKeyState(key_AK)
{
ak:=true
m4a1:=false
m4a4:=false
famas:=false
galil:=false
ump:=false
aug:=false
sg:=false
}

if GetKeyState(key_M4A1)
{
m4a1:=true
ak:=false
m4a4:=false
famas:=false
galil:=false
ump:=false
aug:=false
sg:=false
}

if GetKeyState(key_M4A4)
{
m4a4:=true
ak:=false
m4a1:=false
famas:=false
galil:=false
ump:=false
aug:=false
sg:=false
}

if GetKeyState(key_Famas)
{
famas:=true
ak:=false
m4a1:=false
m4a4:=false
galil:=false
ump:=false
aug:=false
sg:=false
}

if GetKeyState(key_Galil)
{
galil:=true
ak:=false
m4a1:=false
m4a4:=false
famas:=false
ump:=false
aug:=false
sg:=false
}

if GetKeyState(key_exit)
{
sleep 2000
ExitApp
}

if GetKeyState(key_off)
{
ak:=false
m4a1:=false
m4a4:=false
famas:=false
galil:=false
ump:=false
aug:=false
sg:=false
}

if GetKeyState(key_UMP)
{
ump:=true
ak:=false
m4a1:=false
m4a4:=false
famas:=false
galil:=false
aug:=false
sg:=false
}

if GetKeyState(key_SG)
{
sg:=true
ump:=false
ak:=false
m4a1:=false
m4a4:=false
famas:=false
galil:=false
aug:=false
}

if GetKeyState(key_AUG)
{
aug:=true
ump:=false
ak:=false
m4a1:=false
m4a4:=false
famas:=false
galil:=false
sg:=false
}


if GetKeyState(key_shoot)
{

;--------------------------------AK-47--------------------------------

if ak {
            loop {
                DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
                Sleep 50
                if !GetKeyState(key_shoot) {
                    DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                    break
                }
                
                SmoothMouseMove(-4 * modifier, 7 * modifier, smoothness)
                Sleep 99
                if !GetKeyState(key_shoot) {
                    DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                    break
                }
                SmoothMouseMove(4 * modifier, 19 * modifier, smoothness)
                Sleep 99
                if !GetKeyState(key_shoot) {
                    DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                    break
                }
                SmoothMouseMove(-3 * modifier, 29 * modifier, smoothness)
                Sleep 99
                if !GetKeyState(key_shoot) {
                    DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                    break
                }
                SmoothMouseMove(-1 * modifier, 31 * modifier, smoothness)
                Sleep 99
                if !GetKeyState(key_shoot) {
                    DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                    break
                }
                SmoothMouseMove(13 * modifier, 31 * modifier, smoothness)
                Sleep 99
                if !GetKeyState(key_shoot) {
                    DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                    break
                }
                SmoothMouseMove(8 * modifier, 28 * modifier, smoothness)
                Sleep 99
                if !GetKeyState(key_shoot) {
                    DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                    break
                }
                SmoothMouseMove(13 * modifier, 21 * modifier, smoothness)
                Sleep 99
                if !GetKeyState(key_shoot) {
                    DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                    break
                }
                SmoothMouseMove(-17 * modifier, 12 * modifier, smoothness)
                Sleep 99
                if !GetKeyState(key_shoot) {
                    DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                    break
                }
                SmoothMouseMove(-42 * modifier, -3 * modifier, smoothness)
                Sleep 99
                if !GetKeyState(key_shoot) {
                    DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                    break
                }
                SmoothMouseMove(-21 * modifier, 2 * modifier, smoothness)
                Sleep 99
                if !GetKeyState(key_shoot) {
                    DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                    break
                }
                SmoothMouseMove(12 * modifier, 11 * modifier, smoothness)
                Sleep 99
                if !GetKeyState(key_shoot) {
                    DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                    break
                }
                SmoothMouseMove(-15 * modifier, 7 * modifier, smoothness)
                Sleep 99
                if !GetKeyState(key_shoot) {
                    DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                    break
                }
                SmoothMouseMove(-26 * modifier, -8 * modifier, smoothness)
                Sleep 99
                if !GetKeyState(key_shoot) {
                    DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                    break
                }
                SmoothMouseMove(-3 * modifier, 4 * modifier, smoothness)
                Sleep 99
                if !GetKeyState(key_shoot) {
                    DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                    break
                }
                SmoothMouseMove(40 * modifier, 1 * modifier, smoothness)
                Sleep 99
                if !GetKeyState(key_shoot) {
                    DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                    break
                }
                SmoothMouseMove(19 * modifier, 7 * modifier, smoothness)
                Sleep 99
                if !GetKeyState(key_shoot) {
                    DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                    break
                }
                SmoothMouseMove(14 * modifier, 10 * modifier, smoothness)
                Sleep 99
                if !GetKeyState(key_shoot) {
                    DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                    break
                }
                SmoothMouseMove(27 * modifier, 0 * modifier, smoothness)
                Sleep 99
                if !GetKeyState(key_shoot) {
                    DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                    break
                }
                SmoothMouseMove(33 * modifier, -10 * modifier, smoothness)
                Sleep 99
                if !GetKeyState(key_shoot) {
                    DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                    break
                }
                SmoothMouseMove(-21 * modifier, -2 * modifier, smoothness)
                Sleep 99
                if !GetKeyState(key_shoot) {
                    DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                    break
                }
                SmoothMouseMove(7 * modifier, 3 * modifier, smoothness)
                Sleep 99
                if !GetKeyState(key_shoot) {
                    DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                    break
                }
                SmoothMouseMove(-7 * modifier, 9 * modifier, smoothness)
                Sleep 99
                if !GetKeyState(key_shoot) {
                    DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                    break
                }
                SmoothMouseMove(-8 * modifier, 4 * modifier, smoothness)
                Sleep 99
                if !GetKeyState(key_shoot) {
                    DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                    break
                }
                SmoothMouseMove(19 * modifier, -3 * modifier, smoothness)
                Sleep 99
                if !GetKeyState(key_shoot) {
                    DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                    break
                }
                SmoothMouseMove(5 * modifier, 6 * modifier, smoothness)
                Sleep 99
                if !GetKeyState(key_shoot) {
                    DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                    break
                }
                SmoothMouseMove(-20 * modifier, -1 * modifier, smoothness)
                Sleep 99
                if !GetKeyState(key_shoot) {
                    DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                    break
                }
                SmoothMouseMove(-33 * modifier, -4 * modifier, smoothness)
                Sleep 99
                if !GetKeyState(key_shoot) {
                    DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                    break
                }
                SmoothMouseMove(-45 * modifier, -21 * modifier, smoothness)
                Sleep 99
                if !GetKeyState(key_shoot) {
                    DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                    break
                }
                SmoothMouseMove(-14 * modifier, 1 * modifier, smoothness)
                if !GetKeyState(key_shoot) {
                    DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                    break
                }
                Sleep 80
                DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                Sleep 1000
                if !GetKeyState(key_shoot) {
                    DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                    break
                }
            }
        }
;--------------------------------M4A1-S--------------------------------

else if m4a1 {
    loop {
        DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
        sleep 15
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        
        SmoothMouseMove(1 * modifier, 6 * modifier, smoothness)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(0 * modifier, 4 * modifier, smoothness)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-4 * modifier, 14 * modifier, smoothness)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(4 * modifier, 18 * modifier, smoothness)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-6 * modifier, 21 * modifier, smoothness)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-4 * modifier, 24 * modifier, smoothness)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(14 * modifier, 14 * modifier, smoothness)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(8 * modifier, 12 * modifier, smoothness)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(18 * modifier, 5 * modifier, smoothness)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-4 * modifier, 10 * modifier, smoothness)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-14 * modifier, 5 * modifier, smoothness)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-25 * modifier, -3 * modifier, smoothness)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-19 * modifier, 0 * modifier, smoothness)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-22 * modifier, -3 * modifier, smoothness)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(1 * modifier, 3 * modifier, smoothness)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(8 * modifier, 3 * modifier, smoothness)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-9 * modifier, 1 * modifier, smoothness)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-13 * modifier, -2 * modifier, smoothness)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(3 * modifier, 2 * modifier, smoothness)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(1 * modifier, 1 * modifier, smoothness)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
        sleep 1000
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
    }
}

;--------------------------------M4A4--------------------------------

else if m4a4 {
    loop {
        DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
        sleep 15
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        
        SmoothMouseMove(2 * modifier, 7 * modifier, smoothness)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(0 * modifier, 9 * modifier, smoothness)
        sleep 87
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-6 * modifier, 16 * modifier, smoothness)
        sleep 87
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(7 * modifier, 21 * modifier, smoothness)
        sleep 87
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-9 * modifier, 23 * modifier, smoothness)
        sleep 87
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-5 * modifier, 27 * modifier, smoothness)
        sleep 87
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(16 * modifier, 15 * modifier, smoothness)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(11 * modifier, 13 * modifier, smoothness)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(22 * modifier, 5 * modifier, smoothness)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-4 * modifier, 11 * modifier, smoothness)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-18 * modifier, 6 * modifier, smoothness)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-30 * modifier, -4 * modifier, smoothness)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-24 * modifier, 0 * modifier, smoothness)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-25 * modifier, -6 * modifier, smoothness)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(0 * modifier, 4 * modifier, smoothness)
        sleep 87
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(8 * modifier, 4 * modifier, smoothness)
        sleep 87
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-11 * modifier, 1 * modifier, smoothness)
        sleep 87
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-13 * modifier, -2 * modifier, smoothness)
        sleep 87
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(2 * modifier, 2 * modifier, smoothness)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(33 * modifier, -1 * modifier, smoothness)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(10 * modifier, 6 * modifier, smoothness)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(27 * modifier, 3 * modifier, smoothness)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(10 * modifier, 2 * modifier, smoothness)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(11 * modifier, 0 * modifier, smoothness)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-12 * modifier, 0 * modifier, smoothness)
        sleep 87
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(6 * modifier, 5 * modifier, smoothness)
        sleep 87
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(4 * modifier, 5 * modifier, smoothness)
        sleep 87
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(3 * modifier, 1 * modifier, smoothness)
        sleep 87
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(4 * modifier, -1 * modifier, smoothness)
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
        sleep 1000
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
    }
}

;--------------------------------Famas--------------------------------

else if famas {
    loop {
        DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
        sleep 30
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        
        SmoothMouseMove(-4 * modifier, 5 * modifier, smoothness)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(1 * modifier, 4 * modifier, smoothness)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-6 * modifier, 10 * modifier, smoothness)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-1 * modifier, 17 * modifier, smoothness)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(0 * modifier, 20 * modifier, smoothness)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(14 * modifier, 18 * modifier, smoothness)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(16 * modifier, 12 * modifier, smoothness)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-6 * modifier, 12 * modifier, smoothness)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-20 * modifier, 8 * modifier, smoothness)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-16 * modifier, 5 * modifier, smoothness)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-13 * modifier, 2 * modifier, smoothness)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(4 * modifier, 5 * modifier, smoothness)
        sleep 87
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(23 * modifier, 4 * modifier, smoothness)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(12 * modifier, 6 * modifier, smoothness)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(20 * modifier, -3 * modifier, smoothness)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(5 * modifier, 0 * modifier, smoothness)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(15 * modifier, 0 * modifier, smoothness)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(3 * modifier, 5 * modifier, smoothness)
        sleep 80
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-4 * modifier, 3 * modifier, smoothness)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-25 * modifier, -1 * modifier, smoothness)
        sleep 80
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-3 * modifier, 2 * modifier, smoothness)
        sleep 84
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(11 * modifier, 0 * modifier, smoothness)
        sleep 80
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(15 * modifier, -7 * modifier, smoothness)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(15 * modifier, -10 * modifier, smoothness)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
        sleep 1000
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
    }
}

;--------------------------------Galil--------------------------------

else if galil {
    loop {
        DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
        sleep 10
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        
        SmoothMouseMove(4 * modifier, 4 * modifier, smoothness)
        sleep 90
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-2 * modifier, 5 * modifier, smoothness)
        sleep 90
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(6 * modifier, 10 * modifier, smoothness)
        sleep 90
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(12 * modifier, 15 * modifier, smoothness)
        sleep 90
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-1 * modifier, 21 * modifier, smoothness)
        sleep 90
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(2 * modifier, 24 * modifier, smoothness)
        sleep 90
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(6 * modifier, 16 * modifier, smoothness)
        sleep 90
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(11 * modifier, 10 * modifier, smoothness)
        sleep 90
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-4 * modifier, 14 * modifier, smoothness)
        sleep 90
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-22 * modifier, 8 * modifier, smoothness)
        sleep 90
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-30 * modifier, -3 * modifier, smoothness)
        sleep 90
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-29 * modifier, -13 * modifier, smoothness)
        sleep 90
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-9 * modifier, 8 * modifier, smoothness)
        sleep 90
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-12 * modifier, 2 * modifier, smoothness)
        sleep 90
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-7 * modifier, 1 * modifier, smoothness)
        sleep 90
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(0 * modifier, 1 * modifier, smoothness)
        sleep 50
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(4 * modifier, 7 * modifier, smoothness)
        sleep 90
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(25 * modifier, 7 * modifier, smoothness)
        sleep 90
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(14 * modifier, 4 * modifier, smoothness)
        sleep 90
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(25 * modifier, -3 * modifier, smoothness)
        sleep 90
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(31 * modifier, -9 * modifier, smoothness)
        sleep 90
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(6 * modifier, 3 * modifier, smoothness)
        sleep 90
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-12 * modifier, 3 * modifier, smoothness)
        sleep 90
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(13 * modifier, -1 * modifier, smoothness)
        sleep 90
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(10 * modifier, -1 * modifier, smoothness)
        sleep 90
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(16 * modifier, -4 * modifier, smoothness)
        sleep 90
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-9 * modifier, 5 * modifier, smoothness)
        sleep 90
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-32 * modifier, -5 * modifier, smoothness)
        sleep 90
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-24 * modifier, -3 * modifier, smoothness)
        sleep 90
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-15 * modifier, 5 * modifier, smoothness)
        sleep 90
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(6 * modifier, 8 * modifier, smoothness)
        sleep 90
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-14 * modifier, -3 * modifier, smoothness)
        sleep 90
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-24 * modifier, -14 * modifier, smoothness)
        sleep 90
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-13 * modifier, -1 * modifier, smoothness)
        sleep 90
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
        sleep 1000
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
    }
}


;--------------------------------UMP-45--------------------------------

else if ump {
    loop {
        DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
        sleep 15
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        
        SmoothMouseMove(-1 * modifier, 6 * modifier, smoothness)
        sleep 90
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-4 * modifier, 8 * modifier, smoothness)
        sleep 90
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-2 * modifier, 18 * modifier, smoothness)
        sleep 90
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-4 * modifier, 23 * modifier, smoothness)
        sleep 90
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-9 * modifier, 23 * modifier, smoothness)
        sleep 90
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-3 * modifier, 26 * modifier, smoothness)
        sleep 90
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(11 * modifier, 17 * modifier, smoothness)
        sleep 90
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-4 * modifier, 12 * modifier, smoothness)
        sleep 90
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(9 * modifier, 13 * modifier, smoothness)
        sleep 90
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(18 * modifier, 8 * modifier, smoothness)
        sleep 90
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(15 * modifier, 5 * modifier, smoothness)
        sleep 90
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-1 * modifier, 3 * modifier, smoothness)
        sleep 90
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(5 * modifier, 6 * modifier, smoothness)
        sleep 90
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(0 * modifier, 6 * modifier, smoothness)
        sleep 90
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(9 * modifier, -3 * modifier, smoothness)
        sleep 90
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(5 * modifier, -1 * modifier, smoothness)
        sleep 90
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-12 * modifier, 4 * modifier, smoothness)
        sleep 90
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-19 * modifier, 1 * modifier, smoothness)
        sleep 85
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-1 * modifier, -2 * modifier, smoothness)
        sleep 90
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(15 * modifier, -5 * modifier, smoothness)
        sleep 90
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(17 * modifier, -2 * modifier, smoothness)
        sleep 85
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-6 * modifier, 3 * modifier, smoothness)
        sleep 90
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-20 * modifier, -2 * modifier, smoothness)
        sleep 90
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-3 * modifier, -1 * modifier, smoothness)
        sleep 90
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
        sleep 1000
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
    }
}


;--------------------------------AUG--------------------------------

else if aug {
    if GetKeyState(key_zoom) {
        zom := 1.2 / zoomsens
    } else {
        zom := 1
    }
    loop {
        DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
        sleep 30
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(5 * modifier * zom, 6 * modifier * zom, smoothness)
        sleep 89
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(0 * modifier * zom, 13 * modifier * zom, smoothness)
        sleep 89
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-5 * modifier * zom, 22 * modifier * zom, smoothness)
        sleep 89
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-7 * modifier * zom, 26 * modifier * zom, smoothness)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(5 * modifier * zom, 29 * modifier * zom, smoothness)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(9 * modifier * zom, 30 * modifier * zom, smoothness)
        sleep 80
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(14 * modifier * zom, 21 * modifier * zom, smoothness)
        sleep 80
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(6 * modifier * zom, 15 * modifier * zom, smoothness)
        sleep 89
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(14 * modifier * zom, 13 * modifier * zom, smoothness)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-16 * modifier * zom, 11 * modifier * zom, smoothness)
        sleep 89
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-5 * modifier * zom, 6 * modifier * zom, smoothness)
        sleep 89
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(13 * modifier * zom, 0 * modifier * zom, smoothness)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(1 * modifier * zom, 6 * modifier * zom, smoothness)
        sleep 89
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-22 * modifier * zom, 5 * modifier * zom, smoothness)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-38 * modifier * zom, -11 * modifier * zom, smoothness)
        sleep 89
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-31 * modifier * zom, -13 * modifier * zom, smoothness)
        sleep 89
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-3 * modifier * zom, 6 * modifier * zom, smoothness)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-5 * modifier * zom, 5 * modifier * zom, smoothness)
        sleep 89
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-9 * modifier * zom, 0 * modifier * zom, smoothness)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(24 * modifier * zom, 1 * modifier * zom, smoothness)
        sleep 89
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(32 * modifier * zom, 3 * modifier * zom, smoothness)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(15 * modifier * zom, 6 * modifier * zom, smoothness)
        sleep 89
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        SmoothMouseMove(-5 * modifier * zom, 1 * modifier * zom, smoothness)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
        sleep 1000
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
    }
}


;--------------------------------SG 553--------------------------------

else if sg {
    if GetKeyState(key_zoom) {
        zom := 1.2 / zoomsens
    } else {
        zom := 1
    }
    loop {
        DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
        sleep 30
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        DllCall("mouse_event", "UInt", 0x01, "UInt", -4 * modifier * zom, "UInt", 9 * modifier * zom)
        sleep 89
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        DllCall("mouse_event", "UInt", 0x01, "UInt", -13 * modifier * zom, "UInt", 15 * modifier * zom)
        sleep 89
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        DllCall("mouse_event", "UInt", 0x01, "UInt", -9 * modifier * zom, "UInt", 25 * modifier * zom)
        sleep 89
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        DllCall("mouse_event", "UInt", 0x01, "UInt", -6 * modifier * zom, "UInt", 29 * modifier * zom)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        DllCall("mouse_event", "UInt", 0x01, "UInt", -8 * modifier * zom, "UInt", 31 * modifier * zom)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        DllCall("mouse_event", "UInt", 0x01, "UInt", -7 * modifier * zom, "UInt", 36 * modifier * zom)
        sleep 80
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        DllCall("mouse_event", "UInt", 0x01, "UInt", -20 * modifier * zom, "UInt", 14 * modifier * zom)
        sleep 80
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        DllCall("mouse_event", "UInt", 0x01, "UInt", 14 * modifier * zom, "UInt", 17 * modifier * zom)
        sleep 89
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        DllCall("mouse_event", "UInt", 0x01, "UInt", -8 * modifier * zom, "UInt", 12 * modifier * zom)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        DllCall("mouse_event", "UInt", 0x01, "UInt", -15 * modifier * zom, "UInt", 8 * modifier * zom)
        sleep 89
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        DllCall("mouse_event", "UInt", 0x01, "UInt", -5 * modifier * zom, "UInt", 5 * modifier * zom)
        sleep 89
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        DllCall("mouse_event", "UInt", 0x01, "UInt", 6 * modifier * zom, "UInt", 5 * modifier * zom)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        DllCall("mouse_event", "UInt", 0x01, "UInt", -8 * modifier * zom, "UInt", 6 * modifier * zom)
        sleep 89
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        DllCall("mouse_event", "UInt", 0x01, "UInt", 2 * modifier * zom, "UInt", 11 * modifier * zom)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        DllCall("mouse_event", "UInt", 0x01, "UInt", -14 * modifier * zom, "UInt", -6 * modifier * zom)
        sleep 89
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        DllCall("mouse_event", "UInt", 0x01, "UInt", -20 * modifier * zom, "UInt", -17 * modifier * zom)
        sleep 89
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        DllCall("mouse_event", "UInt", 0x01, "UInt", -18 * modifier * zom, "UInt", -9 * modifier * zom)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        DllCall("mouse_event", "UInt", 0x01, "UInt", -8 * modifier * zom, "UInt", -2 * modifier * zom)
        sleep 89
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        DllCall("mouse_event", "UInt", 0x01, "UInt", 41 * modifier * zom, "UInt", 3 * modifier * zom)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        DllCall("mouse_event", "UInt", 0x01, "UInt", 56 * modifier * zom, "UInt", -5 * modifier * zom)
        sleep 89
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        DllCall("mouse_event", "UInt", 0x01, "UInt", 43 * modifier * zom, "UInt", -1 * modifier * zom)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        DllCall("mouse_event", "UInt", 0x01, "UInt", 18 * modifier * zom, "UInt", 9 * modifier * zom)
        sleep 89
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        DllCall("mouse_event", "UInt", 0x01, "UInt", 14 * modifier * zom, "UInt", 9 * modifier * zom)
        sleep 88
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        DllCall("mouse_event", "UInt", 0x01, "UInt", 6 * modifier * zom, "UInt", 7 * modifier * zom)
        sleep 89
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        DllCall("mouse_event", "UInt", 0x01, "UInt", 21 * modifier * zom, "UInt", -3 * modifier * zom)
        sleep 95
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        DllCall("mouse_event", "UInt", 0x01, "UInt", 29 * modifier * zom, "UInt", -4 * modifier * zom)
        sleep 89
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        DllCall("mouse_event", "UInt", 0x01, "UInt", -6 * modifier * zom, "UInt", 8 * modifier * zom)
        sleep 89
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        DllCall("mouse_event", "UInt", 0x01, "UInt", -15 * modifier * zom, "UInt", 5 * modifier * zom)
        sleep 89
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        DllCall("mouse_event", "UInt", 0x01, "UInt", -38 * modifier * zom, "UInt", -5 * modifier * zom)
        sleep 89
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
        DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
        sleep 1000
        if !GetKeyState(key_shoot) {
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            break
        }
    }
}
}
}
}
SmoothMouseMove(x, y, smoothness) {
    steps := 2.6  
    stepSizeX := x / steps
    stepSizeY := y / steps
    sleepTime := 1

    Loop, % steps {
        x := x - stepSizeX
        y := y - stepSizeY
        DllCall("mouse_event", "UInt", 0x01, "UInt", x, "UInt", y)
        Sleep, sleepTime * smoothness
    }
}

;--------------------------------end--------------------------------

;--------------------------------Bhop--------------------------------
;has been removed to improve it
;--------------------------------end--------------------------------
