class Ability
  include CanCan::Ability
  def initialize(user)
    alias_action :create, :read, :update, :destroy, to: :crud
    alias_action :read, :update, to: :edit_model
    can :read, :all
    return unless user && user.kind == 'admin'
    if user.role == 'master'
      can :manage, :all
    elsif user.role == 'manager'
      can :dashboard, :all
      can :access, :rails_admin
      can :manage, Post
      cannot :read, [User, Chair, Occupant, Patron]
      can :edit_model, User, id: user.id
      can :crud, [Register,Profile, Location] , id: user.id
    
      
    end
  end
end