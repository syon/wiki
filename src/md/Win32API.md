---
slug: Win32API
title: Win32API
layout: page.jade
---

## リファレンス

### [Windows API List - MSDN](http://msdn.microsoft.com/en-us/library/ff818516(v=vs.85).aspx)

詳細な Windows API 一覧 (英語)
- '''[Windows API リスト: Windows API、Win32 API、Win32API | MSDN](http://msdn.microsoft.com/ja-jp/windows/hh240557)'''
- このページではよく使われる一部の Windows API をリストし、日本語ドキュメントと英語ドキュメントへのリンクを案内しています。

### [pinvoke.net: the interop wiki!](http://www.pinvoke.net/index.aspx)

DLLの一覧と説明

### [標準 Windows API](http://wisdom.sakura.ne.jp/system/winapi/win32/index.html)

C言語での解説

## RubyでWin32APIを使う

### [【公式】Ruby 2.0.0 リファレンスマニュアル - class Win32API](http://docs.ruby-lang.org/ja/2.0.0/class/Win32API.html)

使用例、引数の説明。

```ruby
api = Win32API.new(dllname, func, import, export)
api.call(args)
```

#### [DLとWin32APIとFiddle - mirichiの日記](http://d.hatena.ne.jp/mirichi/20130629/p1)

Ruby1.8時代、Ruby1.9時代、Ruby2.0時代

#### [Ruby 1.9.0 problem with DL.dlopen - Ruby Forum](https://www.ruby-forum.com/topic/138277)

1.9's dl is not compatible with 1.8's. The following code may help you:

```ruby
require 'dl'
user32 = DL.dlopen('user32')
msgbox = DL::CFunc.new(user32['MessageBoxA'], DL::TYPE_LONG, 'MessageBox')
msgbox.call(["Hello", "Message Box", 0](0,).pack('L!ppL!').unpack('L!*'))
```

#### [instance method Array#pack](http://docs.ruby-lang.org/ja/2.1.0/method/Array/i/pack.html)

Array#pack、String#unpack のテンプレート文字の一覧です。テンプレート文字は後に「長さ」を表す数字 を続けることができます。「長さ」の代わりに`*'とすることで「残り全て」 を表すこともできます。

#### [class DL::CFunc](http://docs.ruby-lang.org/ja/1.9.3/class/DL=3a=3aCFunc.html)

```ruby
DL::CFunc.new(addr, type = DL::TYPE_VOID, name = '', calltype = :cdecl)
```

### [Ruby 1.9.3 リファレンスマニュアル dl/importライブラリ](http://docs.ruby-lang.org/ja/1.9.3/library/dl=2fimport.html)

#### [library dl/import](http://docs.ruby-lang.org/ja/1.9.3/library/dl=2fimport.html)

使い方とコード簡略化の過程

```ruby
require 'dl/import'

module User32
  extend DL::Importer
  dlload 'user32'
  extern 'int MessageBoxA(int, char*, char*, int)'
  extern 'int EnumWindows(void*, int)'
end

=begin
cf = DL::CFunc.new(0, DL::TYPE_INT)
cb = DL::Function.new(cf, [DL::TYPE_INT])
cb.bind{|hwnd|
  puts hwnd
  -1
}
=end

=begin
cb = DL::Function.new(DL::CFunc.new(0, DL::TYPE_INT), [DL::TYPE_INT]){|hwnd|
  puts hwnd
  -1
}
=end

def f(hwnd)
  puts hwnd
  -1
end

cb = DL::Function.new(DL::CFunc.new(0, DL::TYPE_INT), [DL::TYPE_INT], &method(:f))

User32.EnumWindows(cb, 0)
User32.MessageBoxA(0, "exit", "caption", 0)
```

#### [Ruby 1.8.7 リファレンスマニュアル > DLモジュール](http://docs.ruby-lang.org/ja/1.8.7/class/DL.html)

<dl>
  <dt>C</dt><dd>文字 (char)</dd>
  <dt>c</dt><dd>文字を指すポインタ (char *)</dd>
  <dt>H</dt><dd>short 整数 (short)</dd>
  <dt>h</dt><dd>short 整数を指すポインタ (short *)</dd>
  <dt>I</dt><dd>整数 (char, short, int)</dd>
  <dt>i</dt><dd>整数を指すポインタ (char *, short *, int *)</dd>
  <dt>L</dt><dd>long int</dd>
  <dt>l</dt><dd>long int へのポインタ (long *)</dd>
  <dt>F</dt><dd>実数 (float)</dd>
  <dt>f</dt><dd>実数へのポインタ (float *)</dd>
  <dt>D</dt><dd>実数 (double)</dd>
  <dt>d</dt><dd>実数へのポインタ(double *)</dd>
  <dt>S</dt><dd>不変 (immutable) の文字列 (const char *)</dd>
  <dt>s</dt><dd>変更可能(mutable)な文字列 (char *)</dd>
  <dt>A</dt><dd>配列 (const type[])</dd>
  <dt>a</dt><dd>変更可能 (mutable) な配列 (type[])</dd>
  <dt>P</dt><dd>ポインタ (void *)</dd>
  <dt>p</dt><dd>変更可能 (mutable) なポインタ (void *)</dd>
  <dt>0</dt><dd>void 関数 (これはプロトタイプの最初の文字でなければならない)</dd>
