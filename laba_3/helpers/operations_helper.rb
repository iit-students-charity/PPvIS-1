# frozen_string_literal: true

module OperationsHelper
  def deposit (card_number, money)
  user = User.find_by(card_number: card_number)
  unless user.nil?
    User.where(card_number: card_number).update(balance: user.balance + money.to_i)
    redirect '/home'
  end
  end

  def withdraw(card_number, money)
    user = User.find_by(card_number: card_number)
    unless user.nil? || user.balance < money.to_i
      User.where(card_number: card_number).update(balance: user.balance - money.to_i)
      redirect '/home'
    end
  end

  def transfer(from_card_number, to_card_number, money)
    sender = User.find_by(card_number: from_card_number)
    receiver = User.find_by(card_number: to_card_number)
    unless sender.nil? || receiver.nil? || sender.balance < money.to_i
      User.where(card_number: from_card_number).update(balance: sender.balance - money.to_i)
      User.where(card_number: to_card_number).update(balance: receiver.balance + money.to_i)
      redirect '/home'
    end
  end
end
