module Api
	module V1
		class StudentsController < ApplicationController
			respond_to :json
			def index
				@student = students("index")
				render json: {status: 'SUCCESS', message: 'Loaded items', data:@student},status: :ok
			end

			def show
				@student = students("show")
				render json: {status: 'SUCCESS',message: 'Loaded item',data:@student},status: :ok
			end

			def create
				@student = Student.new(student_params)

				if @student.save
					render json: {status: 'SUCCESS',message: 'STUDENT LOADED',data:@student},status: :ok
					else
					render json: {status: 'Error',message: 'the file could not be created',data:@student.errors},status: :unprocessable_entity
				end
			end

			def destroy
				@student = Student.find(params[:id])
				
				if @student.destroy
					render json: {status: 'Deleted item', message: 'item Deleted'},status: :ok
				else
					render json: {status: 'ERROR', message: 'item not Deleted', data:@student.errors},status: :unprocessable_entity
				end
			end

			def update
				@student = Student.find(params[:id])

				if @student.update_attributes(student_params)
					render json: {status: 'SUCCESS',message: 'STUDENT EDITED',data:@student},status: :ok
				else
					render json: {status: 'Error',message: 'the file could not be edited',data:@student.errors},status: :unprocessable_entity
				end
			end

			private

			def student_params
				params.permit(:firstName,:lastName,:email,:regDate,:sClass,:gender,:mobileNumber,:parentName,:parentNumber,:birth,:address,:image )
			end

			def students(string)

				if string == "index"
				@allStudents = Student.find_by_sql("SELECT id,firstName,lastName,email,sClass,gender FROM students")
				return @allStudents;
				end

				if string == "show"
				show = Student.find(params[:id]);
				@allStudents = show.id.to_s+" "+show.firstName+" "+show.lastName+" "+show.email+" "+show.sClass+" "+show.gender
				return @allStudents;
				end

			end

		end
	end
end