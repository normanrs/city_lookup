# City Lookup

This is a simple API created as an exercise to compare coding frameworks. My intention is to write this API as functionally identical in Rails, Sinatra, and then Node/Express. I'll then compare them in the following ways:

1. How many files does each take to get the job done?
2. Is there a response-time difference when local calls are made?
3. How many dependencies (gems/packages) are required?
4. Which framework did I enjoy coding in the most?

# Functionality

The API will have two endpoints:
1. /zipcode: supply a zip code, get returned data
2. /city_state: supply city and state, get all the zip codes associated

# Dependencies
- Ruby 2.6.6
- Bundler 2.2.7
- A local PostgreSQL database server (I used DBngin)
