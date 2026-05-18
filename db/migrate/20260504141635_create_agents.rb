class CreateAgents < ActiveRecord::Migration[8.1]
  def change
    create_table :agents do |t|
      t.string :name
      t.integer :level
      t.boolean :active
      t.string :codename

      t.timestamps
    end
  end
end
