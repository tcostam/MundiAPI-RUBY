# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MundiApi
  # Options for creating the card
  class CreateCardOptionsRequest < BaseModel
    # Indicates if the card should be verified before creation. If true,
    # executes an authorization before saving the card.
    # @return [Boolean]
    attr_accessor :verify_card

    # A mapping from model property names to API property names.
    def self.names
      if @_hash.nil?
        @_hash = {}
        @_hash['verify_card'] = 'verify_card'
      end
      @_hash
    end

    def initialize(verify_card = nil)
      @verify_card = verify_card
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      verify_card = hash['verify_card']

      # Create object from extracted values.
      CreateCardOptionsRequest.new(verify_card)
    end
  end
end
