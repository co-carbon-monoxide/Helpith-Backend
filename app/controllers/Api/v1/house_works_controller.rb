module Api::V1
  class HouseWorksController < ApplicationController
    before_action :set_house_work, only: [:show, :update, :destroy]

    # GET /house_works
    def index
      @house_works = HouseWork.all

      render json: @house_works
    end

    # GET /house_works/1
    def show
      render json: @house_work
    end

    # POST /house_works
    def create
      @list = List.find(params[:list_id])
      @house_work = @list.house_works.build(house_work_params)

      if @house_work.save
        render json: @house_work, status: :created
      else
        render json: @house_work.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /house_works/1
    def update
      if @house_work.update(house_work_params)
        render json: @house_work
      else
        render json: @house_work.errors, status: :unprocessable_entity
      end
    end

    # DELETE /house_works/1
    def destroy
      @house_work.destroy
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_house_work
      @house_work = HouseWork.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def house_work_params
      params.require(:house_work).permit(:name, :time, :done, :list_id, :user_id)
    end
  end
end