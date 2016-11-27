class CreateBids < ActiveRecord::Migration[5.0]
  def change
    create_table :bids do |t|
    	t.integer :amount
    	t.string :user_id
    	t.string :product_id
    	t.string :email

      t.timestamps
    end
  end
end
