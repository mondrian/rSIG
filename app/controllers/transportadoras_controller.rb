class TransportadorasController < ApplicationController
  # GET /transportadoras
  # GET /transportadoras.xml
  def index
    @transportadoras = Transportadora.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @transportadoras }
    end
  end

  # GET /transportadoras/1
  # GET /transportadoras/1.xml
  def show
    @transportadora = Transportadora.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @transportadora }
    end
  end

  # GET /transportadoras/new
  # GET /transportadoras/new.xml
  def new
    @transportadora = Transportadora.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @transportadora }
    end
  end

  # GET /transportadoras/1/edit
  def edit
    @transportadora = Transportadora.find(params[:id])
  end

  # POST /transportadoras
  # POST /transportadoras.xml
  def create
    @transportadora = Transportadora.new(params[:transportadora])

    respond_to do |format|
      if @transportadora.save
        flash[:notice] = 'Transportadora was successfully created.'
        format.html { redirect_to(@transportadora) }
        format.xml  { render :xml => @transportadora, :status => :created, :location => @transportadora }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @transportadora.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /transportadoras/1
  # PUT /transportadoras/1.xml
  def update
    @transportadora = Transportadora.find(params[:id])

    respond_to do |format|
      if @transportadora.update_attributes(params[:transportadora])
        flash[:notice] = 'Transportadora was successfully updated.'
        format.html { redirect_to(@transportadora) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @transportadora.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /transportadoras/1
  # DELETE /transportadoras/1.xml
  def destroy
    @transportadora = Transportadora.find(params[:id])
    @transportadora.destroy

    respond_to do |format|
      format.html { redirect_to(transportadoras_url) }
      format.xml  { head :ok }
    end
  end
end
