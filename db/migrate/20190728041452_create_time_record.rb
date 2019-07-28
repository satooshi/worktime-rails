class CreateTimeRecord < ActiveRecord::Migration[5.2]
  def change
    create_table :time_records, id: :uuid do |t|
      t.string :type, null: false # STI
      t.references :user, null: false, type: :uuid
      t.datetime :start_at, null: false
      t.datetime :end_at

      t.timestamps null: false
    end

    add_index :time_records, %i(start_at end_at)
    add_foreign_key :time_records, :users, on_delete: :cascade
  end
end
