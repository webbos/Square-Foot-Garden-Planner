# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_squarefootplanner_session',
  :secret      => '97b2a4aa5536f3bbfce24f5d042558bdbb46123c199b06f92048e7852eda07868e2cd129a3fe7e9d6de7d149c6fae911aad9a74f02787c9b83fa7a7b095ee921'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
