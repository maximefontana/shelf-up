class AddLinkToStore < ActiveRecord::Migration[5.2]
  def change
    add_column :stores, :link, :string
  end
end
