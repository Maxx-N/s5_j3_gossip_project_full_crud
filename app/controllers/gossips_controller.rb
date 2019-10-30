class GossipsController < ApplicationController
  def index
  end

  def show
    @my_gossip = Gossip.all.find(params[:id])
  end

  def new
  end

  def create
    new_gossip = Gossip.new
    new_gossip.id = Gossip.all.length + 1
    new_gossip.title = params[:gossip_title]
    new_gossip.content = params[:gossip_content]
    new_gossip.user = User.all.find(rand(1..User.all.length))
    new_gossip.save
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
