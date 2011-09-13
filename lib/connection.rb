module Bitcoinica
  class Connection < ActiveResource::Base
      self.site = 'https://www.bitcoinica.com/api/'
      self.format = :json
      self.timeout = 5
  end
end
