class TeachersController < ApplicationController
    set :views, File.join(APP_ROOT, 'app', 'views', 'teachers')
   
    #GET/students/
	get "/"do
        @teachers = Teacher.all
        erb :index
    end

    
    #GET /students/:id
    get "/:id" do
        id = params[:id].to_i
        @teacher = Teacher.all[id]
        erb :show
    end
    
end