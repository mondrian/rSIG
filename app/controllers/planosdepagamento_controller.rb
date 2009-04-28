class PlanosdepagamentoController < ApplicationController
  # GET /planosdepagamento
  # GET /planosdepagamento.xml
  def index
    @planosdepagamento = Planodepagamento.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @planosdepagamento }
    end
  end

  # GET /planosdepagamento/1
  # GET /planosdepagamento/1.xml
  def show
    @planodepagamento = Planodepagamento.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @planodepagamento }
    end
  end

  # GET /planosdepagamento/new
  # GET /planosdepagamento/new.xml
  def new
    @planodepagamento = Planodepagamento.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @planodepagamento }
    end
  end

  # GET /planosdepagamento/1/edit
  def edit
    @planodepagamento = Planodepagamento.find(params[:id])
  end

  # POST /planosdepagamento
  # POST /planosdepagamento.xml
  def create
    @planodepagamento = Planodepagamento.new(params[:planodepagamento])

    respond_to do |format|
      if @planodepagamento.save
        flash[:notice] = 'Planodepagamento was successfully created.'
        format.html { redirect_to(@planodepagamento) }
        format.xml  { render :xml => @planodepagamento, :status => :created, :location => @planodepagamento }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @planodepagamento.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /planosdepagamento/1
  # PUT /planosdepagamento/1.xml
  def update
    @planodepagamento = Planodepagamento.find(params[:id])

    respond_to do |format|
      if @planodepagamento.update_attributes(params[:planodepagamento])
        flash[:notice] = 'Planodepagamento was successfully updated.'
        format.html { redirect_to(@planodepagamento) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @planodepagamento.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /planosdepagamento/1
  # DELETE /planosdepagamento/1.xml
  def destroy
    @planodepagamento = Planodepagamento.find(params[:id])
    @planodepagamento.destroy

    respond_to do |format|
      format.html { redirect_to(planosdepagamento_url) }
      format.xml  { head :ok }
    end
  end
end
