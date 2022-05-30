class AddOptionalUsersForProducts < ActiveRecord::Migration[6.1]
  def change
    add_reference :products, :user, index: false, foreign_key: false, optional: true
  end
end
