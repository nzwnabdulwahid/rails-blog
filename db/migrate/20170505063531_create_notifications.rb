class CreateNotifications < ActiveRecord::Migration[5.0]
  def change
    create_table :notifications do |t|
      t.references :notifiable, polymorphic: true

      t.timestamps
    end
  end
end
