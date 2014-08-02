class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.integer :zipcode

      t.timestamps
    end
  end
end
