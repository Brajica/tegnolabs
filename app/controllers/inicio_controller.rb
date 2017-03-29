class InicioController < ApplicationController
  def index

  end

  def dashboard
      @apps=App.all
  end
end
