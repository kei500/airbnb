module Airbnb
  class V1 < Base
    URL = "#{Airbnb::Base::URL}/v1".freeze

    class << self
      def authorize(params)
        params = { form: params }
        params[:form][:client_id] = client_id
        response = HTTP.post("#{Airbnb::V1::URL}/authorize", params)
        JSON.parse(response.to_str)['access_token']
      end

      def current_user(access_token)
        response = HTTP.headers('X-Airbnb-OAuth-Token' => access_token)
          .get("#{Airbnb::V1::URL}/account/active", params: { client_id: client_id })
        JSON.parse(response.to_str)['user']
      end
    end
  end
end
