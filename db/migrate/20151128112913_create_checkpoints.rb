class CreateCheckpoints < ActiveRecord::Migration
  def change
    create_table :checkpoints do |t|
      t.string  :name
      t.float   :weight

      t.timestamps null: false
    end
  end
end
