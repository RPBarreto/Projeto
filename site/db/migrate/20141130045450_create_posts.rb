class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :conteudo
      t.string :data
      t.string :usuario

      t.timestamps
    end
  end
end
