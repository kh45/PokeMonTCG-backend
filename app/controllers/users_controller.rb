class UsersController < ApplicationController

     def index
        users = User.all
        render json: users.to_json(to_serialized_json)
     end
    
    def show
        user = User.find(params[:id])
        render json: user.to_json(to_serialized_json)
    end


    private

    def to_serialized_json
        {
    :include => {:decks => {
        :include => {:cards => {
            :except => [:created_at, :updated_at]
        }},
        :except => [:created_at, :updated_at]
    }
}, :except => [:created_at, :updated_at]
}
    end
end
