class CreateBoxes < ActiveRecord::Migration
  def change
    create_table :boxes do |t|
      t.string      :name, null: false
      t.references  :user

      t.timestamps null: false
    end
  end
end
