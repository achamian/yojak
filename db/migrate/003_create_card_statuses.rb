class CreateCardStatuses < ActiveRecord::Migration
  def self.up
    create_table :card_statuses, :force => true do |t|
      t.integer :project_id
      t.string :status
      t.timestamps
    end
  end

  def self.down
    drop_table :card_statuses
  end
end
