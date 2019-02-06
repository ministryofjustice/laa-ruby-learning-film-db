class FilmPolicy < ApplicationPolicy

  def index?
    true
  end

  def edit?
    film_owners_team_same_as_current_users_team?
  end

  def update?
    film_owners_team_same_as_current_users_team?
  end

  private
  def film_owners_team_same_as_current_users_team?
    @record.user.team_id == @user.team_id
  end

  class Scope
    attr_reader :user, :scope

    def initialize(user, scope)
      @user  = user
      @scope = scope
    end

    def resolve
      @scope.for_team(user.team).order(title: :desc)
    end
  end
end
