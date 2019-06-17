class AddsController < ApplicationController

    before_action :set_ad, only: [:show, :udpate, :destroy]

    def index
        @ads = Add.all 
        json_response(@ads)
    end

      # POST /ads
    def create
        @ad = Add.create!(ad_params)
        json_response(@ad, :created)
    end

    # GET /ads/:id
    def show
        json_response(@ad)
    end

    # PUT /ads/:id
    def update
        @ad.update(ad_params)
        head :no_content
    end

    # DELETE /ads/:id
    def destroy
        @ad.destroy
        head :no_content
    end

    private

    def ad_params
        # whitelist params
        params.permit(:title, :description, :photo_url, :max, :unlimited, :used, :category, :exp_date)
    end

    def set_ad
        @ad = ad.find(params[:id])
    end

end
