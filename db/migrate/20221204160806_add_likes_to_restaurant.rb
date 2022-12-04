class AddLikesToRestaurant < ActiveRecord::Migration[7.0]
  def change
    add_column :restaurants, :likes, :integer, null: false, default: 0
  end
end
