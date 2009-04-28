require 'test_helper'

class GrupoTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "teste de validacoes" do
    c = Grupo.new
    assert !c.save
  end
end
