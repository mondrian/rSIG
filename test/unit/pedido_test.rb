require 'test_helper'

class PedidoTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "teste basico de validacao" do
    p = Pedido.new
    assert !p.save
  end

  test "relacao com itens" do
    p = Pedido.new
    p.cliente = Cliente.find(:first)
    p.vendedor = Funcionario.find(:first)
    p.transportadora = Transportador.find(:first)
    p.operador = Funcionario.find(:first)
    p.minuta = Minuta.find(:first)
    p.telemarketing = Telemarketing.find(:first)
    p.plano_pagamento = PlanoPagamento.find(:first)
    p.area = Area.find(:first)
    for i in 1..10
       i = ItemPedido.new
       i.produto = Produto.find(:first)
       i.quantidade = i.valor_tabela = i.valor_venda = i.desconto = 3.5
       p.itens << i
    end
    assert (p.itens.size > 0)
  end
end
