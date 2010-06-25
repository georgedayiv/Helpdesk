# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_Helpdesk_session',
  :secret      => '2d074300a8eb33c94d179f7ac5e44027625982f47b688b971ceeb9b4cb7f14daace94e2015e216a324499bb8858d9afdbfbd67ccfe97415f0066058ee82f6d3d'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
