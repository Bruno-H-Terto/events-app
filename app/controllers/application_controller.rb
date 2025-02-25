class ApplicationController < ActionController::API
  rescue_from ActiveRecord::RecordNotFound, with: :not_found


  def not_found
    render status: 404, json: { response: "not found" }
  end
end
