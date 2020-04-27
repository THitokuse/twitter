class TweetsController< ApplicationController
    def index
        @tweets=Tweet.all.order(updated_at: "DESC").page(params[:page]).per(5)
    end

    def new

    end

    def create

        Tweet.create(
            title:params[:title],
            comment:params[:note],
        )


    end
end
