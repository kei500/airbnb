module Airbnb
  class V2::Listings < Base
    class << self
      def show(id)
        HTTP.get("#{Airbnb::V2::URL}/listings/#{id}", params: { _format: 'v1_legacy_for_p3', client_id: client_id })
      end
    end
  end
end
