# frozen_string_literal: true

# rubocop:disable all
class StorePolicy < ApplicationPolicy

  class Scope < Scope
    def resolve
      scope.all
    end
  end

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
end
