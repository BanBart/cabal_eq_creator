module Requests
  module JsonHelpers
    def json
      @json ||= JSON.parse(response.body, symbolize_names: true)
    end
  end

  module AuthenticationHelpers
    def http_authentication
      usr = ENV["BASIC_AUTH_USERNAME"]
      psw = ENV["BASIC_AUTH_PASSWORD"]
      ActionController::HttpAuthentication::Basic.encode_credentials usr, psw
    end

    def http_basic_authentication_header version=1, basic_auth = true
      http_basic = basic_auth ? http_authentication : nil
      { "HTTP_AUTHORIZATION" => http_basic, "Accept" => "version=#{version}" }
    end

  end
end