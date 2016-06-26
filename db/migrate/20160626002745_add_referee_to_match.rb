class AddRefereeToMatch < ActiveRecord::Migration
  def change
    add_column :matches, :referee, :string
  end
end
