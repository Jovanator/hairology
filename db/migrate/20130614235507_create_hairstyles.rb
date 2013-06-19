class CreateHairstyles < ActiveRecord::Migration
  def change
    create_table :hairstyles do |t|
      t.string :haircut
      t.string :color
      t.integer :user_id

      t.timestamps
    end
    add_index :hairstyles, [:user_id, :created_at]
  end
end
