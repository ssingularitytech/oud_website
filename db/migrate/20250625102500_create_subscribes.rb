class CreateSubscribes < ActiveRecord::Migration[7.1]
  def change
    create_table :subscribes do |t|
      t.string :email

      t.timestamps
    end
  end
end
