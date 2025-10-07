class Tag < ApplicationRecord
    validates :name, presence: true
  #Tagsテーブルから中間テーブルに対する関連付け
  has_many :tweet_tag_relations, dependent: :destroy
  #Tagsテーブルから中間テーブルを介してArticleテーブルへの関連付け
  has_many :tweets, through: :tweet_tag_relations, dependent: :destroy
def tag_list
    tags.map(&:tagu).join(', ')
  end

  # タグを保存する際に重複を削除する(変更箇所)
  def tag_list=(tags)
    unique_tags = tags.split(',').map(&:strip).uniq
    self.tags = unique_tags.map { |tag_name| Tag.find_or_create_by(tagu: tag_name) }
  end
end
