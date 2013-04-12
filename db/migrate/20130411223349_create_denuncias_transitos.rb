class CreateDenunciasTransitos < ActiveRecord::Migration
  def change
    create_table :denuncias_transitos do |t|
      t.string :numPatrulla
      t.string :numOficial
      t.string :apPaterno
      t.string :apMaterno
      t.string :lugarHecho
      t.string :municipio
      t.string :fecha
      t.string :hora
      t.text :descripcion

      t.timestamps
    end
  end
end
