# frozen_string_literal: true

# rubocop:disable all
class MessagePolicy < ApplicationPolicy
  def create?
    user == record.user || user == record.store.user
  end

  def destroy?
    user == record.user || user == record.store.user
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
