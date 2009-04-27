require 'test_helper'

class AreaTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "teste basico de validacao" do
    a = Area.new
    assert !a.save
  end
end
