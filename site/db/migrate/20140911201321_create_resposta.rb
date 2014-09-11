class CreateResposta < ActiveRecord::Migration
  def change
    create_table :resposta do |t|
    	 t.integer  :post, :limit => 12
         t.string  :texto,  :limit => 400
         t.string  :autor
         t.timestamps
      t.timestamps
    end
  end
end
