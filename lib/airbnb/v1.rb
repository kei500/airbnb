require 'http'

module Airbnb
  class V1 < Base
    URL = "#{Airbnb::Base::URL}/v1".freeze

    class << self
      def authorize(params)
        post("#{Airbnb::V1::URL}/authorize", form: params)
      end

      def current_user(access_token)
        HTTP.headers('X-Airbnb-OAuth-Token' => access_token)
          .get("#{Airbnb::V1::URL}/account/active", params: { client_id: client_id })
      end
    end
  end
end
