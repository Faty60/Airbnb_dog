class CreateDogs < ActiveRecord::Migration[6.1]
  def change
    create_table :dogs do |t|
      t.string :name
      t.belongs_to :dogsitter, index:true
      t.belongs_to :city

      t.timestamps
    end
  end
end
