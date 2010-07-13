class CreateTicketQueues < ActiveRecord::Migration
  def self.up
    create_table :ticket_queues do |t|
      t.string :queue_name

      t.timestamps
    end
  end

  def self.down
    drop_table :ticket_queues
  end
end
