
## Links

- [マウスカーソルの位置を戻すAutoHotkeyスクリプト - AutoHotkeyサンプル集](http://autohotkey.blog.fc2.com/blog-entry-32.html)  
  マウスカーソルを1pxずつ移動するスクリプトを作りたい

## 入力補助

<pre>
; Ctrl+Q アプリ終了
^Q::Send, !{F4}

; Alt+セミコロン 日付入力
!+;::Send, %A_YYYY%%A_MM%%A_DD%
</pre>

## ウィンドウサイズ

- [AutoHotkeyでウィンドウ移動・サイズ変更 @ 7bit](http://nanabit.net/blog/2008/07/16/ahk-window-move/)

<pre>
; Shift + Win + X
+#X::
	WinGet,win_id,ID,A
	WinGetPos,,,w,h,ahk_id %win_id%
	WinMove,ahk_id %win_id%,,,,1024,768
return

; Shift + Win + S
+#S::
	WinGet,win_id,ID,A
	WinGetPos,,,w,h,ahk_id %win_id%
	WinMove,ahk_id %win_id%,,,,1280,1024
return
</pre>
