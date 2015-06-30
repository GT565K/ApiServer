# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
PGiServerAPI::Application.config.secret_key_base = 'ce1ae7d87302f66bccd9d164372e627581c3a7e7bd712e004ed17eb1e4417d727c60cce1220cde6b969edf6e395ed46dcb1da11dd0291f9043a569e1533d65b3'
