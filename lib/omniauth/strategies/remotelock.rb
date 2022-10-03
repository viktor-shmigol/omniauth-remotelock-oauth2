# frozen_string_literal: true

require "omniauth-oauth2"

module OmniAuth
  module Strategies
    # Main class for RemoteLock OAuth2 strategy.
    class Remotelock < OmniAuth::Strategies::OAuth2
      option :client_options,
             site: "https://connect.remotelock.com",
             token_url: "oauth/token",
             api_url: "https://api.remotelock.com"

      uid do
        raw_info.dig("data", "id")
      end

      info do
        {
          name: raw_info.dig("data", "attributes", "handle"),
          email: raw_info.dig("data", "attributes", "email")
        }
      end

      extra do
        { raw_info: raw_info }
      end

      def raw_info
        @raw_info ||= access_token.get("#{options.dig(:client_options, :api_url)}/user").parsed
      end

      def callback_url
        full_host + script_name + callback_path
      end
    end
  end
end
