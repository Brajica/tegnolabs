class InicioController < ApplicationController
  before_action :authenticate_admin!, only:[:dashboard]
  def index

  end

  def dashboard
      @apps=App.all
  end
end
