class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  require 'csv'

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def import

  end

  def csv_import
    if params[:file]
        CSV.foreach(params[:file], headers: true) do |data|
            user = data.to_hash
            if user["Affiliations"].blank?
                next
            else
                split_name = user["Name"].split(" ")
                if split_name.size > 2
                    first_name = split_name[0].capitalize
                    for i in 1..(split_name.size-2)
                        first_name = first_name + " #{split_name[i].capitalize}"
                    end
                    last_name = split_name.last.capitalize
                elsif split_name.size == 1
                    first_name = split_name[0].capitalize
                    last_name = ""
                else
                    first_name = split_name[0].capitalize
                    last_name = split_name.last.capitalize
                end

                csv_user = User.create(
                    first_name: first_name,
                    last_name: last_name,
                    species: user["Species"],
                    gender: user["Gender"],
                    weapon: user["Weapon"],
                    vehicle: user["Vehicle"]
                ) 

                if Location.exists?(title: user["Location"])
                    location = Location.find_by(title: user["Location"].titlecase)
                else
                    location = Location.create(title: user["Location"].titlecase)
                end

                if Affiliation.exists?(title: user["Affiliations"])
                    affiliation = Affiliation.find_by(title: user["Affiliations"])
                else
                    affiliation = Affiliation.create(title: user["Affiliations"])
                end

                csv_user.locations << location
                csv_user.affiliations << affiliation
            end
        end

        redirect_to url_for(controller: :users, action: :import)
        return
    else
        redirect_to url_for(controller: :users, action: :import)
        return
    end
  end

  def datatable_view
    @users = User.all
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:first_name, :last_name, :species, :gender, :weapon, :vehicle)
    end
end
