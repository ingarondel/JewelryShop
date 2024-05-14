class AddColumnsToCategories < ActiveRecord::Migration[7.1]
  def change
    add_column :categories, :title, :string
    add_column :categories, :bytitle, :string
    add_column :categories, :keywords, :string
    add_column :categories, :description, :string
  end
end
