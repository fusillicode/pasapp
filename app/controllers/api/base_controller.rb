module Api
  class BaseController < ApplicationController
    protect_from_forgery with: :null_session

    rescue_from ActiveRecord::RecordNotFound,
                ActionController::RoutingError, with: :render_not_found
    rescue_from ActionController::ParameterMissing, with: :render_bad_request

    def routing_error
      raise ActionController::RoutingError.new("No route match #{params[:unmatched_route]}")
    end

    def render_token
      render json: { token: current_user.auth_token }
    end

    def render_show(location)
      render :show, status: :ok, location: location
    end

    def render_created(location)
      render :show, status: :created, location: location
    end

    def render_errors(resource)
      render json: resource.errors, status: :unprocessable_entity
    end

    def render_forbidden
      render json: { error: "You can't do that" }, status: :forbidden
    end

    def render_unauthorized
      render json: { error: 'Incorrect credentials' }, status: :unauthorized
    end

    def render_not_found
      render json: { error: 'Not found' }, status: :not_found
    end

    def render_bad_request
      render json: { error: 'Bad request' }, status: :bad_request
    end

    def render_nothing
      render nothing: true, status: :no_content
    end
  end
end
