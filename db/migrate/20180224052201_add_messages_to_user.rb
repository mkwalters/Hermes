class AddMessagesToUser < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :message, foreign_key: true
  end
end
