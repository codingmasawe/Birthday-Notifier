class CreateContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|
      t.string :name
      t.date :birthdate
      t.boolean :gift

      t.timestamps
    end
  end
end
