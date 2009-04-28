<<<<<<< HEAD:db/schema.rb
ActiveRecord::Schema.define(:version => 20090427230903) do
=======
ActiveRecord::Schema.define(:version => 20090427225739) do
>>>>>>> 84c0e447829df9c1d3fb8871cbc170e47e9321eb:db/schema.rb

  create_table "areas", :force => true do |t|
    t.string   "descricao"
    t.integer  "cidade_id"
    t.integer  "roteiro_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cidades", :force => true do |t|
    t.string   "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clientes", :force => true do |t|
    t.string   "tipo_cliente",               :limit => 1
    t.string   "cpf_cnpj",                   :limit => 14
    t.string   "razao_social"
    t.string   "nome_fantasia"
    t.string   "documento"
    t.string   "endereco"
    t.string   "complemento"
    t.integer  "cidade_id"
    t.integer  "uf_id"
    t.string   "cep"
    t.string   "referencia"
    t.string   "fone_pessoal"
    t.string   "fone_comercial"
    t.string   "fone_celular"
    t.string   "endereco_entrega"
    t.integer  "regiao_entrega_id"
    t.string   "cidade_entrega_id"
    t.string   "area_id"
    t.text     "referencias_bancaria"
    t.text     "referencias_comerciais"
    t.text     "observacao"
    t.text     "info_serasa"
    t.date     "data_nascimento"
    t.string   "nome_comprador"
    t.boolean  "vendas_suspensas"
    t.text     "observacao_suspensao_venda"
    t.decimal  "limite_credito",                           :precision => 12, :scale => 2
    t.decimal  "saldo_devedor",                            :precision => 12, :scale => 2
    t.string   "status"
    t.integer  "prazo_medio_maximo"
    t.date     "data_inclusao_prazo_medio"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cores", :force => true do |t|
    t.string   "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "expedicoes", :force => true do |t|
    t.integer  "minuta_id"
    t.integer  "produto_id"
    t.string   "numero_do_volume"
    t.decimal  "qtd_carregada"
    t.decimal  "qtd_minuta"
    t.boolean  "vidro"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "funcionarios", :force => true do |t|
    t.string   "tipo",                     :limit => 1
    t.string   "nome"
    t.string   "endereco"
    t.string   "complemento"
    t.string   "cep"
    t.integer  "cidade_id"
    t.string   "uf"
    t.string   "fone"
    t.string   "cpf"
    t.string   "rg"
    t.string   "pai"
    t.string   "mae"
    t.string   "numero_carteira_trabalho"
    t.string   "serie_carteira_trabalho"
    t.string   "titulo_eleitor"
    t.string   "zona_eleitoral"
    t.date     "admissao"
    t.date     "registro"
    t.date     "nascimento"
    t.string   "naturalidade"
    t.string   "estado_civil"
    t.string   "grau_instrucao"
    t.date     "cadastro_pis"
    t.string   "numero_pis"
    t.string   "cod_banco_pis"
    t.string   "nome_banco_pis"
    t.string   "cod_agencia_pis"
    t.string   "nome_agencia_pis"
    t.string   "endereco_banco_pis"
    t.date     "demissao"
    t.text     "observacao"
    t.text     "aci"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "grupos", :force => true do |t|
    t.string   "descricao"
    t.decimal  "margem_lucro"
    t.boolean  "unificado"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "item_pedidos", :force => true do |t|
    t.integer  "kit_id"
    t.decimal  "quantidade"
    t.decimal  "valor_tabela"
    t.decimal  "valor_venda"
    t.decimal  "desconto"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "itens_minutas", :force => true do |t|
    t.integer  "produto_id"
    t.integer  "qtde"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "itensnotasfiscais", :force => true do |t|
    t.integer  "numero_nota"
    t.integer  "produto_id"
    t.string   "unidade_medida"
    t.decimal  "quantidade"
    t.decimal  "valor_item_faturado"
    t.decimal  "valor_item_original"
    t.string   "situacao_tributaria_item"
    t.decimal  "percentual_icms_item"
    t.decimal  "percentual_ipi_item"
    t.decimal  "peso_liquido"
    t.integer  "cod_emissao_nf"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "meta_produtos", :force => true do |t|
    t.integer  "mes"
    t.integer  "ano"
    t.integer  "qdt_dias_uteis"
    t.date     "data_ini"
    t.date     "data_fim"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "minutas", :force => true do |t|
    t.date     "data"
    t.date     "fechamento"
    t.integer  "operador_fechamento_id"
    t.date     "saida"
    t.text     "obs"
    t.integer  "veiculo_id"
    t.date     "fechamento_financeiro"
    t.integer  "funcionario_fechamento_financeiro_id"
    t.integer  "roteiro_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "notasfiscais", :force => true do |t|
    t.integer  "numero_nota"
    t.integer  "numero_pedido_id"
    t.string   "numero_selo"
    t.string   "numero_serie"
    t.string   "cliente_id"
    t.date     "emissao"
    t.string   "cfop"
    t.string   "natureza_operacao"
    t.string   "status"
    t.integer  "qtde_volumes"
    t.datetime "entrada"
    t.datetime "saida"
    t.integer  "transportadora_id"
    t.text     "observacao"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "valor_icms",                                :precision => 12, :scale => 2
    t.decimal  "valor_ipi",                                 :precision => 12, :scale => 2
    t.decimal  "valor_desconto",                            :precision => 12, :scale => 2
    t.decimal  "valor_acrescimo",                           :precision => 12, :scale => 2
    t.decimal  "valor_icms_substituicao_tributaria",        :precision => 12, :scale => 2
    t.decimal  "valor_frete",                               :precision => 12, :scale => 2
    t.decimal  "total_nota",                                :precision => 12, :scale => 2
    t.decimal  "total_mercadoria",                          :precision => 12, :scale => 2
    t.decimal  "base_calculo_icms",                         :precision => 12, :scale => 2
    t.decimal  "base_calculo_icms_substituicao_tributaria", :precision => 12, :scale => 2
    t.decimal  "percentual_icms",                           :precision => 6,  :scale => 2
    t.decimal  "percentual_icms_substituicao_tributaria",   :precision => 6,  :scale => 2
    t.decimal  "percentual_desconto",                       :precision => 6,  :scale => 2
  end

  create_table "pedidos", :force => true do |t|
    t.boolean  "oficial"
    t.date     "data"
    t.date     "previsao_entrega"
    t.date     "entrega"
    t.date     "programacao"
    t.integer  "cliente_id"
    t.decimal  "valor",                   :precision => 8, :scale => 2
    t.decimal  "preco_tabela",            :precision => 8, :scale => 2
    t.decimal  "acrescimo",               :precision => 3, :scale => 2
    t.decimal  "desconto",                :precision => 3, :scale => 2
    t.integer  "transportadora_id"
    t.string   "nome_comprador"
    t.text     "observacao"
    t.integer  "vendedor_id"
    t.integer  "operador_id"
    t.integer  "telemarketing_id"
    t.integer  "plano_pagamento_id"
    t.string   "endereco_entrega"
    t.integer  "minuta_id"
    t.integer  "area_id"
    t.boolean  "preco_especial"
    t.string   "status"
    t.date     "estorno"
    t.integer  "funcionario_estorno_id"
    t.decimal  "comissao_vendedor",       :precision => 3, :scale => 2
    t.decimal  "comissao_telemarketing",  :precision => 3, :scale => 2
    t.boolean  "venda_externa"
    t.decimal  "desconto_complementar",   :precision => 3, :scale => 2
    t.integer  "autorizador_desconto_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "produtos", :force => true do |t|
    t.string   "descricao"
    t.integer  "cor_id"
    t.decimal  "valor_especial"
    t.decimal  "valor_normal"
    t.integer  "classe_id"
    t.integer  "grupo_id"
    t.boolean  "status"
    t.integer  "situacao_tributaria"
    t.decimal  "preco_minimo_nota_fiscal"
    t.decimal  "ipi"
    t.integer  "classificacao_fiscal"
    t.integer  "peso_liquido"
    t.integer  "cod_emissao_nota_fiscal"
    t.string   "descricao_nota_fiscal"
    t.decimal  "preco_normal_zona1"
    t.decimal  "preco_especial_zona1"
    t.integer  "funcionario_id"
    t.boolean  "emissao_relatorio"
    t.decimal  "custo"
    t.date     "cadastro_custo"
    t.boolean  "kit"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "regioes", :force => true do |t|
    t.string   "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roteiros", :force => true do |t|
    t.string   "descricao"
    t.integer  "funcionario_id"
    t.integer  "regiao_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
