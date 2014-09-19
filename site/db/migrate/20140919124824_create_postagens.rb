class CreatePostagens < ActiveRecord::Migration
  def change
    create_table :postagens do |t|
      t.string :text
      t.string :arquivos
      t.usuario :has_many
      t.string :tipo

      t.timestamps
    end
  end

   validates :text, :arquivos, :has_may, :tipo presence :true
   validates :text, :arquivos, :tipo length: {minimum : 4}
   
end