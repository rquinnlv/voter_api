module V1
  class CandidatesController < ApplicationController
    # GET /candidates
    # GET /candidates.json
    #  def index
    #    @candidates = Candidate.all

    #    render json: @candidates
    #  end

    # GET /candidates/1
    # GET /candidates/1.json
    def show
      @candidate = Candidate.find(params[:id])

      render json: @candidate
    end

    # POST /candidates
    # POST /candidates.json
    #  def create
    #    @candidate = Candidate.new(params[:candidate])

    #    if @candidate.save
    #      render json: @candidate, status: :created, location: @candidate
    #    else
    #      render json: @candidate.errors, status: :unprocessable_entity
    #    end
    #  end

    # PATCH/PUT /candidates/1
    # PATCH/PUT /candidates/1.json
    #  def update
    #    @candidate = Candidate.find(params[:id])

    #    if @candidate.update(params[:candidate])
    #      head :no_content
    #    else
    #      render json: @candidate.errors, status: :unprocessable_entity
    #    end
    #  end

    # DELETE /candidates/1
    # DELETE /candidates/1.json
    #  def destroy
    #    @candidate = Candidate.find(params[:id])
    #    @candidate.destroy

    #    head :no_content
    #  end

    # Require strong_params/replace attr_accessible
    private
      def candidate_params
        params.require(:id, :name, :percentage, :ward, :photo_path).permit(:id, :name, :percentage, :ward, :photo_path)
      end
  end
end