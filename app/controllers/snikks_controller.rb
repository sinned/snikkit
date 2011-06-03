class SnikksController < ApplicationController
  # GET /snikks
  # GET /snikks.xml
  def index
    @snikks = Snikk.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @snikks }
    end
  end

  # GET /snikks/1
  # GET /snikks/1.xml
  def show
    @snikk = Snikk.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @snikk }
    end
  end

  # GET /snikks/new
  # GET /snikks/new.xml
  def new
    @snikk = Snikk.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @snikk }
    end
  end

  # GET /snikks/1/edit
  def edit
    @snikk = Snikk.find(params[:id])
  end

  # POST /snikks
  # POST /snikks.xml
  def create
    @snikk = Snikk.new(params[:snikk])

    respond_to do |format|
      if @snikk.save
        format.html { redirect_to(@snikk, :notice => 'Snikk was successfully created.') }
        format.xml  { render :xml => @snikk, :status => :created, :location => @snikk }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @snikk.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /snikks/1
  # PUT /snikks/1.xml
  def update
    @snikk = Snikk.find(params[:id])

    respond_to do |format|
      if @snikk.update_attributes(params[:snikk])
        format.html { redirect_to(@snikk, :notice => 'Snikk was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @snikk.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /snikks/1
  # DELETE /snikks/1.xml
  def destroy
    @snikk = Snikk.find(params[:id])
    @snikk.destroy

    respond_to do |format|
      format.html { redirect_to(snikks_url) }
      format.xml  { head :ok }
    end
  end
end
