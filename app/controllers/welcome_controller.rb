class WelcomeController < ApplicationController
  before_filter :authenticate_client!, except: [:index]
  def index
  end
end
