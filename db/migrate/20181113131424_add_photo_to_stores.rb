class AddPhotoToStores < ActiveRecord::Migration[5.2]
  def change
    add_column :stores, :photo, :string
  end
end
