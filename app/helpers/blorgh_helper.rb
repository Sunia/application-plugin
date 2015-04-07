
module BlorghHelper

  def user_signed_in?
    warden.authenticate?(scope: mapping)
  end

  def current_user
    mappings.unshift mappings.delete(favourite.to_sym) if favourite
    mappings.each do |mapping|
      current = warden.authenticate(scope: mapping)
      return current if current
    end
    nil
  end

  def authenticate_user
    unless user_signed_in?
      mappings.unshift mappings.delete(favourite.to_sym) if favourite
      mappings.each do |mapping|
        opts[:scope] = mapping
        warden.authenticate!(opts) if !devise_controller? || opts.delete(:force)
      end
    end
  end

end

