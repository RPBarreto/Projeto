class CreateTurmas < ActiveRecord::Migration
  def change
    create_table :turmas do |t|
    	 t.string  :ano, :limit => 4
    	 t.string  :ano, :limit => 50
      t.timestamps
    end
  end
end
