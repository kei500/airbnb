require 'json'

module Airbnb
  class V1 < Base
    URL = "#{Airbnb::Base::URL}/v1".freeze

    class << self
      def authorize(params)
        post("#{Airbnb::V1::URL}/authorize", form: params)
      end
    end
  end
end
