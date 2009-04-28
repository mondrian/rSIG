require 'test_helper'

class ExpedicaoTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "teste de validacoes" do
    c = Expedicao.new
    assert !c.save
  end
end
