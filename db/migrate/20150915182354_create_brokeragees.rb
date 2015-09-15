class CreateBrokeragees < ActiveRecord::Migration
  def change
    create_table :brokeragees do |t|
      t.string :name
      t.string :client_id

      t.timestamps null: false
    end
  end
end
