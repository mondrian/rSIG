class MetaProdutosController < ApplicationController
  # GET /meta_produtos
  # GET /meta_produtos.xml
  def index
    @meta_produtos = MetaProduto.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @meta_produtos }
    end
  end

  # GET /meta_produtos/1
  # GET /meta_produtos/1.xml
  def show
    @meta_produto = MetaProduto.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @meta_produto }
    end
  end

  # GET /meta_produtos/new
  # GET /meta_produtos/new.xml
  def new
    @meta_produto = MetaProduto.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @meta_produto }
    end
  end

  # GET /meta_produtos/1/edit
  def edit
    @meta_produto = MetaProduto.find(params[:id])
  end

  # POST /meta_produtos
  # POST /meta_produtos.xml
  def create
    @meta_produto = MetaProduto.new(params[:meta_produto])

    respond_to do |format|
      if @meta_produto.save
        flash[:notice] = 'MetaProduto was successfully created.'
        format.html { redirect_to(@meta_produto) }
        format.xml  { render :xml => @meta_produto, :status => :created, :location => @meta_produto }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @meta_produto.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /meta_produtos/1
  # PUT /meta_produtos/1.xml
  def update
    @meta_produto = MetaProduto.find(params[:id])

    respond_to do |format|
      if @meta_produto.update_attributes(params[:meta_produto])
        flash[:notice] = 'MetaProduto was successfully updated.'
        format.html { redirect_to(@meta_produto) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @meta_produto.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /meta_produtos/1
  # DELETE /meta_produtos/1.xml
  def destroy
    @meta_produto = MetaProduto.find(params[:id])
    @meta_produto.destroy

    respond_to do |format|
      format.html { redirect_to(meta_produtos_url) }
      format.xml  { head :ok }
    end
  end
end
