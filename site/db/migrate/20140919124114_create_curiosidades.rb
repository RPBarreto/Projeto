class CreateCuriosidades < ActiveRecord::Migration
  def change
    create_table :curiosidades do |t|
      t.elementos :has_many
      t.string :text

      t.timestamps
    end
  end
end
