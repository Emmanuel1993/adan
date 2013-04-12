class DenunciasTransito < ActiveRecord::Base
  attr_accessible :apMaterno, :apPaterno, :descripcion, :fecha, :hora, :lugarHecho, :municipio, :numOficial, :numPatrulla
end
