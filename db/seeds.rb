Tag.create([
  { name: '渋谷' },
  { name: '表参道' },
  { name: '横浜' },
  { name: 'みなとみらい' },
  { name: '桜木町' },
  { name: '東京' },
  { name: '御茶ノ水' },
  { name: '新宿' },
  { name: '新大久保' },
  { name: '大口' },
  { name: '川越' },
  { name: 'アイス' },
  { name: 'プリン' },
  { name: 'ブラウニー' },
  { name: 'チョコレート' },
  { name: 'チーズケーキ' },
  { name: 'パンケーキ' },
  { name: 'ケーキ' },
  { name: 'クレープ' },
  { name: 'ミルクレープ' },
  { name: 'パフェ' },
  { name: 'カフェラテ' },
  { name: '抹茶' },
  { name: '黒ゴマ' },
  { name: 'いちご' }

])
# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
