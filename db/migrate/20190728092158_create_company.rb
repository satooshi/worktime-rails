class CreateCompany < ActiveRecord::Migration[5.2]
  def change
    create_table :companies, id: :uuid do |t|
      t.string :name, null: false
    end

    create_table :employment, id: :uuid do |t|
      t.references :company, null: false, type: :uuid, foreign_key: true
      t.references :user, null: false, type: :uuid, foreign_key: true
    end

    add_index :employment, %i(company_id user_id), unique: true
  end
end
