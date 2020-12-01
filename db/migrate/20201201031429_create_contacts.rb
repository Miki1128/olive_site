class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.string :country, null: false
      t.string :fullname, null: false
      t.string :mail, null: false
      t.string :tel, null: false
      t.string :buget, null: false
      t.string :shooting_start_at_date, null: false
      t.string :shooting_time_duration, null: false
      t.text   :comment
      t.timestamps
    end
  end
end
