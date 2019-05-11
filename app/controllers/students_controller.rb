class StudentsController < ApplicationController
	set :views, File.join(APP_ROOT, 'app', 'views', 'students')

	#GET/students/
	get "/"do
		@students = Student.all
		erb :index
	end

	get "/new" do
		erb :new
	end

	post "/" do	
		student = Student.new(student_params)
		student.save
		redirect '/students'
	end

	def student_params
		params[:student]
	end

	#GET /students/:id
	get "/:id" do
		id = params[:id].to_i
		@student = Student.all[id]
		erb :show
	end

end
