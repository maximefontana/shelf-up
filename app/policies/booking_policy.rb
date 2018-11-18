# frozen_string_literal: true

# rubocop:disable all
class BookingPolicy < ApplicationPolicy

  def show?
    true
  end

  def new?
    create?
  end

  def create?
    user != record.user
  end

  def edit?
    update?
  end

  def update?
    user == record.store.user
  end

  def destroy?
    user == record.user
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
