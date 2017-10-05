class PersonasController < ApplicationController

  def index
    @personas = Persona.all
  end

  def mostrar
    @persona = Persona.find(params[:id])
  end

  def eliminar
  end

  def update
  end

  def nuevo
    @persona = Persona.new
  end

  def crear
  end

  def editar
  end
end
