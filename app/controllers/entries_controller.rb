class EntriesController < ApplicationController
  def new
    @entry = Entry.new
  end

  def create
    @entry = current_user.entries.build(entry_params)
    if @entry.save
      flash[:success] = "Entry created!"
      redirect_to entry_path(current_user)
    else
      render 'new'
    end
  end

  def show
    @entries = Entry.paginate(page: params[:page])
  end

  def destroy
    Entry.find(params[:id]).destroy
    flash[:success] = "Entry deleted!"
    redirect_to entry_path(current_user)
  end

  private

    def entry_params
      params.require(:entry).permit(:title, :body)
    end
end
