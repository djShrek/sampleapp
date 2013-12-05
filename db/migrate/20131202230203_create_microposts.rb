class CreateMicroposts < ActiveRecord::Migration
  def change
    create_table :microposts do |t|
      t.string :content
      t.integer :user_id

      t.timestamps

      
      #creates multiple key index, which means that ActiveRecord uses both keys at the same time
    end

    add_index :microposts, [:user_id, :created_at]
  end
end
