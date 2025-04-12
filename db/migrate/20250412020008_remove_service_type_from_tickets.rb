class RemoveServiceTypeFromTickets < ActiveRecord::Migration[8.0]
  def change
    remove_column :tickets, :service_type, :integer
  end
end
