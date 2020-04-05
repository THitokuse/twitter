class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      t.string :title
      t.string :comment

      t.timestamps
    end
  end
end
