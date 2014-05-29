class CreateDenunciaTransitos < ActiveRecord::Migration
  def change
    create_table :denuncia_transitos do |t|
      t.string :nombre
      t.string :ubicacion
      t.string :dependencia
      t.string :estado
      t.string :municipio
      t.date :fecha
      t.text :descripcion

      t.timestamps
    end
  end
end
