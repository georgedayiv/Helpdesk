class AddTicketQueueIdToTickets < ActiveRecord::Migration
  def self.up
    add_column :tickets, :ticket_queue_id, :integer
  end

  def self.down
    remove_column :tickets, :ticket_queue_id
  end
end