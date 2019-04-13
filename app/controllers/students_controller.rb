class StudentsController < ApplicationController
	set :views, File.join(APP_ROOT, 'app', 'views', 'students')

	#GET/students/
	get "/"do
		@students = Student.all
		erb :index
	end

	#GET /students/:id
	get "/:id" do
		id = params[:id].to_i
		@student = Student.all[id]
		erb :show
	end
end
