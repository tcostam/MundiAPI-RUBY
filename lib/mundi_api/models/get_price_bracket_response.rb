# This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ).

module MundiApi
  class GetPriceBracketResponse < BaseModel
    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :start_quantity

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :price

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :end_quantity

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :overage_price

    # A mapping from model property names to API property names
    def self.names
      if @_hash.nil?
        @_hash = {}
        @_hash["start_quantity"] = "start_quantity"
        @_hash["price"] = "price"
        @_hash["end_quantity"] = "end_quantity"
        @_hash["overage_price"] = "overage_price"
      end
      @_hash
    end

    def initialize(start_quantity = nil,
                   price = nil,
                   end_quantity = nil,
                   overage_price = nil)
      @start_quantity = start_quantity
      @price = price
      @end_quantity = end_quantity
      @overage_price = overage_price
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash
      start_quantity = hash['start_quantity']
      price = hash['price']
      end_quantity = hash['end_quantity']
      overage_price = hash['overage_price']

      # Create object from extracted values
      GetPriceBracketResponse.new(start_quantity,
                                  price,
                                  end_quantity,
                                  overage_price)
    end
  end
end
