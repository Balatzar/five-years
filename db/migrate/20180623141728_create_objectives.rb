class CreateObjectives < ActiveRecord::Migration[5.2]
  def change
    create_table :objectives do |t|
      t.belongs_to :user, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
