class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title, null: false, default: 'Default Title'
      t.timestamps
    end
  end
end
