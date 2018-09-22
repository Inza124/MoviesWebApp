class AddUserIdToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :user_od, :integer
  end
end
