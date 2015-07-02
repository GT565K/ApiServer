module Api
  module V1
    class CompaniesController < ApplicationController
      before_filter :restrict_access
      respond_to :json
      
      def index
        render :json => Company.all.to_json
      end

      def show
        @company = Company.find(params[:id])
        
        render :json => @company
      end

      def create
        @company = Company.new(company_params)
        
        if @company.save
          render :json => @company.to_json, status: :created
        else
          render :json => {:errors => @company.errors.messages}.to_json, status: :unprocessable_entity
        end
      end

      def update
        
        @company = Company.update(params[:id], company_params)
        
        unless @company.errors.present?
          render :json => @company.to_json
        else
          render :json => {:errors => @company.errors.messages}.to_json, status: :unprocessable_entity
        end
      end

      def destroy
        respond_with Company.destroy(params[:id])
      end
      
    private
      def restrict_access
        authenticate_or_request_with_http_token do |token, options|
          ApiKey.exists?(access_token: token)
        end
      end
      
      def company_params
        params.require(:company).permit(:name, :description, :year_founded)
      end
    end
  end
end