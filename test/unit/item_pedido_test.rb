require 'test_helper'

class ItemPedidoTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "teste basico de validacao" do
    ip = ItemPedido.new
    assert !ip.save
  end
end
