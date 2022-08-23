class CreateMicropostDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :micropost_details do |t|
      t.text :content
      t.integer :micropost_id

      t.timestamps
    end
  end
end
