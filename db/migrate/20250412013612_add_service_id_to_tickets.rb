class AddServiceIdToTickets < ActiveRecord::Migration[8.0]
  def change
    add_column :tickets, :service_id, :integer
  end
end
