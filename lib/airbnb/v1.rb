require 'json'

module Airbnb
  class V1 < Base
    URL = 'https://api.airbnb.com/v1'

    class << self
      def authorize(params)
        post("#{Airbnb::V1::URL}/authorize", form: params)
      end
    end
  end
end
