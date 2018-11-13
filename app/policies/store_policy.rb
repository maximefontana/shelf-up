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
end
