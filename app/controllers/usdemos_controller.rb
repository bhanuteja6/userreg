class UsdemosController < ApplicationController
  # GET /usdemos
  # GET /usdemos.json
  def index
    @projects = Project.all
    @iteration = Iteration.find(params[:iteration_id])
    #raise @iteration.name.inspect
   # raise @iteration.inspect
    @usdemos = Usdemo.all
    #@usdemo = Usdemo.find(params[:id])


    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @usdemos }
    end
  end

  # GET /usdemos/1
  # GET /usdemos/1.json
  def show
  
    @usdemo = Usdemo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @usdemo }
    end
  end

  # GET /usdemos/new
  # GET /usdemos/new.json
  def new
    @iteration = Iteration.find(params[:iteration_id])
    @usdemo = Usdemo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @usdemo }
    end
  end

  # GET /usdemos/1/edit
  def edit
    @usdemo = Usdemo.find(params[:id])
  end

  # POST /usdemos
  # POST /usdemos.json
  def create
    @iteration = Iteration.find(params[:iteration_id])
   #raise @iteration.inspect
    @usdemo = @iteration.usdemos.build(params[:usdemo])

    respond_to do |format|
      if @usdemo.save
        format.html { redirect_to project_iteration_usdemos_url, notice: 'Usdemo was successfully created.' }
        format.json { render json: @usdemo, status: :created, location: @usdemo }
      else
        format.html { render action: "new" }
        format.json { render json: @usdemo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /usdemos/1
  # PUT /usdemos/1.json
  def update
    @usdemo = Usdemo.find(params[:id])

    respond_to do |format|
      if @usdemo.update_attributes(params[:usdemo])
        format.html { redirect_to @usdemo, notice: 'Usdemo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @usdemo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usdemos/1
  # DELETE /usdemos/1.json
  def destroy
    @usdemo = Usdemo.find(params[:id])
    @usdemo.destroy

    respond_to do |format|
      format.html { redirect_to usdemos_url }
      format.json { head :no_content }
    end
  end
end
