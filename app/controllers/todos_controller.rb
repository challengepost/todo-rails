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
    save_image(todo_params)
    @todo = Todo.new(todo_params)

    if @todo.save
      redirect_to @todo, notice: 'Todo was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /todos/1
  def update
    # save_image(todo_params)
    if (todo_params[:img_blob])
      img_path = Todo.save_img_blob(todo_params[:img_blob])
      params[:img_path] = img_path
      params.delete(:img_blob)
    end

    if @todo.update(todo_params)
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
    params.require(:todo).permit(:title)
  end

  def save_image(todo_params)
    if (todo_params[:img_blob])
      img_path = Todo.save_img_blob(todo_params[:img_blob])
      params[:img_path] = img_path
      params.delete(:img_blob)
    end
  end
end
