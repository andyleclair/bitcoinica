module Bitcoinica
  class Account < Bitcoinica::Connection
    self.element_name = 'account'

    class << self
      def account
        find(:one, from: "#{self.site}/account.json")
      end
    end
  end
end
