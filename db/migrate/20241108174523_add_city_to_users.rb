class AddCityToUsers < ActiveRecord::Migration[7.2]
  def change
    add_reference :users, :city, null: false, foreign_key: true
  end
end
