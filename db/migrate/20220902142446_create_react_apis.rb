class CreateReactApis < ActiveRecord::Migration[7.0]
  def change
    create_table :react_apis do |t|
      t.string :firstName
      t.string :lastName
      t.integer :phone
      t.string :gender
      t.string :address
      t.timestamps
    end
  end
end
