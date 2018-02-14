class AddDefaultToFavorateCount < ActiveRecord::Migration[5.1]
  def change
    change_column :restaurants, :favorite_count, :integer, :default => 0
  end
end
