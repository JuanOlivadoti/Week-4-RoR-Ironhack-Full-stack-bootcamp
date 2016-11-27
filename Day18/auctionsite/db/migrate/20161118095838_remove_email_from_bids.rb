class RemoveEmailFromBids < ActiveRecord::Migration[5.0]
  def change
    remove_column :bids, :email, :string
  end
end
