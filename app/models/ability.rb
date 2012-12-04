class Ability
  include CanCan::Ability

  def initialize(user)
    if user && user.admin?
      can :manage, :all
    else
      can :read, [Artwork, Gallery, User]

      if user
        can :manage, Artwork, user_id: user.id
        can :manage, User, id: user.id
      else
        can :create, User, type: 'normal'
      end
    end
  end
end
