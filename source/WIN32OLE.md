### 基本

```ruby
require 'win32ole'

ie = WIN32OLE.new("InternetExplorer.Application")
ie.visible = true
ie.navigate("http://google.co.jp")
while ie.busy == true; sleep 0.5; end

puts ie.document.title
```


### TIPS

#### メソッド一覧

```ruby
puts ie.document.body.methods
puts ie.document.body.ole_methods
```

#### window

```ruby
window = ie.document.ParentWindow
```

#### frame

```ruby
ie.document.frames.item(0).document.getElementsByName
```

#### 子ウィンドウ

OS上のWIN32OLEウィンドウを対象に指定のウィンドウを探索し、変数`ie`に格納し直すことで操作対象とする。

```ruby
require 'win32ole'

ie = WIN32OLE.new("InternetExplorer.Application")
ie.visible = true
ie.navigate("http://www.google.co.jp")
while ie.busy == true; sleep 0.5; end

ie = WIN32OLE.new("InternetExplorer.Application")
ie.visible = true
ie.navigate("http://www.yahoo.co.jp")
while ie.busy == true; sleep 0.5; end

shell = WIN32OLE.new("Shell.Application")
windows = shell.Windows
windows.each do |w|
  puts "ole_type.name: #{w.ole_type.name}"  #=> IWebBrowser2
  puts "  locationURL: #{w.locationURL}"
  ie = w if w.locationURL.include?("www.google.co.jp")
end
ie.document.parentwindow.alert("This is current 'ie' target.")
```

### Links

- [Rubyでwin32oleを使う。（基本->IEのDOMにアクセスするまで） - それマグで！](http://takuya-1st.hatenablog.jp/entry/20091221/1261364439)  
  irbによるサンプルあり。

- [win32ole-pp - WIN32OLE オブジェクトを pp で表示する - \*Trace Output\*](http://d.hatena.ne.jp/miyamuko/20070225/p1)
    - `WIN32OLE#to_s`をちょっと賢くします。
    - `WIN32OLE#pretty_print`を追加します。これで WIN32OLE オブジェクトを`pp`で見やすく表示できます。

- [rubyからJavaScriptの関数を起動する方法は?](http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-list/37161)
```js
function sayHello(msg) {
  window.alert(msg);
}
function introduce(name, age) {
  window.alert("My name is " + name);
  window.alert("I am " + age + "years old");
}
```
```ruby
ie.document.parentWindow.sayHello._invoke 0, ['Hello'], [WIN32OLE::VARIANT::VT_BSTR]
ie.document.parentWindow.introduce._invoke 0, ['John', 20], [WIN32OLE::VARIANT::VT_BSTR, WIN32OLE::VARIANT::VT_INT]
```
cf. [module WIN32OLE::VARIANT](http://docs.ruby-lang.org/ja/2.1.0/class/WIN32OLE=3a=3aVARIANT.html)

- [Rubyist Magazine - Win32OLE 活用法 【第 6 回】 Web 自動巡回](http://magazine.rubyist.net/?0008-Win32OLE=)
    - Ajax サイトでの自動制御
    - キーボードシミュレーションによる Internet Explorer の自動操縦
    - Internet Explorer での POST メソッド
    - __参考サイト__
    - __Win32OLE 活用法 連載一覧__

- [RubyからIEを制御する](http://www.tech-notes.dyndns.org/win32ole/ie_ctrl.html)
    - IEのDocumentオブジェクトの使い方
        -  IE.Document
        -  IE.Document.body
        -  IE.Document.frames
    - タグエレメントの使い方
