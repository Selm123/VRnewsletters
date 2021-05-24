class CreateSubscribers < ActiveRecord::Migration[5.2]
  def change
    create_table :subscribers do |t|
      t.text :email
      t.text :first_name
      t.text :last_name
      t.boolean :software
      t.boolean :hardware

      t.timestamps
    end
  end
end
