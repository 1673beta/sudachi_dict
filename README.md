# Custom Dictionary for CherryPick Engawa

## これ何
c.koliosky.comで使うElasticsearch用のカスタム辞書の定義です。

## ビルドする
### 必要なもの
- [ ] Sudachi.rsがインストールされていること
- [ ] matrix.defをダウンロードしていること
  
### セットアップ
```bash
./setup.sh
```

### ビルド
```
sudachi build --output OUTPUT_DIR --system resources/system_full.dic [INPUT]
```