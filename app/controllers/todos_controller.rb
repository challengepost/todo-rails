class TodosController < ApplicationController
  before_action :set_todo, only: [:show, :edit, :update, :destroy]

  # GET /todos
  def index
    @todos = Todo.all
  end

  # GET /todos/1
  def show
  end

  # GET /todos/new
  def new
    @todo = Todo.new
  end

  # GET /todos/1/edit
  def edit
  end

  # POST /todos
  def create
    @todo = Todo.new(todo_params)

    if @todo.save
      redirect_to @todo, notice: 'Todo was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /todos/1
  def update
    file_name = todo_params[:img].original_filename
    FileUtils.mv todo_params[:img].tempfile, Rails.root.join("public/#{file_name}")

    if @todo.update(title: todo_params[:title],img: file_name)
      redirect_to @todo, notice: 'Todo was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /todos/1
  def destroy
    @todo.destroy
    redirect_to todos_url, notice: 'Todo was successfully destroyed.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_todo
    @todo = Todo.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def todo_params
    params.require(:todo).permit(:title, :img)
  end
end
