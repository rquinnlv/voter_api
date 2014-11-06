module V1
  class ElectionsController < ApplicationController
    # GET /elections
    # GET /elections.json
    #  def index
    #    @elections = Election.all

    #    render json: @elections
    #  end

    # GET /elections/1
    # GET /elections/1.json
    def show
      @election = Election.find(params[:id])

      render json: @election
    end

    # POST /elections
    # POST /elections.json
    #  def create
    #    @election = Election.new(params[:election])

    #    if @election.save
    #      render json: @election, status: :created, location: @election
    #    else
    #      render json: @election.errors, status: :unprocessable_entity
    #    end
    #  end

    # PATCH/PUT /elections/1
    # PATCH/PUT /elections/1.json
    #  def update
    #    @election = Election.find(params[:id])

    #    if @election.update(params[:election])
    #      head :no_content
    #    else
    #      render json: @election.errors, status: :unprocessable_entity
    #    end
    #  end

    # DELETE /elections/1
    # DELETE /elections/1.json
    #  def destroy
    #    @election = Election.find(params[:id])
    #    @election.destroy

    #    head :no_content
    #  end

    # Require strong_params/replace attr_accessible
    private
      def election_params
        params.require(:id, :date, :location).permit(:id, :date, :location)
      end  
  end
end