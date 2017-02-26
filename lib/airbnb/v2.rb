require 'json'

module Airbnb
  class V2 < Base
    URL = "#{Airbnb::Base::URL}/v2".freeze
  end
end
