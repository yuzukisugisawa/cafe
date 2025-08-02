class CreateTweetTagRelations < ActiveRecord::Migration[7.1]
  def change
    create_table :tweet_tag_relations do |t|
      t.references :tweet, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
