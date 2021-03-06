module Airbnb
  class V2::Listings < Base
    class << self
      def show(id)
        response = HTTP.get("#{Airbnb::V2::URL}/listings/#{id}", params: { _format: 'v1_legacy_for_p3', client_id: client_id })
        JSON.parse(response.to_str)
      end
    end
  end
end
