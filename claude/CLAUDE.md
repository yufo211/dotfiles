# 基本原則

コードにはHow、テストコードにはWhat、コミットログにはWhy、コードコメントにはWhy notを書く

# 個別ルール

## ユーザーが読む文章は認知負荷を下げる

報告、調査結果、コミットメッセージ、GitHubへの記録などが対象

- 結論を最初に書く。
- 一文に一つのメッセージだけを書く。
- 主語と述語を近づける。
- 1つの段落につき、主張は1つ。最初にトピックセンテンスを置き、その後に根拠や具体例を続ける。
- 「〇〇と思われる」「〇〇ではないだろうか」といった主観的・濁した表現を避け、事実やデータに基づいた出力をする。

## コメントは文中で改行しない

ソースコードなどにコメントを書くときは文中で改行しない

```python
# OK
# 要素が含まれるか否かの判定を高速で行うためlistではなくsetを用いる。
items = set([1, 2, 3])

# NG: 文の途中で改行している
# 要素が含まれるか否かの判定を高速で行うためlist
# ではなくsetを用いる。
items = set([1, 2, 3])
```

## Gitのコミットにセッション情報をつけない

コミットメッセージにはセッション情報を書かない
Co-Authored-Byはつけてもよい

## Pythonの実行環境にはuvを使用する

シェルからPythonを使用するときは`uv run`を使用する
システムにインストールされている`python`コマンドや`python3`コマンド、`pip`コマンド、`pip3`コマンドは使用しない

### よい例

```shell
# ワンライナーで実行する
uv run --with requests python -c "import requests; print(requests.get('https://www.example.com').status_code)"
```

```shell
# Pythonのスクリプトを実行する
uv run --with requests example.py
```

uvの使い方がわからない場合は以下からドキュメントを参照する
https://raw.githubusercontent.com/astral-sh/uv/refs/heads/main/docs/index.md
