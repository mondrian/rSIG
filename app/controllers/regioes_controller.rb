class RegioesController < ApplicationController
  # GET /regioes
  # GET /regioes.xml
  def index
    @regioes = Regiao.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @regioes }
    end
  end

  # GET /regioes/1
  # GET /regioes/1.xml
  def show
    @regiao = Regiao.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @regiao }
    end
  end

  # GET /regioes/new
  # GET /regioes/new.xml
  def new
    @regiao = Regiao.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @regiao }
    end
  end

  # GET /regioes/1/edit
  def edit
    @regiao = Regiao.find(params[:id])
  end

  # POST /regioes
  # POST /regioes.xml
  def create
    @regiao = Regiao.new(params[:regiao])

    respond_to do |format|
      if @regiao.save
        flash[:notice] = 'Regiao was successfully created.'
        format.html { redirect_to(@regiao) }
        format.xml  { render :xml => @regiao, :status => :created, :location => @regiao }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @regiao.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /regioes/1
  # PUT /regioes/1.xml
  def update
    @regiao = Regiao.find(params[:id])

    respond_to do |format|
      if @regiao.update_attributes(params[:regiao])
        flash[:notice] = 'Regiao was successfully updated.'
        format.html { redirect_to(@regiao) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @regiao.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /regioes/1
  # DELETE /regioes/1.xml
  def destroy
    @regiao = Regiao.find(params[:id])
    @regiao.destroy

    respond_to do |format|
      format.html { redirect_to(regioes_url) }
      format.xml  { head :ok }
    end
  end
end
