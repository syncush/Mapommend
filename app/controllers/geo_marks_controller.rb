class GeoMarksController < ApplicationController
    before_action :authenticate_user!, only: [:destroy, :update, :create]
    before_action :find_geo_mark, only: [:destroy, :show, :update, :upvote]

    def index
        @geo_marks = GeoMark.where(public: true)
        @geo_marks_user_shared = GeoMarksShare.where(user_id: current_user.id).includes(:geo_mark).map {|share| {geo_mark: share.geo_mark, user: share.user}}
    end

    def show
    end

    def create
        @geo_mark = current_user.geo_marks.build geo_mark_params
        @geo_mark.save!
        respond_to do |format|
            format.html # show.html.erb
            format.json { render json: @geo_mark }
        end
    end

    def new
        @geo_mark = GeoMark.new
    end

    def destroy
        @geo_mark.destroy
    end

    def update
        @geo_mark.update geo_mark_params
    end

    def upvote
        @geo_mark.liked_by current_user
        redirect_to geo_marks_path
    end
    def share
        render :status => 404 unless user_signed_in?
        unless GeoMarksShare.where(user_id: current_user.id).count > 1
            GeoMarksShare.new(user_id: current_user.id, geo_mark_id: params[:id]).save!
            redirect_to geo_marks_path
        end
    end
    private

    def find_geo_mark
        @geo_mark = GeoMark.find_by id: params[:id]
        render :status => 404 if @geo_mark.nil?
    end

    def geo_mark_params
        params.require(:geo_mark).permit(:longtitude, :latitude, :description, :public)
    end
end
