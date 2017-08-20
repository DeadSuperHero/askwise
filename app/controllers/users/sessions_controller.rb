class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]
  # events binding
  after_persisting :raven_set_user_context
  after_destroy :raven_clear_user_context


  def raven_set_user_context
    Raven.user_context({
      'id' => self.user.id,
      'email' => self.user.email,
    })
  end

  def raven_clear_user_context
    Raven.user_context({})
  end
end

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
