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
    new_gossip.user = User.all.find_by(first_name: "anonymous")
    if new_gossip.save
      redirect_to "/"
    else
      render "/gossips/new"
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
