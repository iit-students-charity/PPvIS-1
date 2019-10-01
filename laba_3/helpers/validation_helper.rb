module ValidationHelper
  def valid_user?(card_number, pin)
    user = User.find_by( card_number: card_number)
    return true if !user.nil? && user.pin == pin
    redirect '/'
  end
end