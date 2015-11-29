class NoticesController < ApplicationController
  def create
    notice = Notice.new notice_params
    @error = t('errors.notices.create') unless notice.save

    respond_to :js
  end

  private
    def notice_params
      params.require(:notice).permit(:description, :details, :checkpoint_id, :category)
    end
end