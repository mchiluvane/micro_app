class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, :all
    can :manage Micropost do |m|
        m.user == user
    end
  end
end
