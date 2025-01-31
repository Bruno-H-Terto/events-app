class AddColunmEndTimeToScheduleItem < ActiveRecord::Migration[8.0]
  def change
    add_column :schedule_items, :end_time, :datetime
  end
end
