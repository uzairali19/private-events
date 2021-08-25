class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.text :event
      t.datetime :date

      t.timestamps
    end
  end
end
