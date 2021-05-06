class CreateStrolls < ActiveRecord::Migration[6.1]
  def change
    create_table :strolls do |t|
      t.datetime :date
      t.string :place
      t.belongs_to :dog, index: true
      t.belongs_to :dogsitter, index: true 
      t.belongs_to :city
      
      t.timestamps
    end
  end
end
