class DenunciaTransitosController < ApplicationController
  
  
  
  
  
  # GET /denuncia_transitos
  # GET /denuncia_transitos.json
  def index
    @denuncia_transitos = DenunciaTransito.all
  end

  # GET /denuncia_transitos/1
  # GET /denuncia_transitos/1.json
  def show
    
  end

  # GET /denuncia_transitos/new
  def new
    @denuncia_transito = DenunciaTransito.new
    
  end

  # GET /denuncia_transitos/1/edit
  def edit
  end

  # POST /denuncia_transitos
  # POST /denuncia_transitos.json
   
    
  def create
    
    @denuncia_transito = DenunciaTransito.new(denuncia_transito_params)
    
       
  client = Twitter::REST::Client.new do |config|
    config.consumer_key        = "1xQd3DF94oA0LcRp6kEQ"
    config.consumer_secret     = "qtqXy3oU5L5jLBModYBbhAu7ENuhCVj5ZXol1d77VI"
    config.access_token        = "85498772-2lqLy3EhIVAIL9aiVG6HqzNXRzVzI6YOtWcQyEwFh"
    config.access_token_secret = "XF105CKlz90xhTwGVXqehFnHTAPn9rAB9Swrh7u4jCHFB"
  end
    
    
    
    respond_to do |format|
      if @denuncia_transito.save
         
        

        client.update(@denuncia_transito.descripcion + " @"+ @denuncia_transito.nombre)
        format.html { redirect_to denuncia_transitos_url , notice: 'Tu denuncia ha sido Guardada en nuestros servidores.' }
        format.json { render action: 'show', status: :created, location: @denuncia_transito }
        
      else
        format.html { render action: 'new' }
        format.json { render json: @denuncia_transito.errors, status: :unprocessable_entity }
      end
      
    end
    
  end

  # PATCH/PUT /denuncia_transitos/1
  # PATCH/PUT /denuncia_transitos/1.json
  def update
    respond_to do |format|
      if @denuncia_transito.update(denuncia_transito_params)
        format.html { redirect_to @denuncia_transito, notice: 'Tu denuncia ha sido actualizada' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @denuncia_transito.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /denuncia_transitos/1
  # DELETE /denuncia_transitos/1.json
  def destroy
    @denuncia_transito.destroy
    respond_to do |format|
      format.html { redirect_to denuncia_transitos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_denuncia_transito
      @denuncia_transito = DenunciaTransito.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def denuncia_transito_params
      params.require(:denuncia_transito).permit(:nombre, :ubicacion, :dependencia, :estado, :municipio, :fecha, :descripcion)
    end
end
