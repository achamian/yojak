# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_yojak_session',
  :secret      => '109d2f8c40bc666cb3c5aa3431fc41c660c5094c90ec15a158cd01b617d4833fa8114378f0445732dc2c21297b7aa28de0317603aaf2e083cb4b9d6686151626'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
