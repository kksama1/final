class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :title
      t.text :body
      t.references :leaved_user, null: false, foreign_key: { to_table: :users }
      t.references :belongs_user, null: false, foreign_key: { to_table: :users}


      t.timestamps
    end

    add_foreign_key :comments, :users, column: :leaved_user_id
    add_foreign_key :comments, :users, column: :belongs_user_id
  end
end
