class Brand < ApplicationRecord
  belongs_to :cigarette_shred
  belongs_to :small_box
  belongs_to :paper_roll
  belongs_to :filter
  has_many :manufacturing_statuses

  def self.search(search)
    if search
      #Brand.where('name LIKE(?)', "#{search}%")
      Brand.where(['name::text LIKE ? OR cigarette_shred_id LIKE ? OR paper_roll_id LIKE ? OR small_box_id LIKE ? OR filter_id  LIKE ?', "#{search}%", "#{search}%", "#{search}%", "#{search}%", "#{search}%"])
    else
      Brand.all
    end
  end
end
