class CreateTopics < ActiveRecord::Migration
  def self.up
    create_table :topics do |t|
      t.integer :user_id
      t.string :title
      t.string :category_id
      t.string :tags
      t.boolean :is_show,:default => false
      t.timestamps
    end
  end

  def self.down
    drop_table :topics
  end
end
