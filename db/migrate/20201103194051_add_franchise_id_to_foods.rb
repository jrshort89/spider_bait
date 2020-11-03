class AddFranchiseIdToFoods < ActiveRecord::Migration[6.0]
  def change
    add_column :foods, :franchise_id, :integer
  end
end
