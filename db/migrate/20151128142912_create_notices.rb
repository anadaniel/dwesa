class CreateNotices < ActiveRecord::Migration
  def change
    create_table :notices do |t|
      t.string :description
      t.text :details
      t.integer :checkpoint_id
      t.string :category
      t.datetime :expiry_date

      t.timestamps null: false
    end
  end
end
