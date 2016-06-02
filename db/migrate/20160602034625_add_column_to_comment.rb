class AddColumnToComment < ActiveRecord::Migration
  def change
    add_column :comments, :gossip_id, :integer
  end
end
