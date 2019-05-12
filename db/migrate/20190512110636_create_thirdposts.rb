class CreateThirdposts < ActiveRecord::Migration
  def change
    create_table :thirdposts do |t|
      t.string :title
      t.string :content
      t.string :image

      t.timestamps null: false
    end
  end
end
