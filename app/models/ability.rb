class Ability
  include CanCan::Ability
  def initialize(user)
    if user.kind == 'admin'
      can :manage, :all
    elsif user.kind == 'common'
      can :access, :rails_admin
      can :manage, Post
      can :read, [User, Register]
      
    end
  end
end