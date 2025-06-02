class ChangeAddressToNullInUsers < ActiveRecord::Migration[7.2]
  def change
    change_column_null :users, :address, false
  end
end
