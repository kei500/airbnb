module Airbnb
  class V2::Users < Base
    class << self
      def show(id)
        HTTP.get("#{Airbnb::V2::URL}/users/#{id}", params: { client_id: client_id })
      end
    end
  end
end
