class AddContentToGossip < ActiveRecord::Migration
  def change
    add_column :gossips, :content, :string
  end
end
