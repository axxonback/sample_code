class CreateLovers < ActiveRecord::Migration
  def change
    create_table :lovers do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
