module Bitcoinica
  class Position < Bitcoinica::Connection
    self.element_name = 'positions'

    class << self
      def active(n = 100)
        find(:all, from: :active, n: 100)
      end
    end
  end
end
