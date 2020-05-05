class TweetsController< ApplicationController
    def index
        @tweets=Tweet.all.order(updated_at: "DESC").page(params[:page]).per(5)
    end

    def new
        unless user_signed_in?
            redirect_to action: :index      
        end
    end

    def create

        Tweet.create(
            title:params[:title],
            comment:params[:note],
            user_id:current_user.id
        )
    end

    def destroy
        deletetweet=Tweet.find(params[:id])
        if current_user.id == deletetweet.user_id
            deletetweet.destroy
        end       
    end
    
    def edit
        @tweet=Tweet.find(params[:id])     
    end
    
    def update
        edittweet=Tweet.find(params[:id])
        if current_user.id == edittweet.user_id
            edittweet.update(title:params[:title],comment:params[:note])
        end       
    end
    

end
