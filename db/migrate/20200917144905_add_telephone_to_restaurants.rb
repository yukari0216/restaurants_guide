class AddTelephoneToRestaurants < ActiveRecord::Migration[6.0]
  def change
    add_column :restaurants, :telephone, :string
  end
end
