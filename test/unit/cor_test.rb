require 'test_helper'

class CorTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "teste de validacoes" do
   c = Cor.new
   assert !c.save
  end
end
