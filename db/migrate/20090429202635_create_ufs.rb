class CreateUfs < ActiveRecord::Migration
  def self.up
    create_table :ufs do |t|
      t.string :uf
      t.string :descricao

      t.timestamps
    end
  end

  def self.down
    drop_table :ufs
  end
end
