class Ability
  include CanCan::Ability

  def initialize(user)
    if user && user.admin?
      can :manage, :all
    else
      can :read, [Artwork, Gallery, User]

      if user
        can [:create, :update, :destroy], Artwork, user_id: user.id
        can [:update, :destroy], User, id: user.id
      else
        can :create, User, type: 'normal'
      end
    end
  end
end
