# OmniAuth Remotelock OAuth2 Strategy

Strategy to authenticate with RemoteLock via OAuth2 in OmniAuth.

Get your API key at: https://developer.remotelock.com  Note the Client ID and the Client Secret.

For more details, read the RemoteLock docs: https://developer.remotelock.com/api/docs

## Installation

Add to your `Gemfile`:

```ruby
gem 'omniauth-remotelock-oauth2', github: 'viktor-shmigol/omniauth-remotelock-oauth2'
```

Then `bundle install`.

## Usage

Here's an example for adding the middleware to a Rails app in `config/initializers/omniauth.rb`:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :remotelock, ENV['REMOTELOCK_CLIENT_ID'], ENV['REMOTELOCK_CLIENT_SECRET']
end
OmniAuth.config.allowed_request_methods = %i[get]
```

You can now access the OmniAuth Remotelock OAuth2 URL: `/auth/remotelock`

## License

[MIT](LICENSE)
