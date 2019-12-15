class AddDetailsToFavBeaches < ActiveRecord::Migration[6.0]
  def change
    add_column :favbeaches, :img, :string
    add_column :favbeaches, :lat, :integer
    add_column :favbeaches, :lng, :integer
  end
end
