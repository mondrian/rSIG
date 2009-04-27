class MinutasController < ApplicationController
  # GET /minutas
  # GET /minutas.xml
  def index
    @minutas = Minuta.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @minutas }
    end
  end

  # GET /minutas/1
  # GET /minutas/1.xml
  def show
    @minuta = Minuta.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @minuta }
    end
  end

  # GET /minutas/new
  # GET /minutas/new.xml
  def new
    @minuta = Minuta.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @minuta }
    end
  end

  # GET /minutas/1/edit
  def edit
    @minuta = Minuta.find(params[:id])
  end

  # POST /minutas
  # POST /minutas.xml
  def create
    @minuta = Minuta.new(params[:minuta])

    respond_to do |format|
      if @minuta.save
        flash[:notice] = 'Minuta was successfully created.'
        format.html { redirect_to(@minuta) }
        format.xml  { render :xml => @minuta, :status => :created, :location => @minuta }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @minuta.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /minutas/1
  # PUT /minutas/1.xml
  def update
    @minuta = Minuta.find(params[:id])

    respond_to do |format|
      if @minuta.update_attributes(params[:minuta])
        flash[:notice] = 'Minuta was successfully updated.'
        format.html { redirect_to(@minuta) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @minuta.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /minutas/1
  # DELETE /minutas/1.xml
  def destroy
    @minuta = Minuta.find(params[:id])
    @minuta.destroy

    respond_to do |format|
      format.html { redirect_to(minutas_url) }
      format.xml  { head :ok }
    end
  end
end
