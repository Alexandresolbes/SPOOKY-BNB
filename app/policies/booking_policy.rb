class BookingPolicy < ApplicationPolicy
  def show?
    record.user == user || record.listing.user == user
  end

  def create?
    true
  end

  def update?
    record.user == user || record.listing.user == user
  end

  def destroy?
    record.user == user || record.listing.user == user
  end

  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end
end
