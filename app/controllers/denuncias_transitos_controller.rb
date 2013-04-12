class DenunciasTransitosController < ApplicationController
  # GET /denuncias_transitos
  # GET /denuncias_transitos.json
  def index
    @denuncias_transitos = DenunciasTransito.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @denuncias_transitos }
    end
  end

  # GET /denuncias_transitos/1
  # GET /denuncias_transitos/1.json
  def show
    @denuncias_transito = DenunciasTransito.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @denuncias_transito }
    end
  end

  # GET /denuncias_transitos/new
  # GET /denuncias_transitos/new.json
  def new
    @denuncias_transito = DenunciasTransito.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @denuncias_transito }
    end
  end

  # GET /denuncias_transitos/1/edit
  def edit
    @denuncias_transito = DenunciasTransito.find(params[:id])
  end

  # POST /denuncias_transitos
  # POST /denuncias_transitos.json
  def create
    @denuncias_transito = DenunciasTransito.new(params[:denuncias_transito])

    respond_to do |format|
      if @denuncias_transito.save
        format.html { redirect_to @denuncias_transito, notice: 'Denuncias transito was successfully created.' }
        format.json { render json: @denuncias_transito, status: :created, location: @denuncias_transito }
      else
        format.html { render action: "new" }
        format.json { render json: @denuncias_transito.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /denuncias_transitos/1
  # PUT /denuncias_transitos/1.json
  def update
    @denuncias_transito = DenunciasTransito.find(params[:id])

    respond_to do |format|
      if @denuncias_transito.update_attributes(params[:denuncias_transito])
        format.html { redirect_to @denuncias_transito, notice: 'Denuncias transito was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @denuncias_transito.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /denuncias_transitos/1
  # DELETE /denuncias_transitos/1.json
  def destroy
    @denuncias_transito = DenunciasTransito.find(params[:id])
    @denuncias_transito.destroy

    respond_to do |format|
      format.html { redirect_to denuncias_transitos_url }
      format.json { head :no_content }
    end
  end
end
