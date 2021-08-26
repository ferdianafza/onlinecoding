class AddUserIdToContent < ActiveRecord::Migration[6.0]
  def change
    add_column :contents, :user_id, :integer
  end
end
