class Api::Web::WelcomeController < ActiveRecord::Base
    respond_to :json
    def hello
      @hello = "hello"
      render json: @hello
    end
  end