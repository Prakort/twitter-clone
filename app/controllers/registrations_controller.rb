class RegistrationController < Devise::RegistrationController

    private

    def sign_up_params
        params.require(:user).permit(:name, :username, :email, :password, :password_comfirmation)
    end

    def acount_update_params
        params.require(:user).permit(:name, :username, :email, :password, :password_comfirmation, :current_password)
    end


end