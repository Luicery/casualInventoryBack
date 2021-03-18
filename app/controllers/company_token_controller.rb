class CompanyTokenController < Knock::AuthTokenController
  skip_before_action :verify_authenticity_token, raise: false
  def auth_params
    params.require(:auth).permit(:email, :password)
  end
end
