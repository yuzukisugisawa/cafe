class AddPriceToTweets < ActiveRecord::Migration[7.1]
  def change
    add_column :tweets, :price, :string
  end
end
