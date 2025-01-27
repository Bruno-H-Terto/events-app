class ChangeLenghtToLength < ActiveRecord::Migration[8.0]
  def change
    rename_column :schedule_items, :lenght, :length
  end
end
