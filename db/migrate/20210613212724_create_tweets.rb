class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      t.belongs_to :user
      t.string :contenido

      t.timestamps
    end
  end
end
