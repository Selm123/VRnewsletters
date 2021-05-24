class AddOffersToSubscribers < ActiveRecord::Migration[5.2]
  def change
    add_column :subscribers, :offers, :boolean
  end
end
