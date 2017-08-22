# This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ).

require 'date'
module MundiApi
  class CreateUsageRequest < BaseModel
    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :quantity

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :description

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :used_at

    # A mapping from model property names to API property names
    def self.names
      if @_hash.nil?
        @_hash = {}
        @_hash["quantity"] = "quantity"
        @_hash["description"] = "description"
        @_hash["used_at"] = "used_at"
      end
      @_hash
    end

    def initialize(quantity = nil,
                   description = nil,
                   used_at = nil)
      @quantity = quantity
      @description = description
      @used_at = used_at
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash
      quantity = hash['quantity']
      description = hash['description']
      used_at = DateTime.rfc3339(hash['used_at']) if hash['used_at']

      # Create object from extracted values
      CreateUsageRequest.new(quantity,
                             description,
                             used_at)
    end
  end
end
