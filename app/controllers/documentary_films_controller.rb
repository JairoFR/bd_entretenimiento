class DocumentaryFilmsController < ApplicationController
  def index
    @documental = DocumentaryFilm.all
  end
  def new
    @documental = DocumentaryFilm.new
  end
  def create
    # Crear una nueva instancia de Video con los parámetros del formulario
    @documental = DocumentaryFilm.new(documental_params)

    # Guardar el video en la base de datos
    if @documental.save
      # Redirigir a la página del video creado si la creación fue exitosa
      flash[:notice] = "La serie se ha creado con éxito."
      redirect_to documentary_films_path # Redirige a la ruta principal
    else
      # Si la creación falla, volver a renderizar el formulario 'new'
      flash[:alert] = "Error al crear la serie."
      render :new
    end
  end

  # Método privado para filtrar los parámetros que se pueden enviar
  private

  def documental_params
    # Permitir solo ciertos parámetros del formulario
    params.require(:documentary_film).permit(:name, :synopsis, :director)
  end
end
