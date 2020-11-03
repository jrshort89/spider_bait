class CreateFranchises < ActiveRecord::Migration[6.0]
  def change
    create_table :franchises do |t|
      t.string :name
      t.string :costume

      t.timestamps
    end
  end
end
