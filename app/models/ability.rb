class Ability
  include CanCan::Ability

  def initialize(user)
    if user.role? "SuperAdmin"

    elsif user.role? "DealerAdmin"

    elsif user.role? "DealerManager"

    elsif user.role? "Guest"

    end
  end
end
