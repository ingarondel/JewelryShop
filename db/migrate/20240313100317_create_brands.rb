class CreateBrands < ActiveRecord::Migration[7.1]
  def change
    create_table :brands do |t|

      t.string :title
      t.string :bytitle
      t.string :img 
      t.string :description

      t.timestamps
    end
  end
end
