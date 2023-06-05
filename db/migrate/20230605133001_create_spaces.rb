class CreateSpaces < ActiveRecord::Migration[7.0]
  def change
    create_table :spaces do |t|
      t.string :name
      t.string :address
      t.string :description
      t.boolean :availability

      t.timestamps
    end
  end
end
