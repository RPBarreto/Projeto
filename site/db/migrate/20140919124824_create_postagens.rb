class CreatePostagens < ActiveRecord::Migration
  def change
    create_table :postagens do |t|
      t.string :text
      t.string :arquivos
      t.belongs_to :usuario
      t.string :tipo

      t.timestamps
    end
  end   
end
