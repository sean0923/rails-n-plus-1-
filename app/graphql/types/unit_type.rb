# frozen_string_literal: true

module Types
  class UnitType < Types::BaseObject
    field :id, ID, null: false
    field :u_name, String, null: false
    field :tasks, [Types::TaskType], null: false
  end
end
