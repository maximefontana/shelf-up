class DropTables < ActiveRecord::Migration[5.2]
  def change
    drop_table :rating_caches
    drop_table :overall_averages
    drop_table :average_caches
  end
end
