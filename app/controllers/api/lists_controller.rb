class Api::ListsController < ApiController
    before_action :authenticated?
    
    def create
        if params["list"]
            params["list"]["user_id"] = params["user_id"]
            list = List.new(list_params)
            if list.save
                render json: list
            else
                render json: { errors: list.errors.full_messages }, status: :unprocessable_entity
            end
        else
            render json: { error: "List attributes missing. list['name'] is required." }, status: :unprocessable_entity
        end
    end
    
    def destroy
        begin
            list = List.find(params[:id])
            list.destroy
            render json: {}, status: :no_content
        rescue ActiveRecord::RecordNotFound
            render :json => {}, :status => :not_found
        end
    end
    
    private
    def list_params
        params.require(:list).permit(:name, :user_id)
    end

end