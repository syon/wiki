#### [ImageMagick: Convert, Edit, Or Compose Bitmap Images](http://www.imagemagick.org/script/index.php)


## Install
[ImageMagick: Install from Binary Distribution](http://www.imagemagick.org/script/binary-releases.php)


## Create image
- [Canvas Creation -- IM v6 Examples](http://www.imagemagick.org/Usage/canvas/)  
  公式によるたくさんのコマンドサンプル
- [Imagemagick how to call colours](http://www.rubblewebs.co.uk/imagemagick/notes/colours.php)  
  色の指定記法いろいろ

### Example

```bash
$ convert -size 100x100 xc:#FF0000 red.png
```

## TIPS

### 透明部分のあるPNGの背景を白にしてJPG変換
- [command line - How can I convert a folder of .pngs to .jpgs while setting the background color? - Ask Ubuntu](http://askubuntu.com/questions/58715/how-can-i-convert-a-folder-of-pngs-to-jpgs-while-setting-the-background-color)
  - アンチエイリアスなし  
    `$ mogrify -quality 100 -format jpg -fill "#FFFFFF" -opaque none *.png`
  - アンチエイリアスあり  
    PNGを10倍に拡大してアンチエイリアス有効でリサイズ
- [imagemagick - Replace transparency in PNG images with white background - Stack Overflow](http://stackoverflow.com/questions/2322750/replace-transparency-in-png-images-with-white-background)
  - `$ convert image.png -background white -alpha remove white.png`
