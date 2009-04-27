class ItensMinutasController < ApplicationController
  # GET /itens_minutas
  # GET /itens_minutas.xml
  def index
    @itens_minutas = ItensMinuta.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @itens_minutas }
    end
  end

  # GET /itens_minutas/1
  # GET /itens_minutas/1.xml
  def show
    @itens_minuta = ItensMinuta.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @itens_minuta }
    end
  end

  # GET /itens_minutas/new
  # GET /itens_minutas/new.xml
  def new
    @itens_minuta = ItensMinuta.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @itens_minuta }
    end
  end

  # GET /itens_minutas/1/edit
  def edit
    @itens_minuta = ItensMinuta.find(params[:id])
  end

  # POST /itens_minutas
  # POST /itens_minutas.xml
  def create
    @itens_minuta = ItensMinuta.new(params[:itens_minuta])

    respond_to do |format|
      if @itens_minuta.save
        flash[:notice] = 'ItensMinuta was successfully created.'
        format.html { redirect_to(@itens_minuta) }
        format.xml  { render :xml => @itens_minuta, :status => :created, :location => @itens_minuta }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @itens_minuta.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /itens_minutas/1
  # PUT /itens_minutas/1.xml
  def update
    @itens_minuta = ItensMinuta.find(params[:id])

    respond_to do |format|
      if @itens_minuta.update_attributes(params[:itens_minuta])
        flash[:notice] = 'ItensMinuta was successfully updated.'
        format.html { redirect_to(@itens_minuta) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @itens_minuta.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /itens_minutas/1
  # DELETE /itens_minutas/1.xml
  def destroy
    @itens_minuta = ItensMinuta.find(params[:id])
    @itens_minuta.destroy

    respond_to do |format|
      format.html { redirect_to(itens_minutas_url) }
      format.xml  { head :ok }
    end
  end
end
