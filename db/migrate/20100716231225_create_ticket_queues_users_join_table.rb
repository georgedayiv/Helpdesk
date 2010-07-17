class CreateTicketQueuesUsersJoinTable < ActiveRecord::Migration
  def self.up
    create_table :ticket_queues_users, :id => false do |t|
      t.integer :ticket_queue_id
      t.integer :user_id
    end
  end

  def self.down
    drop_table :ticket_queues_users
  end
end
