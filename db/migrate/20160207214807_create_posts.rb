class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :headline
      t.text :description
      t.text :delivery_details
      t.decimal :price, precision: 8, scale: 2, default: 0.00
      t.boolean :show_phone_number, default: false
      t.boolean :private, default: false
      t.integer :creator_id, index: true
      t.timestamps
    end
  end
end
