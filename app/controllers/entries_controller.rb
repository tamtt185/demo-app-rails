class EntriesController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]
  before_action :correct_user, only: :destroy
 
  def create
    @entry = current_user.entries.build(entry_params)
    if @entry.save
      flash[:success] = "Entry created!"
      redirect_to root_path
    else
      render 'static_pages/home'
    end
  end

  def show
    @entries = Entry.paginate(page: params[:page])
  end

  def destroy
    Entry.find(params[:id]).destroy
    flash[:success] = "Entry deleted!"
    redirect_to request.referrer || root_path
  end

  private

    def entry_params
      params.require(:entry).permit(:title, :body)
    end

    def correct_user
      @entry = current_user.entries.find_by(id: params[:id])
      redirect_to root_url if @entry.nil?
    end
end
