class EntriesController < ApplicationController
  def new
    @entry = Entry.new
  end

  def create
     @entry = Entry.new(entry_params)
    if @entry.save
      flash[:success] = "Create entry successfull!"
      redirect_to @entry
    else
      render 'new'
    end
  end

  def show
   
  end

  def update
  end

  def destroy
  end

  private

    def entry_params
      params.require(:entry).permit(:title, :body)
    end
end
