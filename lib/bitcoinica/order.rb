module Bitcoinica
  class Order < Bitcoinica::Connection
    self.element_name = 'orders'

    class << self
      def active(n = 100)
        find(:all, from: :active, n: 100)
      end

    end
  end
end
