require 'http'
require 'mechanize'

module Airbnb
  class Base
    class << self
      def post(endpoint, params)
        params[:form][:client_id] = client_id
        HTTP.post(endpoint, params)
      end

      private

      def client_id
        @@client_id ||= JSON.parse(
          Mechanize.new.get("https://www.airbnb.com").search(:meta).select{|e| e['id'] == '_bootstrap-layout-init'}.first.get_attribute(:content)
        )['api_config']['key']
      end
    end
  end
end
