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
    true
  end

  def edit?
    update?
  end

  def update?
    user == record.user
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
