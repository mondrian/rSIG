require 'test_helper'

class MinutaTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "teste basico de validacao" do
    m = Minuta.new
    assert !m.save
  end

  test "relacao minuta com itens" do 
    m = Minuta.new
    for i in 1..10
      i = ItensMinuta.new
      m.itens_minutas << i
    end
    assert (m.itens_minutas.size > 0)
  end
end
