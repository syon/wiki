#### イベント発火
see also: [[JavaScript#タッチパネル対応]]
```js
$( "#foo" ).trigger( "click" );
```

#### データ変更イベント
```js
$(document).on('change', 'select[name="hoge"]', function(){
```

#### アンカーのクリックイベントで、初期動作（この場合はページ遷移）を中止

- [jQuery.Event - jQuery 日本語リファレンス](http://semooh.jp/jquery/cont/doc/event/#event.preventDefault)
- [ふじこのプログラミング奮闘記](http://blog.neo.jp/dnblog/index.php?module=Blog&action=Entry&blog=pg&entry=3107&rand=64d73)

```js
$("a").click(function(event){
  alert(this.href);
  event.preventDefault();
});
```

#### クラス切り替え

- [toggleClass(class) - jQuery 日本語リファレンス](http://semooh.jp/jquery/api/attributes/toggleClass/class/)

```js
$(this).toggleClass("highlight");
```

#### 何番目の要素か

- [jQueryメモ：クリックしたのは何番目の要素？ | THE HAM MEDIA BLOG](http://h2ham.seesaa.net/article/118961430.html)

```js
var index = $("div#test0 ul li").index(this);
```

#### 要素名を取得する

- [jQueryで要素名を取得する | doli blog](http://blog.doli.jp/blog/2012/post585/)

```js
var tag = $(".hoge")[0].tagName;
- - - - - - - - - - - - - - - - - - - - - - -
$(".hoge").each(function(){
    var tag = $(".hoge").get(0).tagName;
});
```

#### [jQueryでoption要素を生成するスマートな方法 at 日本の天ぷら情報](http://tmpla.info/archives/1402)

連想配列のキーを「value」と「text」にして値を与えてoptionを生成すると勝手にプロパティを展開

```js
var prefs = [
  {value:'00', text:'--選択して下さい--'},
  {value:'01', text:'北海道'},
  {value:'02', text:'青森県'},
  {value:'03', text:'岩手県'},
               :
];
$('select').empty();
$.each(prefs, function(){
  var option = $('<option>', this);
  $('select').append(option);
});
```

#### SELECT要素のOPTIONをjQueryで選択状態にする

- [selectで指定のものを選択された状態に](http://shohu.hatenablog.com/entry/20080924/1222232033)

```html
<select name="city">
  <option value=""></option>
  <option value="tokyo" >東京</option>
  <option value="nagoya">名古屋</option>
  <option value="nagoya">京都</option><!-- valueの指定ミス例 -->
  <option value="osaka" >大阪</option>
</select>

<script>
$('select[name="city"]').val('tokyo');   //東京が選択される
$('select[name="city"]').val('fukuoka'); //存在しないvalを指定 → 先頭のOPTIONが選択される
$('select[name="city"]').val('nagoya');  //OPTIONの重複したvalueを指定 → 複数あるうちの最後 京都 が選択される
$('select[name="city"]').val();          //選択されているOPTIONのvalueを返す
</script>
```

#### フォーム入力値をリアルタイム取得する

- [jQueryで色々なフォーム入力値をリアルタイム取得する-ITかあさん](http://www.kaasan.info/archives/1676)

#### [jQueryで要素の表示・非表示を判定する方法: 小粋空間](http://www.koikikukan.com/archives/2012/08/03-012345.php)

#### [jQuery.Deferredで順番にアニメーションを実行する | 2GRAVITY](http://2g.atsukitaira.com/javascript/jquery/1071/)

#### [jQuery でフォームの2重送信を禁止する方法 | ウェブル](http://weble.org/2012/06/12/jquery-multiplex-disable?utm_source=rss&utm_medium=rss&utm_campaign=jquery-multiplex-disable)

```js
$('form').submit(function() {
    $(this).submit(function () {
        alert('フォームからのデータ送信は一度ずつ行なって下さい。');
        return false;
    });
});
```

### 繰り返し

- [jQuery each関数による繰り返し処理 « jQuery« javascript « ActionScript3.0 プログラミング入門 for designers](http://gelsol.sub.jp/javascript/jquery/003.html)

### Ajax

- [jQuery モダンAjaxな書き方を目指して　?deferredを使ったAJAX? - Hack Your Design!](http://blog.toshimaru.net/jquery-ajaxdeferredajax/)
- [とほほのjQuery入門 ■ Ajax(Low-Level Interface)](http://www.tohoho-web.com/js/jquery/ajax.htm)
- [MadCap　Java - JSONを使用しJavaサーブレットに対してAjax通信を行う](http://madcap-labo.com/java/json_ajax_sample.html)

### Tips

- [jQueryをロードする際のナイス！と思った書き方](http://dtp.jdash.info/archives/51941752.html)
```html
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.0.min.js"><\/script>')</script>
```
- [[JS][jQuery] 要素の存在を確認する6通りのコードと実行速度 | きほんのき](http://kihon-no-ki.com/check-existence-element-by-javascript-and-jquery)
- [jQueryにおけるattrとpropの違いと使いドコロまとめ - Qiita](http://qiita.com/kbyay_/items/7a7ce9547f29b34a63b1)
- [[jQuery] find()とchildren()の使い分け | きほんのき](http://kihon-no-ki.com/difference-between-find-and-children-in-jquery)
- [jQuery - selectorの存在確認に便利な`$(selector).exists()`を実装しておく - Qiita](http://qiita.com/takoba/items/2c278b2838ab30432a54)
```js
jQuery.fn.exists = function(){return Boolean(this.length > 0);}
```
