class AttendeesController < ApplicationController
  before_filter :authenticate_user!
  before_filter :load_data, only: [:new, :edit, :create, :update]

  layout :select_layout

  def index
    @attendees = Attendee.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @attendees }
    end
  end

  def show
    @attendee = Attendee.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @attendee }
    end
  end

  def new
    @attendee = Attendee.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @attendee }
    end
  end

  def edit
    @attendee = Attendee.find(params[:id])
  end


  def create
    @attendee = Attendee.new(params[:attendee])

    respond_to do |format|
      if @attendee.save
        format.html { redirect_to new_attendee_path, notice: 'Attendee was successfully created.' }
        format.json { render json: @attendee, status: :created, location: @attendee }
      else
        format.html { render action: "new" }
        format.json { render json: @attendee.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @attendee = Attendee.find(params[:id])

    respond_to do |format|
      if @attendee.update_attributes(params[:attendee])
        format.html { redirect_to attendees_path(status: 'success'), notice: 'El assistente a sido actualizado correctamente' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @attendee.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @attendee = Attendee.find(params[:id])
    @attendee.destroy

    respond_to do |format|
      format.html { redirect_to attendees_url }
      format.json { head :no_content }
    end
  end

  def success
    respond_to do |format|
      format.html # show.html.erb
    end
  end

  private

  def load_data
    @systems = System.all
    @sizes = Size.all
    @carriers= Carrier.all
    @schools = School.all
  end

  def select_layout
    request.url.match('admin') ? 'backend' : 'frontend'
  end
end
