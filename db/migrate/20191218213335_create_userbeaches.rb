class CreateUserbeaches < ActiveRecord::Migration[6.0]
  def change
    create_table :userbeaches do |t|
      t.string :name
      t.string :beach_id
      t.string :user_id
      t.timestamps
    end
  end
end
