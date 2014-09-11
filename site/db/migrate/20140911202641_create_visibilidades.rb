class CreateVisibilidades < ActiveRecord::Migration
  def change
    create_table :visibilidades do |t|

      t.timestamps
    end
  end
end
