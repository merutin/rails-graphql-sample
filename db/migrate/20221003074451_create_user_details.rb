class CreateUserDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :user_details do |t|
      t.string :memo
      t.string :address
      t.belongs_to :user index: { unique: true }, foreign_key: true

      t.timestamps
    end
  end
end
