# frozen_string_literal: true
class Ability
  include CanCan::Ability

  def initialize(user)
    return unless user.present?

    if user.role == "broker"
      can :edit, Share
	  can :read, Share
    elsif user.role == "buyer"
      can :trade, Share
	  can :read, Share
    end
  end
end
