class CommentPolicy < ApplicationPolicy
  def create?
    current_user?
  end
end