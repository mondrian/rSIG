class NotasfiscaisController < ApplicationController
  # GET /notasfiscais
  # GET /notasfiscais.xml
  def index
    @notasfiscais = Notafiscal.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @notasfiscais }
    end
  end

  # GET /notasfiscais/1
  # GET /notasfiscais/1.xml
  def show
    @notafiscal = Notafiscal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @notafiscal }
    end
  end

  # GET /notasfiscais/new
  # GET /notasfiscais/new.xml
  def new
    @notafiscal = Notafiscal.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @notafiscal }
    end
  end

  # GET /notasfiscais/1/edit
  def edit
    @notafiscal = Notafiscal.find(params[:id])
  end

  # POST /notasfiscais
  # POST /notasfiscais.xml
  def create
    @notafiscal = Notafiscal.new(params[:notafiscal])

    respond_to do |format|
      if @notafiscal.save
        flash[:notice] = 'Notafiscal was successfully created.'
        format.html { redirect_to(@notafiscal) }
        format.xml  { render :xml => @notafiscal, :status => :created, :location => @notafiscal }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @notafiscal.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /notasfiscais/1
  # PUT /notasfiscais/1.xml
  def update
    @notafiscal = Notafiscal.find(params[:id])

    respond_to do |format|
      if @notafiscal.update_attributes(params[:notafiscal])
        flash[:notice] = 'Notafiscal was successfully updated.'
        format.html { redirect_to(@notafiscal) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @notafiscal.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /notasfiscais/1
  # DELETE /notasfiscais/1.xml
  def destroy
    @notafiscal = Notafiscal.find(params[:id])
    @notafiscal.destroy

    respond_to do |format|
      format.html { redirect_to(notasfiscais_url) }
      format.xml  { head :ok }
    end
  end
end
