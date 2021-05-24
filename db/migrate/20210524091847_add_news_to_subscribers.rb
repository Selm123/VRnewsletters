class AddNewsToSubscribers < ActiveRecord::Migration[5.2]
  def change
    add_column :subscribers, :news, :boolean
  end
end
