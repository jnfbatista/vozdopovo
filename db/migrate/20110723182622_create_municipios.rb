class CreateMunicipios < ActiveRecord::Migration
  def self.up
    create_table :municipios do |t|
      t.string :nome
      t.string :coordenadas

      t.timestamps
    end
  end

  def self.down
    drop_table :municipios
  end
end
