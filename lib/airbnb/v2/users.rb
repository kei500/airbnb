module Airbnb
  class V2::Users < Base
    class << self
      def show(id)
        get("#{Airbnb::V2::URL}/users/#{id}")
      end
    end
  end
end
