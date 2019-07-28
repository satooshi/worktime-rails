class CreateCompany < ActiveRecord::Migration[5.2]
  def change
    create_table :companies, id: :uuid do |t|
      t.string :name, null: false
    end

    create_table :employments, id: :uuid do |t|
      t.references :company, null: false, type: :uuid
      t.references :user, null: false, type: :uuid
    end

    add_index :employments, %i(company_id user_id), unique: true
    add_foreign_key :employments, :companies, on_delete: :cascade
    add_foreign_key :employments, :users, on_delete: :cascade
  end
end
