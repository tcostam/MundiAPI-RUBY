# This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ).

require 'date'
module MundiApi
  class GetPlanItemResponse < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :status

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :created_at

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :updated_at

    # TODO: Write general description for this method
    # @return [GetPricingSchemeResponse]
    attr_accessor :pricing_scheme

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :description

    # TODO: Write general description for this method
    # @return [GetPlanResponse]
    attr_accessor :plan

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :quantity

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :cycles

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :deleted_at

    # A mapping from model property names to API property names
    def self.names
      if @_hash.nil?
        @_hash = {}
        @_hash["id"] = "id"
        @_hash["name"] = "name"
        @_hash["status"] = "status"
        @_hash["created_at"] = "created_at"
        @_hash["updated_at"] = "updated_at"
        @_hash["pricing_scheme"] = "pricing_scheme"
        @_hash["description"] = "description"
        @_hash["plan"] = "plan"
        @_hash["quantity"] = "quantity"
        @_hash["cycles"] = "cycles"
        @_hash["deleted_at"] = "deleted_at"
      end
      @_hash
    end

    def initialize(id = nil,
                   name = nil,
                   status = nil,
                   created_at = nil,
                   updated_at = nil,
                   pricing_scheme = nil,
                   description = nil,
                   plan = nil,
                   quantity = nil,
                   cycles = nil,
                   deleted_at = nil)
      @id = id
      @name = name
      @status = status
      @created_at = created_at
      @updated_at = updated_at
      @pricing_scheme = pricing_scheme
      @description = description
      @plan = plan
      @quantity = quantity
      @cycles = cycles
      @deleted_at = deleted_at
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash
      id = hash['id']
      name = hash['name']
      status = hash['status']
      created_at = DateTime.rfc3339(hash['created_at']) if hash['created_at']
      updated_at = DateTime.rfc3339(hash['updated_at']) if hash['updated_at']
      pricing_scheme = GetPricingSchemeResponse.from_hash(hash['pricing_scheme']) if hash['pricing_scheme']
      description = hash['description']
      plan = GetPlanResponse.from_hash(hash['plan']) if hash['plan']
      quantity = hash['quantity']
      cycles = hash['cycles']
      deleted_at = DateTime.rfc3339(hash['deleted_at']) if hash['deleted_at']

      # Create object from extracted values
      GetPlanItemResponse.new(id,
                              name,
                              status,
                              created_at,
                              updated_at,
                              pricing_scheme,
                              description,
                              plan,
                              quantity,
                              cycles,
                              deleted_at)
    end
  end
end
