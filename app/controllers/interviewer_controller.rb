class InterviewerController < ApplicationController

  # GET /interviewer
  def index
    @openSessions = InterviewSession.where(:is_open => true)
    @closedSessions = InterviewSession.where(:is_open => false)
  end

  # GET /interviewer/:id
  def show
    # resume session
  end

  # POST /interviewer
  def create
    # new session
  end

  # DELETE /interviewer/:id
  def destroy
    
  end

end
