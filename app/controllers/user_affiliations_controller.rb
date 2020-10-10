class UserAffiliationsController < ApplicationController
  before_action :set_user_affiliation, only: [:show, :edit, :update, :destroy]

  # GET /user_affiliations
  # GET /user_affiliations.json
  def index
    @user_affiliations = UserAffiliation.all
  end

  # GET /user_affiliations/1
  # GET /user_affiliations/1.json
  def show
  end

  # GET /user_affiliations/new
  def new
    @user_affiliation = UserAffiliation.new
  end

  # GET /user_affiliations/1/edit
  def edit
  end

  # POST /user_affiliations
  # POST /user_affiliations.json
  def create
    @user_affiliation = UserAffiliation.new(user_affiliation_params)

    respond_to do |format|
      if @user_affiliation.save
        format.html { redirect_to @user_affiliation, notice: 'User affiliation was successfully created.' }
        format.json { render :show, status: :created, location: @user_affiliation }
      else
        format.html { render :new }
        format.json { render json: @user_affiliation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_affiliations/1
  # PATCH/PUT /user_affiliations/1.json
  def update
    respond_to do |format|
      if @user_affiliation.update(user_affiliation_params)
        format.html { redirect_to @user_affiliation, notice: 'User affiliation was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_affiliation }
      else
        format.html { render :edit }
        format.json { render json: @user_affiliation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_affiliations/1
  # DELETE /user_affiliations/1.json
  def destroy
    @user_affiliation.destroy
    respond_to do |format|
      format.html { redirect_to user_affiliations_url, notice: 'User affiliation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_affiliation
      @user_affiliation = UserAffiliation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_affiliation_params
      params.require(:user_affiliation).permit(:user_id, :affiliation_id)
    end
end
