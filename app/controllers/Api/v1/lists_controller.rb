module Api::V1
  class ListsController < ApplicationController
    before_action :set_list, only: [:show, :update, :destroy]

    # List
      # listDate
      # family_id

    # GET /lists
    def index
      @lists = List.all
      render json: @lists
    end

    # GET /lists/1
    def show
      render json: @list
    end

    def show_by_date
      @list = List.all.where(date: params[:date], family_id: [:family_id])
      if @list.blank?
        @family = Family.find(params[:family_id])
        @list = @family.lists.build(name: params[:name], date: params[:date], family_id: params[:family_id])
        unless @list.save
          render json: @list.errors, status: :unprocessable_entity
          return
        end
      end
      render json: @list
    end

    # POST /lists
    def create
      @family = Family.find(params[:family_id])
      @list = @family.lists.build(list_params)

      if @list.save
        render json: @list, status: :created, location: @list
      else
        render json: @list.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /lists/1
    def update
      if @list.update(list_params)
        render json: @list
      else
        render json: @list.errors, status: :unprocessable_entity
      end
    end

    # DELETE /lists/1
    def destroy
      @list.destroy
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_list
      @list = List.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def list_params
      params.require(:list).permit(:name, :date, :family_id)
    end
  end
end