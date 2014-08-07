class IssuesController < ApplicationController
  # GET /issues
  # GET /issues.json
  def index
    @issues = Issue.all

    render json: @issues
  end

  # GET /issues/1
  # GET /issues/1.json
  def show
    @issue = Issue.find(params[:id])

    render json: @issue
  end

  # POST /issues
  # POST /issues.json
  def create
    @issue = Issue.new(params[:issue])

    if @issue.save
      render json: @issue, status: :created, location: @issue
    else
      render json: @issue.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /issues/1
  # PATCH/PUT /issues/1.json
  def update
    @issue = Issue.find(params[:id])

    if @issue.update(params[:issue])
      head :no_content
    else
      render json: @issue.errors, status: :unprocessable_entity
    end
  end

  # DELETE /issues/1
  # DELETE /issues/1.json
  def destroy
    @issue = Issue.find(params[:id])
    @issue.destroy

    head :no_content
  end

  # Require strong_params/replace attr_accessible
  private
    def user_params
      params.require(:id).permit(:id)
    end
end  

