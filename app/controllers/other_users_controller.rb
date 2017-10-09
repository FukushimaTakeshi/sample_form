class OtherUsersController < ApplicationController

  def new
    @other_user = OtherUser.new(name: nil, name_kana: nil, tel: nil, mail: nil, birthday: nil, question: nil)
  end

  def create
    @other_user = OtherUser.new(other_user_params)

    if @other_user.save
      flash[:success] = "Other_User created!!!"
      redirect_to @other_user, notice: 'Other User was successfully created.'
    else
      render :new
    end
  end

  private
    # マスアサインメント対策 Strong Parameters
    def other_user_params
      params.require(:other_user).permit(:name, :name_kana, :tel, :mail, :birthday, :question)
    end
end
