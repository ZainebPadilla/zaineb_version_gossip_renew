class GossipController < ApplicationController
  def index
    @gossip = Gossip.all
  end

  def show
  end
end