</dl>

### [RubyからWin32APIを叩く](http://blog.cles.jp/item/3310)

UNZIP32.DLL for windows 9x/Me/NT/200x/XPをRubyから呼び出し
呼び出すAPIごとにオブジェクトができるのは違和感を覚えるので、DLLごとに１オブジェクトに纏めるとこんな感じ

```ruby
#!/usr/bin/ruby
require 'Win32API'

class Win32Proxy
  def initialize(dll_name)
    @methods = {}
    @dll_name = dll_name
  end

  def method_missing(sym, *args, &block)
    m = @methods[sym]
    m.send('call', *args, &block)
  end

  def register_method(name, params, return_type)
    @methods[name.to_sym] = Win32API.new(@dll_name, name, params, return_type)
  end
end

class UnZip32 < Win32Proxy
  UNZIP32 = 'UNZIP32.DLL'

  def initialize()
    super(UNZIP32)
    register_method('UnZipGetSubVersion', %w(v), 'l')
    register_method('UnZip', %w(p p p l), 'i')
  end
end

unzip32 = UnZip32.new
puts unzip32.UnZipGetSubVersion()
buf = "\0" * 128
cmd = "foo.zip"
unzip32.UnZip(nil, cmd, buf, buf.size)
puts buf.unpack('A*').pack('A*')
```

## ウィンドウ操作

- [ruby - Win32's FindWindow() can find a particular window with the exact title, but what about "try.bat - Notepad"? - Stack Overflow](http://stackoverflow.com/questions/3327666/win32s-findwindow-can-find-a-particular-window-with-the-exact-title-but-what)  
  EnumWindows, EnumWindowsProc, GetWindowText によるウィンドウタイトルのあいまい検索


## マウス・キーボード操作

### [Using the Keyboard to Move the Cursor](http://msdn.microsoft.com/en-us/library/ms648380(v=vs.85).aspx#_win32_Using_the_Keyboard_to_Move_the_Cursor)

公式によるサンプルコード。
- [GetCursorPos function (Windows)](http://msdn.microsoft.com/en-us/library/ms648390(v=vs.85).aspx)
- [SetCursorPos function (Windows)](http://msdn.microsoft.com/en-us/library/ms648394(v=vs.85).aspx)
- [N0ラボ（仮） - Ruby編](http://nijzero.dw.land.to/document/labo/ruby.html)
    - Win32APIを使ってマウスクリックを行わせる
    - Win32APIを使ってキーボード入力を行わせる
    - Win32APIを使って特定のウインドウをフォアグラウンドに出す、タイトルからウインドウを取得する
- [VRubyでGetCursorPos - 近況](http://d.hatena.ne.jp/pekeq/20070420/p1)


## Font
#### フォントの列挙
- [c++ - Get list of fonts (Win32) - Stack Overflow](http://stackoverflow.com/questions/2702157/get-list-of-fonts-win32)
- [フォント - WisdomSoft](http://wisdom.sakura.ne.jp/system/winapi/win32/win131.html)
- [タイプフェイス - WisdomSoft](http://wisdom.sakura.ne.jp/system/winapi/win32/win132.html)
- [プログラミング講座-第29章](http://www.geocities.jp/midorinopage/Beginner/beginner29.html)
- [フォント名の列挙 - Program Tips](http://www.crimson-systems.com/tips/t049a.htm)
- [Visual Basic でシンボルを除くフォント一覧を取得するサンプル - Yahoo!知恵袋](http://note.chiebukuro.yahoo.co.jp/detail/n202474)
- [フォントの列挙: vanillaの日記](http://vanillasky-room.cocolog-nifty.com/blog/2007/06/post-bb27.html)
- [全標準フォント一覧 / もうパンツはかない](http://rinrin.saiin.net/~aor/fonts/allfonts)


## Links

### Node.js
- [node-win32api by idobatter](http://idobatter.github.io/node-win32api/)
