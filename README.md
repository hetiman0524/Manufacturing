## データベース

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