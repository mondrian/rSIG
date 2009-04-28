class AlterNumeroNotaToNotaFiscalIdOnItensNotasFiscais < ActiveRecord::Migration
  def self.up
    remove_column :itensnotasfiscais, :numero_nota
    add_column :itensnotasfiscais, :nota_fiscal_id, :integer
  end

  def self.down
    remove_column :internotasfiscais, :nota_fiscal_id
  end
end
