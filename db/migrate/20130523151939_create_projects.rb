class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :book_id
      t.integer :user_id
      t.text :goal

      t.timestamps
    end
  end
end
