require 'test_helper'

class CidadeTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "testando validacoes cidades" do
    c = Cidade.new
    assert !c.save
  end
end
