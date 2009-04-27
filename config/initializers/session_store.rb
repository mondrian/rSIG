# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_tb2009_session',
  :secret      => 'be75a8866c97da23b175f4d183e1a097bb5a25d675b4c3baa2581fb1cecfcbf5b8ee1d2e8c2858242564b6b24292710597314d7471a3695c4ee8eedd9ff1a2ac'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
