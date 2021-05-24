class AddGamesToSubscribers < ActiveRecord::Migration[5.2]
  def change
    add_column :subscribers, :games, :boolean
  end
end
