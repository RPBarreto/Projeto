class CreateCuriosidades < ActiveRecord::Migration
  def change
    create_table :curiosidades do |t|
    	t.string  :text,  :limit => 400
      t.timestamps
    end
  end
end
