class CreateCartItems < ActiveRecord::Migration[7.1]
  def change
    create_table :cart_items do |t|

      t.integer :cart_id 
      t.integer :product_id
      t.integer :quantity

      t.timestamps
    end
  end
end
