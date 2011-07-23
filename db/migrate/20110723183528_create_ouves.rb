class CreateOuves < ActiveRecord::Migration
  def self.up
    create_table :ouves do |t|
      t.string :titulo
      t.text :ideia
      t.references :municipio
      t.references :ministerio

      t.timestamps
    end
  end

  def self.down
    drop_table :ouves
  end
end
