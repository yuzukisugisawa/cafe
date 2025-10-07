class AddImage2ToTweets < ActiveRecord::Migration[7.1]
  def change
    add_column :tweets, :image2, :string
  end
end
