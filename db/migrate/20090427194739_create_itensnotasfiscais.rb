class CreateItensnotasfiscais < ActiveRecord::Migration
  def self.up
    create_table :itensnotasfiscais do |t|
      t.integer :numero_nota
      t.integer :produto_id
      t.string :unidade_medida
      t.decimal :quantidade
      t.decimal :valor_item_faturado
      t.decimal :valor_item_original
      t.string :situacao_tributaria_item
      t.decimal :percentual_icms_item
      t.decimal :percentual_ipi_item
      t.decimal :peso_liquido
      t.integer :cod_emissao_nf

      t.timestamps
    end
  end

  def self.down
    drop_table :itensnotasfiscais
  end
end
