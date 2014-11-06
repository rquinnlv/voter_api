class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :name
      t.string :percentage
      t.integer :ward
      t.string :photo_path

      t.timestamps
    end
  end
end
