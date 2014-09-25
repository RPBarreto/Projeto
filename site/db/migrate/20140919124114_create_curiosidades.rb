class CreateCuriosidades < ActiveRecord::Migration
  def change
    create_table :curiosidades do |t|
      t.belongs_to :elemento
      t.string :text

      t.timestamps
    end
  end
end
