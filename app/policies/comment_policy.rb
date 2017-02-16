class CommentPolicy < ApplicationPolicy
  def create?
    current_user?
  end

  def destroy?
    user.present? && can_moderate?
  end
end