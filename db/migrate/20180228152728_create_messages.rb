class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.text :mensaje_user_one
      t.text :mensaje_user_two

      t.integer :user_one_id, index: true, foreign_key: true
			t.integer :user_two_id, index:true, foreign_key: true 
			t.timestamps
		end
		add_foreign_key :matches, :users, column: :user_one_id 
		add_foreign_key :matches, :users, column: :user_two_id
  end
end
