module Airbnb
  class V2::Users < Base
    class << self
      def show(id)
        response = HTTP.get("#{Airbnb::V2::URL}/users/#{id}", params: { client_id: client_id })
        JSON.parse(response.to_str)
      end
    end
  end
end
