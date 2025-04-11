class CreateTickets < ActiveRecord::Migration[8.0]
  def change
    create_table :tickets do |t|
      t.references :client, null: false, foreign_key: true
      t.references :provider, null: false, foreign_key: true
      t.string :title
      t.text :description
      t.text :text
      t.string :service_type
      t.date :deadline
      t.string :status

      t.timestamps
    end
  end
end
