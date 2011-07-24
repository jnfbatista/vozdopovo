class OuvesController < ApplicationController
  # GET /ouves
  # GET /ouves.xml
  def index
    @ouves = Ouve.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ouves }
    end
  end

  # GET /ouves/1
  # GET /ouves/1.xml
  def show
    @ouve = Ouve.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ouve }
    end
  end

  # GET /ouves/new
  # GET /ouves/new.xml
  def new
    @ouve = Ouve.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ouve }
    end
  end

  def new_main
   @ouve.titulo = params[:titulo] 
  end

  # GET /ouves/1/edit
  def edit
    @ouve = Ouve.find(params[:id])
  end

  # POST /ouves
  # POST /ouves.xml
  def create
    @ouve = Ouve.new(params[:ouve])

    respond_to do |format|
      if @ouve.save
        format.html { redirect_to(@ouve, :notice => 'Ouve was successfully created.') }
        format.xml  { render :xml => @ouve, :status => :created, :location => @ouve }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ouve.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ouves/1
  # PUT /ouves/1.xml
  def update
    @ouve = Ouve.find(params[:id])

    respond_to do |format|
      if @ouve.update_attributes(params[:ouve])
        format.html { redirect_to(@ouve, :notice => 'Ouve was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ouve.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ouves/1
  # DELETE /ouves/1.xml
  def destroy
    @ouve = Ouve.find(params[:id])
    @ouve.destroy

    respond_to do |format|
      format.html { redirect_to(ouves_url) }
      format.xml  { head :ok }
    end
  end
end
