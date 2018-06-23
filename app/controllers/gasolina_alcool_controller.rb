class GasolinaAlcoolController < ApplicationController
  def index
  end

  def convert
    alcool = params[:alcool]
    gasolina = params[:gasolina]

    mais_economico = 'Álcool'
    if gasolina < alcool
      mais_economico = 'Gasolina'
    end

    render json: {'mais_economico': mais_economico}
  end
end
