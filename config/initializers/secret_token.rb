# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
PBackend::Application.config.secret_key_base = '3312bd0f0de7106e242f24d2c447b3cd194adc888c4011cfe56a5177bcd4b077b436c071af4d1e5cce33940f75bb9316fd8296b5236226650509c8fc308e66d0'
