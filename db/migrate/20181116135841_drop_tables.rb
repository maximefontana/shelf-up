class DropTables < ActiveRecord::Migration[5.2]
  def change
    if ActiveRecord::Base.connection.table_exists? 'rating_caches'
      drop_table :rating_caches
    end

    if ActiveRecord::Base.connection.table_exists? 'overall_averages'
      drop_table :overall_averages
    end

    if ActiveRecord::Base.connection.table_exists? 'average_caches'
      drop_table :average_caches
    end
  end
end
