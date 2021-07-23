#require csv
require 'bundler'
Bundler.require
require_relative "gossip"
require_relative "view"

class Controller
 
  def initialize
    @view = View.new
  end

  def create_gossip
    params = @view.create_gossip
    gossip = Gossip.new(params[:author],params[:content])
    gossip.save
    index_gossips
  end

  def index_gossips
    params = Gossip.read_all
    view = @view.index_gossips(params)
  end

  def destroy
    gossip_db_index = @view.destroy
    Gossip.destroy(gossip_db_index)
    index_gossips
  end

end
