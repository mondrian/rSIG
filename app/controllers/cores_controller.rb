class CoresController < ApplicationController
  # GET /cores
  # GET /cores.xml
  def index
    @cores = Cor.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cores }
    end
  end

  # GET /cores/1
  # GET /cores/1.xml
  def show
    @cor = Cor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @cor }
    end
  end

  # GET /cores/new
  # GET /cores/new.xml
  def new
    @cor = Cor.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @cor }
    end
  end

  # GET /cores/1/edit
  def edit
    @cor = Cor.find(params[:id])
  end

  # POST /cores
  # POST /cores.xml
  def create
    @cor = Cor.new(params[:cor])

    respond_to do |format|
      if @cor.save
        flash[:notice] = 'Cor was successfully created.'
        format.html { redirect_to(@cor) }
        format.xml  { render :xml => @cor, :status => :created, :location => @cor }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @cor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /cores/1
  # PUT /cores/1.xml
  def update
    @cor = Cor.find(params[:id])

    respond_to do |format|
      if @cor.update_attributes(params[:cor])
        flash[:notice] = 'Cor was successfully updated.'
        format.html { redirect_to(@cor) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @cor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /cores/1
  # DELETE /cores/1.xml
  def destroy
    @cor = Cor.find(params[:id])
    @cor.destroy

    respond_to do |format|
      format.html { redirect_to(cores_url) }
      format.xml  { head :ok }
    end
  end
end
