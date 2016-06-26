class AddResultadoToMatch < ActiveRecord::Migration
  def change
    add_column :matches, :resultado, :string
  end
end
