require 'httparty'
require 'pry'
module Codecreep
  class Github
    include HTTParty
    base_uri 'https://api.github.com'
    basic_auth ENV['GH_USER'], ENV['GH_PASS']
    def followers
      # binding.pry
      self.class.get('/users/redline6561/followers')
    end

    def user
      self.class.get('/users/redline6561')
    end

    def following
      self.class.get('/users/redline6561/following')
    end
  end
end
