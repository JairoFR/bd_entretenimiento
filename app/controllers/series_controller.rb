class SeriesController < ApplicationController
  def index
    @series = Series.all
  end
  def new
    @serie = Series.new
  end
  def create
    # Crear una nueva instancia de Video con los parámetros del formulario
    @serie = Series.new(serie_params)

    # Guardar el video en la base de datos
    if @serie.save
      # Redirigir a la página del video creado si la creación fue exitosa
      flash[:notice] = "La serie se ha creado con éxito."
      redirect_to series_index_path # Redirige a la ruta principal
    else
      # Si la creación falla, volver a renderizar el formulario 'new'
      flash[:alert] = "Error al crear la serie."
      render :new
    end
  end

  # Método privado para filtrar los parámetros que se pueden enviar
  private

  def serie_params
    # Permitir solo ciertos parámetros del formulario
    params.require(:series).permit(:name, :synopsis, :director)
  end
end
