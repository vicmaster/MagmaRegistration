class RegistrationsController < ApplicationController
  layout 'frontend'

  def index
    @systems = System.all
    @carriers= Carrier.all
    @schools = School.all
    @sizes = Size.all
    @student = Student.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @student }
    end
  end

def create
    @systems = System.all
    @carriers= Carrier.all
    @schools = School.all
    @sizes = Size.all

    @student = Student.new(params[:student])

    respond_to do |format|
      if @student.save
        format.html { redirect_to registrations_success_path, notice: 'Student was successfully created.' }
      else
        format.html { render action: "index" }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
end

  def success

      respond_to do |format|
        format.html # show.html.erb
      end
 end
end
