class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.text :description
      t.integer :year_founded

      t.timestamps null: false
    end
  end
end
