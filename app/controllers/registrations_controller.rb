class RegistrationsController < ApplicationController

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
    @student = Student.new(params[:student])

    respond_to do |format|
      if @student.save
        format.html { redirect_to registrations_success_path(@student), notice: 'Student was successfully created.' }
      else
        format.html { redirect_to registrations_path(@student), notice: 'Registro no guardado, por favor intente de nuevo' }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
end

  def success
    @student = Student.find(params[:id])

      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @student }
      end
 end
end
