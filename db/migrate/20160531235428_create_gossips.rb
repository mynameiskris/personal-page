class CreateGossips < ActiveRecord::Migration
  def change
    create_table :gossips do |t|

      t.timestamps null: false
    end
  end
end
