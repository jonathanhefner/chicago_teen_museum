class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, [Artwork, Comment, Gallery, User]

    if user
      can :create, [Artwork, Comment], user_id: user.id

      if user.admin?
        can :create, Gallery
        can [:update, :destroy], :all
      else
        can [:update, :destroy], Artwork, user_id: user.id
        can [:update, :destroy], User, id: user.id
      end
    else
      can :create, User, role: 'normal'
    end
  end
end
