class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.datetime :date, null: false
      t.string :host, null: false
      t.string :location, null: false
      t.integer :amount, null: false
      t.text :message
      t.json :participants, null: false
      t.timestamps
    end
  end
end
