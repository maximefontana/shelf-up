# frozen_string_literal: true

# rubocop:disable all
class UserPolicy < ApplicationPolicy
  def show?
    true
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
