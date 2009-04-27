class RoteirosController < ApplicationController
  # GET /roteiros
  # GET /roteiros.xml
  def index
    @roteiros = Roteiro.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @roteiros }
    end
  end

  # GET /roteiros/1
  # GET /roteiros/1.xml
  def show
    @roteiro = Roteiro.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @roteiro }
    end
  end

  # GET /roteiros/new
  # GET /roteiros/new.xml
  def new
    @roteiro = Roteiro.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @roteiro }
    end
  end

  # GET /roteiros/1/edit
  def edit
    @roteiro = Roteiro.find(params[:id])
  end

  # POST /roteiros
  # POST /roteiros.xml
  def create
    @roteiro = Roteiro.new(params[:roteiro])

    respond_to do |format|
      if @roteiro.save
        flash[:notice] = 'Roteiro was successfully created.'
        format.html { redirect_to(@roteiro) }
        format.xml  { render :xml => @roteiro, :status => :created, :location => @roteiro }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @roteiro.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /roteiros/1
  # PUT /roteiros/1.xml
  def update
    @roteiro = Roteiro.find(params[:id])

    respond_to do |format|
      if @roteiro.update_attributes(params[:roteiro])
        flash[:notice] = 'Roteiro was successfully updated.'
        format.html { redirect_to(@roteiro) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @roteiro.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /roteiros/1
  # DELETE /roteiros/1.xml
  def destroy
    @roteiro = Roteiro.find(params[:id])
    @roteiro.destroy

    respond_to do |format|
      format.html { redirect_to(roteiros_url) }
      format.xml  { head :ok }
    end
  end
end
