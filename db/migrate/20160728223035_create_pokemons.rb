class CreatePokemons < ActiveRecord::Migration
  def change
    create_table :pokemons do |t|
      t.references :user, index: true, foreign_key: true
      t.references :catalog, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
