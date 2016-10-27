class CommentsController < ApplicationController
    def index
    end
    
    def show
    end
    
    def create
        @comment = Comment.new(comment_params)
            
        if  @comment.save
            # コメントが保存されたらコメントが投稿されたページにリダイレクトさせる
            redirect_to customer_path(@comment.customer_id)
        else
            # customer_idに紐づくコメントを探して、@customerに代入
            @customer = Customer.find(@comment.customer_id)
            # @customer に紐づくコメントを@commentに代入
            @comments = @customer.comments
            render template: "customers/show"
        end
    end
    
    def edit
    end
    
    def update
    end
    
    def destroy
        @comment = Comment.find(params[:id])
        # @commentがdestroyされる前に、commentが誰のものかを変数に保存する
        customer_id = @comment.customer_id
        @comment.destroy
        # さっき保存したcustomer_idをここで使う
        redirect_to customer_path(customer_id)
    end
    
    private
    
    def comment_params
        params.require(:comment).permit(:body, :customer_id)
    end
    
end
