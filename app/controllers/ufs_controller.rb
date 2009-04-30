class UfsController < ApplicationController
  # GET /ufs
  # GET /ufs.xml
  def index
    @ufs = Uf.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ufs }
    end
  end

  # GET /ufs/1
  # GET /ufs/1.xml
  def show
    @uf = Uf.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @uf }
    end
  end

  # GET /ufs/new
  # GET /ufs/new.xml
  def new
    @uf = Uf.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @uf }
    end
  end

  # GET /ufs/1/edit
  def edit
    @uf = Uf.find(params[:id])
  end

  # POST /ufs
  # POST /ufs.xml
  def create
    @uf = Uf.new(params[:uf])

    respond_to do |format|
      if @uf.save
        flash[:notice] = 'Uf was successfully created.'
        format.html { redirect_to(@uf) }
        format.xml  { render :xml => @uf, :status => :created, :location => @uf }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @uf.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ufs/1
  # PUT /ufs/1.xml
  def update
    @uf = Uf.find(params[:id])

    respond_to do |format|
      if @uf.update_attributes(params[:uf])
        flash[:notice] = 'Uf was successfully updated.'
        format.html { redirect_to(@uf) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @uf.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ufs/1
  # DELETE /ufs/1.xml
  def destroy
    @uf = Uf.find(params[:id])
    @uf.destroy

    respond_to do |format|
      format.html { redirect_to(ufs_url) }
      format.xml  { head :ok }
    end
  end
end
