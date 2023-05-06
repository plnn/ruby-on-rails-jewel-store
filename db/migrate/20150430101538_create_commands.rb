class CreateCommands < ActiveRecord::Migration
def change
    create_table :commands do |t|
     
	 t.string :person_name  
      t.text :command
      t.string :product_name
      
      t.timestamps
    end
  end
end
