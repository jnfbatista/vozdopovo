class MinisteriosController < ApplicationController
  # GET /ministerios
  # GET /ministerios.xml
  def index
    @ministerios = Ministerio.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ministerios }
    end
  end

  # GET /ministerios/1
  # GET /ministerios/1.xml
  def show
    @ministerio = Ministerio.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ministerio }
    end
  end

  # GET /ministerios/new
  # GET /ministerios/new.xml
  def new
    @ministerio = Ministerio.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ministerio }
    end
  end

  # GET /ministerios/1/edit
  def edit
    @ministerio = Ministerio.find(params[:id])
  end

  # POST /ministerios
  # POST /ministerios.xml
  def create
    @ministerio = Ministerio.new(params[:ministerio])

    respond_to do |format|
      if @ministerio.save
        format.html { redirect_to(@ministerio, :notice => 'Ministerio was successfully created.') }
        format.xml  { render :xml => @ministerio, :status => :created, :location => @ministerio }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ministerio.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ministerios/1
  # PUT /ministerios/1.xml
  def update
    @ministerio = Ministerio.find(params[:id])

    respond_to do |format|
      if @ministerio.update_attributes(params[:ministerio])
        format.html { redirect_to(@ministerio, :notice => 'Ministerio was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ministerio.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ministerios/1
  # DELETE /ministerios/1.xml
  def destroy
    @ministerio = Ministerio.find(params[:id])
    @ministerio.destroy

    respond_to do |format|
      format.html { redirect_to(ministerios_url) }
      format.xml  { head :ok }
    end
  end
end
