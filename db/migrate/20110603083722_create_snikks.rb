class CreateSnikks < ActiveRecord::Migration
  def self.up
    create_table :snikks do |t|
      t.string :content
      t.string :url
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :snikks
  end
end
