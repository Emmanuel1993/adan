class CreateRepresentantes < ActiveRecord::Migration
  def change
    create_table :representantes do |t|
      t.integer :num
      t.string :nombre
      t.string :partido
      t.string :eleccion
      t.string :estado
      t.string :camara
      t.string :propietario
      t.string :twitter
      t.string :youtube
      t.string :facebook
      t.string :paginapersonal
      t.string :twitteravatar

      t.timestamps
    end
  end
end
