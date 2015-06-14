class CreateTrades < ActiveRecord::Migration
  def change
    create_table :trades do |t|
      t.string :name
      t.integer :exchange_type
      t.integer :agent_id
      t.integer :place_id
      t.string :comment

      t.timestamps null: false
    end
  end
end
