# frozen_string_literal: true

module Types
  class BuildingType < Types::BaseObject
    field :id, ID, null: false
    field :b_name, String, null: false
    # field :units, [Types::UnitType], null: false

    field :units, [Types::UnitType], null: false

    def units
      BatchLoader::GraphQL.for(object.id).batch do |building_ids, loader|
        Unit.where(building_id: building_ids).each { |unit| loader.call(unit.id, unit) }
      end
    end
  end
end
