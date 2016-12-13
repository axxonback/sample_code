class AddPartNumberToTickets < ActiveRecord::Migration
  def change
    add_column :tickets, :part_number, :string
  end
end
