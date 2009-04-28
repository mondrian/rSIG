require 'test_helper'

class NotafiscalTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "teste basico de validacao" do
    nf = NotaFiscal.new
    assert !nf.save
  end
end
