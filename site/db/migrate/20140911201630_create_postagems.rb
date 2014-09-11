class CreatePostagems < ActiveRecord::Migration
  def change
    create_table :postagems do |t|
    	
        t.string  :text,  :limit => 400
        t.string  :arquivos
        t.string  :tipo,  :limit => 1
      t.timestamps
    end
  end
end
