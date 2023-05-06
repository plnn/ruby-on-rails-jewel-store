class CommandsController < ApplicationController
  # GET /products
  # GET /products.json
  def index
    @commands = Command.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @commands }
    end
  end
def destroy
    @command = Command.find(params[:id])
    @command.destroy

    respond_to do |format|
      format.html { redirect_to commands_url ,notice: 'command was successfully deleted.'}
      format.json { head :no_content }
    end
  end
  # GET /products/1
  # GET /products/1.json
  def show
    @commands = Commands.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @commands }
    end
  end

  # GET /products/new
  # GET /products/new.json
  def new
    @command = Command.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @command }
  end
  end

  # POST /products
  # POST /products.json
  def create
    @command = Command.new(params[:command])

    respond_to do |format|
      if @command.save
        format.html { redirect_to @command, notice: 'Command was successfully created.' }
        format.json { render json: @command, status: :created, location: @command }
redirect_to :action => 'index', :notice => "problem with the start_date and end_date" and return
      else
        format.html { render action: "new" }
        format.json { render json: @command.errors, status: :unprocessable_entity }
      end
    end
  end
 def show
    @command = Command.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @command }
    end
  end
  

 
end
