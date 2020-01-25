## リポジトリ名
### manufacturing app


## 概要

製造している銘柄の製造数量と製造数量に対して供給した材料が足りているか確認できるアプリ


## 機能説明

- 製造計画に製造したい銘柄を選択し、選択した銘柄の製造中の製造量、材料の供給状況を確認できる
- 製造数量を増やしたり、材料を供給したりすることで実際に製造している時の材料管理ができる
- 銘柄の新規登録、材料の新規登録ができる
- 銘柄ごとに使用する材料を確認でき、検索することもできる（インクリメンタルサーチ）


## 使い方

### 製造中状況の確認
- トップページの製造中の状況を見たい銘柄を選択して下さいの下にあるセレクターで確認したい銘柄を選択する。（製造計画を追加する必要がある。）
- 製造計画数に対して、製造数量が現在何c/s製造したかを表している。
- 製造数の追加のセレクターに任意の数字を入力し、追加するを選択すると、製造数量に反映され、その数製造したということになる。
- 刻み、巻紙、小箱、フィルターという材料があり、供給量が供給済の量を表し、供給したい量に任意の数字を入力し、追加するを選択すると、供給量に追加される。
- 製造数量に対して、材料の供給量が一定を超えていたら、材料が足りているとみなし、判定に足りていますと表示される。足りていなかったら、足りませんと表示される。(供給量に対しての判断基準は＊で記載されている数量あたりの数で計算されている)

### 材料登録及び確認機能
- トップページから材料を確認、登録するを選択すると確認したい材料のページに遷移する。そこで見たい材料名を選択する。
- 材料名を入力し、追加するを選択すると材料が追加される。

### 銘柄別使用材料一覧確認及び確認機能
- トップページから銘柄別使用材料一覧へで使用材料一覧ページへ遷移する。
- 銘柄名を検索すると該当する銘柄と必要な使用材料が表示される。
- 新規登録を選択すると、銘柄の新規登録ページへ遷移する。
- 銘柄名、使用する材料を各材料から選択し、登録するを選択すると銘柄が登録される。

### 製造計画追加機能
- トップページから製造計画追加を選択し、製造計画登録ページへ遷移する。
- 登録した銘柄から銘柄名が選択でき、製造予定数量を任意の数字入力する。
- 現製造数、初期材料数量は前回製造した続き等でない限りは全て０とする。（デフォルトで値は０になっている）
- 登録するを選択すると、製造計画を登録でき、製造中状況の確認ページで確認できる。

## インストール
 
```
$ git clone https://github.com/hetiman0524/Manufacturing.git
$ cd Manufacturing
```


## データベース

## 開発環境

- html5
- scss 3.7.4
- ruby 2.5.1
- rails 5.2.3
- jQuery 3.1.0

## brandテーブル
|column|Type|Option|
|------|----|------|
|name|string|null: false|
|cigarette_shred_id|integer|null: false|
|small_box_id|integer|null: false|
|paper_roll_id|integer|null: false|
|filter_id|integer|null: false|

### Association
- belongs_to :cigarette_shred
- belongs_to :small_box
- belongs_to :paper_roll
- belongs_to :filter
- has_many :manufacturing_statuses


## manufacturing_status
|column|Type|Option|
|------|----|------|
|brand_id|integer|null: false|
|production_plan|integer|null: false|
|production_remaining|integer|null:false|
|cigarette_shred_number|integer|null: false|
|small_box_number|integer|null: false|
|paper_roll_number|integer|null: false|
|filter_number|integer|null: false|

### Association
belongs_to :brand


## cigarette_shred
|column|Type|Option|
|------|----|------|
|name|string|null: false|

### Association
- has_many :brands


## small_box
|column|Type|Option|
|------|----|------|
|name|string|null: false|

### Association
- has_many :brands


## paper_roll
|column|Type|Option|
|------|----|------|
|name|string|null: false|

### Association
- has_many :brands


## filter
|column|Type|Option|
|------|----|------|
|name|string|null: false|

### Association
- has_many :brands


## 作者

[@mjhettiman](https://twitter.com/mjhettiman)
mail to: heti0524.jdi@gmail.com