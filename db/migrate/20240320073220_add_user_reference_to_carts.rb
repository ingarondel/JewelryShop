class AddUserReferenceToCarts < ActiveRecord::Migration[7.1]
  def change
    add_reference :carts, :user, index: true
  end
end
