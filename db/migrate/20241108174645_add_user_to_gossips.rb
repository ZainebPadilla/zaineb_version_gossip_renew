class AddUserToGossips < ActiveRecord::Migration[7.2]
  def change
    add_reference :gossips, :user, null: false, foreign_key: true
  end
end
