class CreateJobstrs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobstrs do |t|
      t.string :name
      t.string :proficiency
      t.references :post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
