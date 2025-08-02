class CreateTweets < ActiveRecord::Migration[7.1]
  def change
    create_table :tweets do |t|
      t.string :shop
      t.string :place
      t.string :menu
      t.text :detail

      t.timestamps
    end
  end
end
