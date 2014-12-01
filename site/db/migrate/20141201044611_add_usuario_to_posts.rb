class AddUsuarioToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :id_usuario, :string
  end
end
