Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'LqXsFRRSuevJTgvRHQ', 'OimavMsW4NCuLgkWB7Fz5GrnS0RNzGhk9krCmJVZ8I'
end


# provider :twitter, 'Consumer Key', 'Consumer Secret'