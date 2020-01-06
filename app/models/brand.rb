class Brand < ApplicationRecord
  belongs_to :cigarette_shred
  belongs_to :small_box
  belongs_to :paper_roll
  belongs_to :filter
  has_many :manufacturing_statuses
end
