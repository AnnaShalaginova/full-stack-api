class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.string :sport
      t.date :date
      t.integer :duration
      t.references :user, foreign_key: true
      t.string :location

      t.timestamps
    end
  end
end
