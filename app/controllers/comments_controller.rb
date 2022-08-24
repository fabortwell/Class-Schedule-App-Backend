class CommentsController < ApplicationController
   before_action :set_comment, only: [:show, :update, :destroy]
   rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
 
  
 
   # GET /comments
   def index
     comments = Comment.all
     render json: comments
   end
 
   # GET /comments/1
   def show
     render json: @comment
   end
 
   # POST /comments
   def create
     comment = Comment.create(comment_params)
       if comment.valid?
         render json: comment, status: :created
       else 
         render json: { errors: comment.errors.full_messages }, status: :unprocessable_entity
       end
   end
 
   # PATCH/PUT /comments/1
   def update
     if @comment.update(comment_params)
       render json: @comment
     else
       render json: @comment.errors, status: :unprocessable_entity
     end
   end
 
   # DELETE /comments/1
   def destroy
     @comment.destroy
   end
 
   private
 
     def set_comment
       @comment = Comment.find(params[:id])
     end
 
     def comment_params
       params.require(:comment).permit(:content, :student_id, :schedule_id, :likes)
     end
 
     def render_unprocessable_entity
       render json: {error: invalid.record.errors}, status: :unprocessable_entity
     end
 
 end