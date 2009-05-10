# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_plates_session',
  :secret      => 'c7d48ce1bc37939145a8f44a2dd44fae82d525c40d0d78914b8e5913770793ff1ae6fe0cee0bb366cffd3c1bc592c9eba004228310b760c2bdaceb2f9315adf4'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
