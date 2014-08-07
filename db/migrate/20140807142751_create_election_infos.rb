class CreateElectionInfos < ActiveRecord::Migration
  def change
    create_table :election_infos do |t|
      t.string :date
      t.string :address

      t.timestamps
    end
  end
end
