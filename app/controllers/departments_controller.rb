class DepartmentsController < ApplicationController
    before_action :authenticate_user!

    # GET /departments
    # GET /departments.json

    def index
      @departments = Department.all
    end

    # GET /departments
    # GET /departments.json
    def show
      @department = Department.find_by_id(params[:id])
      @members = @department.users
    end

    def new
      @department = Department.new
    end

    # GET /departments/1/edit
    def edit
    end

    # POST /departments
    # POST /departments.json
    def create
      @department = Department.create(department_params)

      respond_to do |format|
        if @department.save
          format.html {redirect_to @department, notice: "Department created."}
          format.json {render :show, status: :created, location: @department}
        else
          format.html { render :new }
          format.json { render json: @department.errors, status: :unprocessable_entity }
      end
    end
  end


  # PATCH/PUT /departments/1
  # PATCH/PUT /departments/1.json
  def update
    respond_to do |format|
      if @department.update(department_params)
        format.html { redirect_to @department.index, notice: 'Department was successfully updated.' }
        format.json { render :show, status: :ok, location: @department }
      else
        format.html { render :edit }
        format.json { render json: @department.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /departments/1
  # DELETE /departments/1.json
  def destroy
    @department.destroy
    respond_to do |format|
      format.html { redirect_to departments_url, notice: 'Department was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.

    # Never trust parameters from the scary internet, only allow the white list through.
    def department_params
      params.require(:department).permit(:name, :id)
    end

end
