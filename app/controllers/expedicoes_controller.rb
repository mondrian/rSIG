class ExpedicoesController < ApplicationController
  # GET /expedicoes
  # GET /expedicoes.xml
  def index
    @expedicoes = Expedicao.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @expedicoes }
    end
  end

  # GET /expedicoes/1
  # GET /expedicoes/1.xml
  def show
    @expedicao = Expedicao.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @expedicao }
    end
  end

  # GET /expedicoes/new
  # GET /expedicoes/new.xml
  def new
    @expedicao = Expedicao.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @expedicao }
    end
  end

  # GET /expedicoes/1/edit
  def edit
    @expedicao = Expedicao.find(params[:id])
  end

  # POST /expedicoes
  # POST /expedicoes.xml
  def create
    @expedicao = Expedicao.new(params[:expedicao])

    respond_to do |format|
      if @expedicao.save
        flash[:notice] = 'Expedicao was successfully created.'
        format.html { redirect_to(@expedicao) }
        format.xml  { render :xml => @expedicao, :status => :created, :location => @expedicao }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @expedicao.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /expedicoes/1
  # PUT /expedicoes/1.xml
  def update
    @expedicao = Expedicao.find(params[:id])

    respond_to do |format|
      if @expedicao.update_attributes(params[:expedicao])
        flash[:notice] = 'Expedicao was successfully updated.'
        format.html { redirect_to(@expedicao) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @expedicao.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /expedicoes/1
  # DELETE /expedicoes/1.xml
  def destroy
    @expedicao = Expedicao.find(params[:id])
    @expedicao.destroy

    respond_to do |format|
      format.html { redirect_to(expedicoes_url) }
      format.xml  { head :ok }
    end
  end
end
