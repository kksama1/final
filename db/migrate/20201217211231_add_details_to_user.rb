class AddDetailsToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :username, :string
    add_column :users, :about, :string
    add_column :users, :work_exp, :string
    add_column :users, :phone_numb, :integer
  end
end
