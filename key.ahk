#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;;;shift+Win+hjklを定義
;!7::left    ;Win+Hに←キーを割り当て
;!8::down    ;Win+Jに↓キーを割り当て
;!9::up      ;Win+Kに↑キーを割り当て
;!0::right   ;Win+Lに→キーを割り当て

;;;無変換をEsc
vk1Dsc07B::
send,{Escape}
return

;;;変換を半角全角
vk1Csc079::
send,{vkF3sc029}
return

;;;英数（CapsLock）をCtrl
vkF0sc03A::Ctrl
return

;;;ひらがな/カタカナで記号挿入
vkF2sc070::
    Input,InputChar,L2 T2 C,{Esc},ss,wt,wd,bs,tt,br,dd,cc,wc,rr,ll
    If ErrorLevel = Match
    {
        If InputChar = ss
            Send,□
        If InputChar = wt
            Send,▽
        If InputChar = wd
            Send,◇
        If InputChar = wc
            Send,○
        If InputChar = bs
            Send,■
        If InputChar = tt
            Send,▼
        If InputChar = dd
            Send,◆
        If InputChar = cc 
            Send,●
        If InputChar = rr
            Send,→
        If InputChar = ll
            Send,←
    }
    Return
