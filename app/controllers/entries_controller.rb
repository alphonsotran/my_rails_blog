class EntriesController < ApplicationController
  def index
    @entries = Entry.all
  end

  def show
    @entry = Entry.find(params[:id])
  end

  def new
    @entry = Entry.new
  end

  def edit
    @entry = Entry.find(params[:id])
  end

  def create
    @entry = Entry.new(required_params)
    if @entry.save
      redirect_to @entry
    else
      render 'new'
    end
  end

  def update
    @entry = Entry.find(params[:id])
    if @entry.update(required_params)
      redirect_to @entry
    else
      render 'edit'
    end
  end

  def destroy
    @entry = Entry.find(params[:id])
    @entry.destroy

    redirect_to entries_path
  end

  private
    def required_params
      params.require(:entry).permit(:title, :text)
    end
end
