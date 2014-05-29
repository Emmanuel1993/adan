class ComentariosController < ApplicationController
  before_action :set_comentario, only: [:show, :edit, :update, :destroy]

   # GET /comentarios/new
  def new
    @comentario = Comentario.new
  end

  # POST /comentarios
  # POST /comentarios.json
  def create
    @comentario = Comentario.new(comentario_params)

    respond_to do |format|
      if @comentario.save
        format.html { redirect_to @comentario.post, notice: 'Comentario was successfully created.' }
        format.json { render action: 'show', status: :created, location: @comentario.post }
      else
        format.html { render action: 'new' }
        format.json { render json: @comentario.errors, status: :unprocessable_entity }
      end
    end
  end

   # DELETE /comentarios/1
  # DELETE /comentarios/1.json
  def destroy
    @comentario.destroy
    respond_to do |format|
      format.html { redirect_to perfiles_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comentario
      @comentario = Comentario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comentario_params
      params.require(:comentario).permit(:nombre, :email, :comentario, :post_id)
    end
end
