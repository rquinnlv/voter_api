class CreateElections < ActiveRecord::Migration
  def change
    create_table :elections do |t|
      t.string :date
      t.string :location

      t.timestamps
    end
  end
end
