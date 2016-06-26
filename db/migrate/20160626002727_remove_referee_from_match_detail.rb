class RemoveRefereeFromMatchDetail < ActiveRecord::Migration
  def change
    remove_column :match_details, :referee, :string
  end
end
