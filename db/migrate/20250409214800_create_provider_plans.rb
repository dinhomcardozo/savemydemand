class CreateProviderPlans < ActiveRecord::Migration[8.0]
  def change
    create_table :provider_plans do |t|
      t.string :description
      t.decimal :price
      t.integer :duration_in_months
      t.date :payment_date
      t.date :start_date
      t.date :end_date
      t.boolean :status

      t.timestamps
    end
  end
end
