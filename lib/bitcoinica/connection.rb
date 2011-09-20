module Bitcoinica
  class Connection < ActiveResource::Base
      self.site = 'https://www.bitcoinica.com/api/'
      self.format = :json
      self.timeout = 5
      self.include_root_in_json = false

      class << self
        def authenticate!(username, password)
          self.user     = username
          self.password = password
        end
      end
  end
end
