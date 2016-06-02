class GossipController < ApplicationController
    before_action :find_gossip, only: [:show, :edit, :update, :destroy]
    
    def index
        @gossips = Gossip.all
    end
    
    def show
    end
    
    def destroy
        Gossip.delete(@gossip)
        redirect_to action: "index"
    end
    
    def update
    end
    
    def new
        @gossip = Gossip.new
    end
    
    def edit
    end
    
    def create
        @gossip = Gossip.create(gossip_params)
        if @gossip.save 
            redirect_to action: "index"
        else
            render 'new'
        end
    end
    
    
    private
    def gossip_params
        params.require(:gossip).permit(:content)
    end
    
    def find_gossip
        @gossip = Gossip.find(params[:id])
    end
end
