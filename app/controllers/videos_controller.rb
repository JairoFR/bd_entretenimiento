class VideosController < ApplicationController
  def index
    @video = Movie.all
  end
  def new
    @video = Movie.new
  end
  def create
    # Crear una nueva instancia de Video con los parámetros del formulario
    @video = Movie.new(video_params)

    # Guardar el video en la base de datos
    if @video.save
      # Redirigir a la página del video creado si la creación fue exitosa
      flash[:notice] = "El video se ha creado con éxito."
      redirect_to videos_path # Redirige a la ruta principal
    else
      # Si la creación falla, volver a renderizar el formulario 'new'
      flash[:alert] = "Error al crear el video."
      render :new
    end
  end

  # Método privado para filtrar los parámetros que se pueden enviar
  private

  def video_params
    # Permitir solo ciertos parámetros del formulario
    params.require(:movie).permit(:name, :synopsis, :director)
  end
end
