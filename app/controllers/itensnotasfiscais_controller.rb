class ItensnotasfiscaisController < ApplicationController
  # GET /itensnotasfiscais
  # GET /itensnotasfiscais.xml
  def index
    @itensnotasfiscais = Itemnotafiscal.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @itensnotasfiscais }
    end
  end

  # GET /itensnotasfiscais/1
  # GET /itensnotasfiscais/1.xml
  def show
    @itemnotafiscal = Itemnotafiscal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @itemnotafiscal }
    end
  end

  # GET /itensnotasfiscais/new
  # GET /itensnotasfiscais/new.xml
  def new
    @itemnotafiscal = Itemnotafiscal.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @itemnotafiscal }
    end
  end

  # GET /itensnotasfiscais/1/edit
  def edit
    @itemnotafiscal = Itemnotafiscal.find(params[:id])
  end

  # POST /itensnotasfiscais
  # POST /itensnotasfiscais.xml
  def create
    @itemnotafiscal = Itemnotafiscal.new(params[:itemnotafiscal])

    respond_to do |format|
      if @itemnotafiscal.save
        flash[:notice] = 'Itemnotafiscal was successfully created.'
        format.html { redirect_to(@itemnotafiscal) }
        format.xml  { render :xml => @itemnotafiscal, :status => :created, :location => @itemnotafiscal }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @itemnotafiscal.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /itensnotasfiscais/1
  # PUT /itensnotasfiscais/1.xml
  def update
    @itemnotafiscal = Itemnotafiscal.find(params[:id])

    respond_to do |format|
      if @itemnotafiscal.update_attributes(params[:itemnotafiscal])
        flash[:notice] = 'Itemnotafiscal was successfully updated.'
        format.html { redirect_to(@itemnotafiscal) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @itemnotafiscal.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /itensnotasfiscais/1
  # DELETE /itensnotasfiscais/1.xml
  def destroy
    @itemnotafiscal = Itemnotafiscal.find(params[:id])
    @itemnotafiscal.destroy

    respond_to do |format|
      format.html { redirect_to(itensnotasfiscais_url) }
      format.xml  { head :ok }
    end
  end
end
