class EmployeesController < ApplicationController
  # GET /employees
  # GET /employees.json
  def index
    @office = Office.find(params[:office_id])
    @employees = @office.employees

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @employees }
    end
  end

  # GET /employees/1
  # GET /employees/1.json
  def show
    @employee = Employee.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @employee }
    end
  end

  # GET /employees/new
  # GET /employees/new.json
  def new
    @office = Office.find(params[:office_id])
    @employee = @office.employees.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @employee }
    end
  end

  # GET /employees/1/edit
  def edit
    @employee = Employee.find(params[:id])

  end

  # POST /employees
  # POST /employees.json
  def create
    @office = Office.find(params[:office_id])
    @employee = @office.employees.new(params[:employee])

    respond_to do |format|
      if @employee.save
        format.html { redirect_to office_employees_path(@office), notice: 'Employee was successfully created.' }
        format.json { render json: @employee, status: :created, location: @employee }
      else
        format.html { render action: "new" }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /employees/1
  # PUT /employees/1.json
  def update
    @employee = Employee.find(params[:id])

    respond_to do |format|
      if @employee.update_attributes(params[:employee])
        format.html { redirect_to office_employees_path(@employee.office), notice: 'Employee was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employees/1
  # DELETE /employees/1.json
  def destroy
    @employee = Employee.find(params[:id])
    @office = @employee.office
    @employee.destroy

    respond_to do |format|
      format.html { redirect_to @office }
      format.json { head :no_content }
    end
  end
end