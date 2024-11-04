class ApplicationController < ActionController::API
  helper_method :usuario_logado, :logado?

  def usuario_logado
    @usuario_logado ||= Usuario.find_by(id: session[:usuario_id]) if session[:usuario_id]
  end

  def logado?
    usuario_logado.present?
  end
end
