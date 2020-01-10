json.array! @brands do |brand|
  json.id brand.id
  json.name brand.name
  json.cigarette_shred_name CigaretteShred.find(brand.cigarette_shred_id).name
  json.paper_roll_name PaperRoll.find(brand.paper_roll_id).name
  json.small_box_name SmallBox.find(brand.small_box_id).name
  json.filter_name Filter.find(brand.filter_id).name
end