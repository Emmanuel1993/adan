class DependenciasController < ApplicationController
  def filtroPartidos
    @representantes = Representante.all
  end
end
