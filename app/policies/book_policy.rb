class BookPolicy < ApplicationPolicy

  def index?
    false
  end

  def show?
    false
  end

  def create?
    false
  end

  def new?
    create?
  end

  def update?
    user.admin? || user.id == @record.user_id
  end

  def edit?
    update?
  end

  def destroy?
    false
  end

end
