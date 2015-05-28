module Codecreep
  class User < ActiveRecord::Base
  end

end

# api to get a single user, put in db

# Put 10 users in db
# go through each and put their followers
# for each follower put all they follow

  # for duplicates: USer.first_or_create(user info)
  #   or User.find_or_create_by(user info)
