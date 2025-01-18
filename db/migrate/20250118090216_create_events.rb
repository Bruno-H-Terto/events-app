class CreateEvents < ActiveRecord::Migration[8.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :url
      t.string :description
      t.date :start_date
      t.date :end_date
      t.string :event_type
      t.string :location
      t.integer :participant_limit
      t.integer :status

      t.timestamps
    end
  end
end
