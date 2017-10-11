# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MundiApi
  # Response object for getting an order item
  class GetOrderItemResponse < BaseModel
    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :amount

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :description

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :quantity

    # Seller data
    # @return [GetSellerResponse]
    attr_accessor :get_seller_response

    # A mapping from model property names to API property names.
    def self.names
      if @_hash.nil?
        @_hash = {}
        @_hash['amount'] = 'amount'
        @_hash['description'] = 'description'
        @_hash['quantity'] = 'quantity'
        @_hash['get_seller_response'] = 'GetSellerResponse'
      end
      @_hash
    end

    def initialize(amount = nil,
                   description = nil,
                   quantity = nil,
                   get_seller_response = nil)
      @amount = amount
      @description = description
      @quantity = quantity
      @get_seller_response = get_seller_response
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      amount = hash['amount']
      description = hash['description']
      quantity = hash['quantity']
      get_seller_response = GetSellerResponse.from_hash(hash['GetSellerResponse']) if
        hash['GetSellerResponse']

      # Create object from extracted values.
      GetOrderItemResponse.new(amount,
                               description,
                               quantity,
                               get_seller_response)
    end
  end
end
