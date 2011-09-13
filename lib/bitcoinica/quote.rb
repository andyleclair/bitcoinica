module Bitcoinica
  class Quote < Bitcoinica::Connection
    self.element_name = 'quotes'

    class << self
      def ticker(currency_pair = 'BTCUSD')
        find(currency_pair)
      end

      def history(currency_pair = 'BTCUSD', n = 100)
        if n > 1000 || n < 0
          raise ArgumentError, 'Length of history must be 0 < n 100'
        end
        find(:all, from: "#{self.site}/quotes/#{currency_pair}/history.json", params: { n: n })
      end

      def exchange_style(currency_pair = 'BTCUSD')
        find(:all, from: "#{self.site}/quotes/#{currency_pair}/compatible.json")
      end

    end
  end
end
