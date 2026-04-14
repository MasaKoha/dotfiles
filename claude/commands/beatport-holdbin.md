Beatport Hold Bin の重複チェックを実行する。

## 手順

1. `beatport-holdbin-check` コマンドを実行する
2. 出力結果を読み、ユーザーに報告する
3. 完全重複がある場合は、どちらを削除すべきか提案する
4. 別バージョン（Original vs Remix）は参考情報として伝える

## 前提条件

- Chrome で Beatport にログイン済みであること
- Chrome の「Apple Events からの JavaScript を許可」が有効であること
- エラーが出た場合は前提条件をユーザーに案内する

## 出力の読み方

- ★重複: 同一トラック・同一バージョンが複数のリリース/個別トラックに存在 → 購入前に整理が必要
- △別Ver: 同一楽曲の別バージョン（Original vs Remix 等） → 意図的であれば問題なし
