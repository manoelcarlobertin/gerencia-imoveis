module Admin
  class PropertyStandardItemsController < BaseController
    before_action :load_propert_standard_item, only: [ :edit, :update, :destroy ]

    def index
      @propert_standard_items = PropertyStandardItem.order(:name)
    end

    def new
      @propert_standard_item = PropertyStandardItem.new
    end

    def create
      @propert_standard_item = PropertyStandardItem.new(propert_standard_item_params)

      if @propert_standard_item.save
        redirect_to admin_propert_standard_items_path, notice: "Situação do Imóvel criado com sucesso."
      else
        render :new, status: :unprocessable_entity
      end
    end

    def edit
    end

    def update
      if @propert_standard_item.update(propert_standard_item_params)
        redirect_to admin_propert_standard_items_path, notice: "Situação do Imóvel atualizado com sucesso."
      else
        render :edit, status: :unprocessable_entity
      end
    end

    def destroy
      @propert_standard_item.destroy
      redirect_to admin_propert_standard_items
      @propert_standard_item = PropertyStandardItem.find params[:id]
    end

    def propert_standard_item_params
      params.require(:propert_standard_item).permit(:name)
    end
  end
end
