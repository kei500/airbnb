require 'http'
require 'json'

module Airbnb
  class V1
    URL = 'https://api.airbnb.com/v1'

    class << self
      def authorize(params)
        HTTP.post("#{URL}/authorize", form: params)
      end
    end
  end
end
