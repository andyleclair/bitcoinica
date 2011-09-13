require 'helper'

class TestQuote < Test::Unit::TestCase

  test 'history with 0 < n 1000 is groovy' do
    assert Bitcoinica::Quote.history('BTCUSD', 69) # heh
  end

  test 'history with bad param raises argument error' do
    begin
      Bitcoinica::Quote.history('BTCUSD', 9001)
    rescue ArgumentError
      assert true
    end
  end
end
