class AddEmployeeIdToTickets < ActiveRecord::Migration
  def self.up
    add_column :tickets, :employee_id, :integer
  end

  def self.down
    remove_column :tickets, :employee_id
  end
end
