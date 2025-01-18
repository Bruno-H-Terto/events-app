class CreateScheduleItems < ActiveRecord::Migration[8.0]
  def change
    create_table :schedule_items do |t|
      t.time :start_time
      t.integer :lenght
      t.string :title
      t.string :description
      t.string :speaker_email
      t.references :schedule, null: false, foreign_key: true

      t.timestamps
    end
  end
end
