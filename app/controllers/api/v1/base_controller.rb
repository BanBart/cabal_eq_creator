module Api
  module V1
    class BaseController < ApplicationController
      before_action :http_basic_authenticate

      def http_basic_authenticate
        authenticate_or_request_with_http_basic do |name, password|
          name == ENV["BASIC_AUTH_USERNAME"] && password == ENV["BASIC_AUTH_PASSWORD"]
        end
      end
    end
  end
end