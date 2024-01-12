# frozen_string_literal: true
class Ability
  include CanCan::Ability

  def initialize(user)
    return unless user.present?

    if user.admin?
      can :manage, Client
    elsif user.support?
      can :create, Message
    end
  end
end
