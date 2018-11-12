class QuestionsController < ApplicationController
    def create
        @question = Question.create(questions_params) 
        @question.id = Question.last.id + 1
        redirect_to root_path
    end

    def show
        @question = Question.find(params[:id])
    end

    private
    def questions_params
        params.require(:question).permit(:email,:body)
    end
end
