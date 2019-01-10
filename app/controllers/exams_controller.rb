class ExamsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_exam, only: [:show, :edit, :update, :destroy]

  # GET /exams
  # GET /exams.json
  def index
    @exams = Exam.all
  end
  


  # GET /exams/1
  # GET /exams/1.json
  def show 
  end 


  # GET /exams/new
  def new
    @exam = current_user.exams.build
    @student = current_user.students
  end

  # GET /exams/1/edit
  def edit
     @subject = current_user.subjects
     @student = current_user.students
  end

  # POST /exams
  # POST /exams.json
  def create
   # render plain: params[:exam].inspect;
    @exam = current_user.exams.build(exam_params)
    @subject = current_user.subjects
    @student = current_user.students

    respond_to do |format|
      if @exam.save
        format.html { redirect_to @exam, notice: 'Exam results were successfully submited.' }
        format.json { render :show, status: :created, location: @exam }
      else
        format.html { render :new }
        format.json { render json: @exam.errors, status: :unprocessable_entity }
      end
    end

  end

  # PATCH/PUT /exams/1
  # PATCH/PUT /exams/1.json
  def update
    respond_to do |format|
      if @exam.update(exam_params)
        format.html { redirect_to @exam, notice: 'Exam was successfully updated.' }
        format.json { render :show, status: :ok, location: @exam }
      else
        format.html { render :edit }
        format.json { render json: @exam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exams/1
  # DELETE /exams/1.json
  def destroy
    @exam.destroy
    respond_to do |format|
      format.html { redirect_to exams_url, notice: 'Exam was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def intheory
    @inTheory = switchChoice
    @everyOne = students
   
     
      @everyOne.each do |s|
       @date = s.date
       @formated=@date.year
       @a = s.sClass
      if (((s.sClass.to_i) == (@inTheory[:switch].to_i)) && ((s.examName) == (@inTheory[:term])) && (@formated.to_i == @inTheory[:year].to_i) ) 
       @class = s
     else
        @class = ' '
     end
   end
  end


  private
     
    # Use callbacks to share common setup or constraints between actions.
    def set_exam
      @exam = Exam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exam_params
      params.require(:exam).permit(:date,:student_id, :examName, :results, :english, :kiswahili, :math, :science, :social_studies, :CRE)
    end

    def students
       @allStd = current_user.students.find_by_sql("SELECT date,examName,student_id,firstName,lastName,sClass,results,english,kiswahili,math,science,social_studies,CRE
                                                       FROM exams,students 
                                                      WHERE did_exam = '1'
                                                      AND students.user_id = exams.user_id ")
       return @allStd     
     end

     def switchChoice
       params.require(:choice).permit(:switch,:term,:year)
     end
end