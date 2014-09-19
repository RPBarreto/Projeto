class CreateTurmas < ActiveRecord::Migration
  def change
    create_table :turmas do |t|
      t.string :ano
      t.string :curso

      t.timestamps
    end
  end
end
