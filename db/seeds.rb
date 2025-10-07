[
  { name: '渋谷' },
  { name: '表参道' },
  { name: '御茶ノ水' },
  { name: '新宿' },
  { name: '新大久保' },
  { name: '川越' },
  { name: '奥多摩' },
  { name: 'プリン' },
  { name: 'ブラウニー' },
  { name: 'チーズケーキ' },
  { name: 'ケーキ' },
  { name: 'カフェラテ' },
  { name: '抹茶' },
  { name: '女子会' },
  { name: 'デート' },
  { name: 'しずか' },
  { name: '隠れ家カフェ' },
  { name: '謎解き' },
  { name: '自然' },
  

].each do |tag_attrs|
  Tag.find_or_create_by(tag_attrs)
end
# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
