$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'pry'

require 'codecreep/init_db'
require 'codecreep/github'
require "codecreep/version"
require "codecreep/user"

module Codecreep
  class App

    def initialize
      @github = Github.new
      # @user = User.new
    end

    def create_user(names)
      names = ["lucastadeu", "JSansalone", "bsmr", "equus12", "soemraws",
               "omouse", "EuAndreh", "samebchase", "capitaomorte", "WebEpic"]
      names.each do |name|
        User.create(name: name, homepage: nil, company: nil, follower_count: nil,
        following_count: nil, repo_count: nil)

      end
      # Codecreep::App.User.find_or_create_by(name: 'lucastadeu')
    end
  # user.create(lblah,blah,blah)
  end
end




binding.pry

# fetch method  stick info into data base
# analyze method  prints data
