class CreateCards < ActiveRecord::Migration
  def self.up
    create_table :cards, :force => true do |t|
      t.string :title
      t.string :status
      t.integer :project_id
      t.text :description
      t.timestamps
    end
  end

  def self.down
    drop_table :cards
  end
end
