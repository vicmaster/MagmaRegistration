class Admin::DashboardController < ApplicationController
  before_filter :authenticate_user!
  before_filter :load_data, only: [:new, :create]

  layout 'backend'

  def index
    gender_chart = Graphs.new
    @gender_chart = render_charts gender_chart, 'gender', Attendee.gender_statistics
    system_chart = Graphs.new
    @system_chart = render_charts system_chart, 'system', Attendee.system_statistics
  end

  def new
    @attendee = Attendee.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @attendee }
    end
  end

  def create
    @attendee = Attendee.new(params[:attendee])

    respond_to do |format|
      if @attendee.save
        format.html { redirect_to @attendee, notice: 'Attendee was successfully created.' }
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
        format.html { redirect_to @attendee, notice: 'Attendee was successfully updated.' }
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

  private

  def render_charts chart, type, data
    chart.render_graph(
      text: type,
      type: 'pie',
      name: 'quantity',
      data: data
    )
  end

  def load_data
    @systems = System.all
    @carriers= Carrier.all
    @schools = School.all
    @sizes = Size.all
  end

end

