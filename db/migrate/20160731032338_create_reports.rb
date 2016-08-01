class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.text :information
      t.string :picture
      t.references :user, index: true, foreign_key: true
      t.references :catalog, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
