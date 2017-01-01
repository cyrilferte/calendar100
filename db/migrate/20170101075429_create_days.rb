class CreateDays < ActiveRecord::Migration[5.0]
  def change
    create_table :days do |t|
      t.string :progress
      t.string :thought
      t.string :link
      t.string :hub
      t.string :title

      t.timestamps
    end
  end
end
