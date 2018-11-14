# frozen_string_literal: true

# rubocop:disable all
class StorePolicy < ApplicationPolicy

  def index?
    true
  end

  def show?
    true
  end

  def new?
    create?
  end

  def create?
    user == record.user ? false : true
  end

  def edit?
    update?
  end

  def update?
    true
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
