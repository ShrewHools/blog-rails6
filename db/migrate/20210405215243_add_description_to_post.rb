class AddDescriptionToPost < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :description, :string, null: false, default: 'Default Description'
  end
end
