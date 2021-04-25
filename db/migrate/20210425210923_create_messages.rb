class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.integer :addressee
      t.string :text

      t.timestamps
    end
  end
end
