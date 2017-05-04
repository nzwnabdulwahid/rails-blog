class CreateModerators < ActiveRecord::Migration[5.0]
  def change
    create_table :moderators do |t|
      t.string :fullname
      t.string :username
      t.string :password_digest

      t.timestamps
    end
  end
end
