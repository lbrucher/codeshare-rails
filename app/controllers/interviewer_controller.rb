class InterviewerController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, :with => :interview_session_not_found

  # GET /interviewer
  def index
    @openSessions = InterviewSession.where(:is_open => true)
    @closedSessions = InterviewSession.where(:is_open => false)
  end

  # GET /interviewer/:id
  def show
	@isession = InterviewSession.find(params[:id])
  end

  # POST /interviewer
  def create
    # new session
  end

  # DELETE /interviewer/:id
  def destroy
    
  end


 
  private
 
  def interview_session_not_found
    render :text => "Unknown interview session", :status => 500
  end
end
