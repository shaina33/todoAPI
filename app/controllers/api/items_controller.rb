class Api::ItemsController < ApiController
    before_action :authenticated?
    
    def index
        items = Item.where("list_id":params[:list_id])
        render json: items, each_serializer: ItemSerializer
    end
    
    def show
        begin
            item = Item.find(params[:id])
            render json: item
        rescue ActiveRecord::RecordNotFound
            render :json => {}, :status => :not_found
        end
    end
    
    def create
        if params["item"]
            params["item"]["list_id"] = params["list_id"]
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
    
    def update
        item = Item.find(params[:id])
        if item.update(item_params)
            render json: item
        else
            render json: { errors: item.errors.full_messages }, status: :unprocessable_entity
        end
    end
    
    private
    def item_params
        params.require(:item).permit(:description, :priority, :list_id, :completed)
    end
    
end