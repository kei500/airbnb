require 'http'
require 'mechanize'

module Airbnb
  class Base
    URL = 'https://api.airbnb.com'.freeze

    class << self
      private

      def client_id
        @@client_id ||= JSON.parse(
          Mechanize.new.get("https://www.airbnb.com").search(:meta).select{|e| e['id'] == '_bootstrap-layout-init'}.first.get_attribute(:content)
        )['api_config']['key']
      end
    end
  end
end
