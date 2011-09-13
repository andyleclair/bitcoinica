module Bitcoinica
  class Candlesticks < Bitcoinica::Connection
    self.element_name = 'candlesticks'

    class << self
      def candlesticks(currency_pair, period, n = 100)
        find(currency_pair, period: period, n: n)
      end
    end
  end
end
