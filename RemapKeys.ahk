#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


#Persistent
SetCapsLockState, AlwaysOff


LAlt::LCtrl 
LCtrl::LAlt


; Capslock + jkli (left, down, up, right)

Capslock & j::Send {Blind}{Left DownTemp}
Capslock & j up::Send {Blind}{Left Up}

Capslock & k::Send {Blind}{Down DownTemp}
Capslock & k up::Send {Blind}{Down Up}

Capslock & i::Send {Blind}{Up DownTemp}
Capslock & i up::Send {Blind}{Up Up}

Capslock & l::Send {Blind}{Right DownTemp}
Capslock & l up::Send {Blind}{Right Up}


; Capslock + uohy (pgdown, pgup, home, end)

Capslock & [::SendInput {Blind}{Home Down}
Capslock & [ up::SendInput {Blind}{Home Up}

Capslock & '::SendInput {Blind}{End Down}
Capslock & ' up::SendInput {Blind}{End Up}

Capslock & p::SendInput {Blind}{PgUp Down}
Capslock & p up::SendInput {Blind}{PgUp Up}

Capslock & `;::SendInput {Blind}{PgDn Down}
Capslock & `; up::SendInput {Blind}{PgDn Up}




; Make Win Key + Capslock work like Capslock (in case it's ever needed)
#\::
If GetKeyState("CapsLock", "T") = 1
    SetCapsLockState, AlwaysOff
Else 
    SetCapsLockState, AlwaysOn
Return





