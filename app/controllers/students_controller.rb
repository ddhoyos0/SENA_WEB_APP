class StudentsController < ApplicationController
  set :views, File.join(APP_ROOT, "app", "views", "students")

  #GET/students/
  get "/" do
    @students = Student.all
    erb :index
  end

  get "/new" do
    erb :new
  end

  post "/" do
    Student.create(student_params)
    redirect "/students"
  end

  def student_params
    params[:student]
  end

  #GET /students/:id
  get "/:id" do
    id = params[:id]
    @student = Student.find(id)
    erb :show
  end

  delete "/:id" do
    Student.destroy(params[:id])
    redirect "/students/"
  end
end
