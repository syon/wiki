---
slug: autohotkey
title: AutoHotKey
layout: page.jade
---

### Links

- 入手
    - [www.autohotkey.com](http://www.autohotkey.com/)
    - [ahkscript.org](http://ahkscript.org/)
    - [uberOptions: Enable all options on all buttons in SetPoint](http://uberoptions.net/) (LogicoolマウスSetPoint拡張)
- まとめ
    - [AutoHotkey by Joe DF | ZEEF](https://autohotkey.zeef.com/joe.df)
    - [AutoHotkeyJp](https://sites.google.com/site/autohotkeyjp/)
    - [流行らせるページ跡地](http://lukewarm.s101.xrea.com/)
    - [AutoHotkeyを流行らせるページ](http://ahk.xrea.jp/)
    - [AutoHotkey Key Notations](http://xahlee.info/mswin/autohotkey_key_notations.html)
- 作例など
    - [hoge](https://sites.google.com/site/agkh6mze/)
    - [ウィンドウを特定する - hoge](https://sites.google.com/site/agkh6mze/howto/detect_window)
    - [今更ながらAutoHotKeyが便利すぎる | UnNatural Language Processing Blog](http://blog.lilyx.net/2008/10/25/autohotkey/)
    - [馬鹿は馬鹿なりのAutoHotKey-その１ - 覚えらんない人のためのオンラインソフト備忘録](http://d.hatena.ne.jp/ka8823ge/20060214)
    - [neue cc - AutoHotKeyによるマウス/キーボード徹底カスタマイズ](http://neue.cc/2008/10/27_110.html)
    - [AutoHotkeyでウィンドウリサイズ他 - ナレッジエース](http://blog.blueblack.net/item_407)
    - [AutoHotKey Scripts @ 7bit](http://nanabit.net/softwares/autohotkey/)
- 参考
    - [keyhac - craftware](https://sites.google.com/site/craftware/keyhac) (Python)


#### WindowsでMacキーボードの「英数」と「かな」を使う

- Google日本語入力側の設定で実現  
  [無変換、変換キーでWindowsのIMEをMac風に操作する | karakaram-blog](http://www.karakaram.com/mac-ime)
- AutoHotKeyで実現  
  [WindowsでMacキーボードの「英数」と「かな」を使う - こくう](http://d.hatena.ne.jp/fuenor/20090610/1244639263)


### ホットキー　修飾シンボル

<table border="1" cellpadding="4" cellspacing="0">
<tr>
<td><strong>+</strong></td>
<td>Shift</td>
</tr>
<tr>
<td><strong>^</strong></td>
<td>Control</td>
</tr>
<tr>
<td><strong>!</strong></td>
<td>Alt</td>
</tr>
<tr>
<td width="30"><strong>#</strong></td>
<td width="604">Windowsロゴキー</td>
</tr>
<tr>
<td><strong>&lt;</strong></td>
<td>左のモディファイアキーを使用(NT系専用)<br>
例: <code>&lt;!a::</code> 左Alt+A
</td>
</tr>
<tr>
<td><strong>&gt;</strong></td>
<td>右のモディファイアキーを使用(NT系専用)<br>
例: <code>&gt;+&lt;^a::</code> 左Ctrl+右Shift+A
</td>
</tr>
<tr>
<td><strong>&lt;^&gt;!</strong></td>
<td>AltGr(一部の国のキーボードレイアウトに存在)</td>
</tr>
<tr>
<td><strong>*</strong></td>
<td>任意の修飾キーを表すワイルドカード(NT系専用)<br>
例1: <code>*a::</code> Ctrl/Alt/Shift/Winの状態にかかわらず、Aキーが押されたら発動<br>
例2: <code>*+a::</code> Ctrl/Alt/Winの状態にかかわらず、Shiftキーが押された状態でAキーが押されたら発動</td>
</tr>
<tr>
<td><strong>~</strong></td>
<td>イベントを乗っ取らず、そのままシステムに通す。(NT系専用)
<pre>~*a::SoundPlay,D:\AutoHotkey\typesound.wav</pre>
Aキーが押されたときにサウンドを鳴らす。<br>(備考)Alt+Tab代替系コマンドが割り当てられた場合、この指定に関係なく入力は乗っ取られる。
</td>
</tr>
<tr>
<td><strong>$</strong></td>
<td>RegisterHotkey()ではなく、強制的にキーボードフックでイベントを取得する。(NT系専用)<br>
サブルーチン内でそのホットキー自身を送信する場合、RegisterHotkey()ではホットキーイベントが再帰的に呼び出されてしまう。<br>#UseHook指令を使えば、$を省略できる。
</td>
</tr>
</table>


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
