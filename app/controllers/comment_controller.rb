class CommentController < ApplicationController
    before_action :find_all_gossips, only: [:index, :show]
    
    def index
    end
    
    def show
        @comment = Comment.new
        @gossip = Gossip.find(params[:id])
        @comments = @gossip.comments
    end
    
    def create
        @gossip = Gossip.find(comment_params[:gossip_id])
        @comment = @gossip.comments.create(:content => comment_params[:content])
        redirect_to comment_show_path(comment_params[:gossip_id])
    end
    
    private
    def find_all_gossips
        @gossips = Gossip.all
    end
    
    
    def comment_params
        params.require(:comment).permit(:content, :gossip_id)
    end
end