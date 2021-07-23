require 'bundler'
Bundler.require

require 'csv'

require_relative 'lib/router.rb'


Router.new.perform

#   def destroy
#     all_gossips = CSV.table('db/gossip.csv')
#     all_gossips.delete_at(0)
#   end

#   tab = ["pos_0", "pos_1", "pos_2"]




  