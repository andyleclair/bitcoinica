module Bitcoinica
  class Quote < Bitcoinica::Connection
    self.element_name = 'quotes'

    class << self
      def ticker(currency_pair = 'BTCUSD')
        find(currency_pair)
      end

      def history(currency_pair = 'BTCUSD', n = 100)
        find(:all, from: "#{currency_pair}/history.json", n: n)
      end

      def exchange_style(currency_pair = 'BTCUSD')
        find(:all, from: "#{currency_pair}/compatible.json")
      end
    end
  end
end
