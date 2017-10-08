class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end
  #
  # # GET /users/1
  # # GET /users/1.json
  # def show
  # end
  #
  # # GET /users/new
  def new
    @user = User.new
  end
  #
  # # GET /users/1/edit
  # def edit
  # end
  def new_active_model
    @user = ActiveModelUser.new(name: nil, name_kana: nil, tel: nil, mail: nil, birthday: nil, question: nil)
  end

  # POST /users
  def create
    @user = User.new(user_params)


    if @user.save
      flash[:success] = "User created!!!"
      redirect_to @user, notice: 'User was successfully created.'
    else
      render :new
    end
  end

  def create_active_model
    # raise
    @active_model_user = ActiveModelUser.new(active_model_user_params)

    if @active_model_user.save
      flash[:success] = "User Active_Model created!!!"
      redirect_to @active_model_user, notice: 'User was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  # def update
  #   respond_to do |format|
  #     if @user.update(user_params)
  #       format.html { redirect_to @user, notice: 'User was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @user }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @user.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # DELETE /users/1
  # DELETE /users/1.json
  # def destroy
  #   @user.destroy
  #   respond_to do |format|
  #     format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # マスアサインメント対策 Strong Parameters
    def user_params
      params.require(:user).permit(:name, :name_kana, :tel, :mail, :birthday, :question)
    end
    def active_model_user_params
      params.require(:active_model_user).permit(:name, :name_kana, :tel, :mail, :birthday, :question)
    end
end
