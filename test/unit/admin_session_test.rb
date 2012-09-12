require 'test_helper'

class AdminSessionTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert AdminSession.new.valid?
  end
end
