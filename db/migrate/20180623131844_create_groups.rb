class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.bigint :creator_id
      t.string :name

      t.timestamps
    end
    add_index :groups, :creator_id
  end
end
