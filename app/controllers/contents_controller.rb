class ContentsController < ApplicationController

    def show 
        content = Content.find_by(id: params[:id])
        render json: content
    end 

    def update
        content = Content.find_by(id: params[:id])
        content.update(youtube: params[:youtube])
        render json: content
    end
end
