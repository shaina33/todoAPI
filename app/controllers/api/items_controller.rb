class Api::ItemsController < ApiController
    before_action :authenticated?
    
    def create
        if params["item"]
            params["item"]["list_id"] = params["list_id"]
            if params["item"]["priority"] == nil
                params["item"]["priority"] = "2"
            end
            item = Item.new(item_params)
            if item.save
                render json: item
            else
                render json: { errors: item.errors.full_messages }, status: :unprocessable_entity
            end
        else
            render json: {errors: "Missing item attributes" }, status: :unprocessable_entity
        end
    end
    
    private
    def item_params
        params.require(:item).permit(:description, :priority, :list_id)
    end
    
end