# Custom Dictionary for CherryPick Engawa

## これ何
c.koliosky.comで使うElasticsearch用のカスタム辞書の定義です。

## ビルド済みバイナリ
[ここから](https://hollo-esurio1673.s3.pl-waw.scw.cloud/dict/custom.dic)ダウンロード

## ビルドする
### 必要なもの
- [ ] Sudachi.rsがインストールされていること
  
### セットアップ
```bash
./setup.sh
```

### ビルド
```
sudachi build --output OUTPUT_DIR --system resources/system_full.dic [INPUT]
```