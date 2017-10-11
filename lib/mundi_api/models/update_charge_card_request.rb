# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MundiApi
  # Request for updating card data
  class UpdateChargeCardRequest < BaseModel
    # Indicates if the subscriptions using this card must also be updated
    # @return [Boolean]
    attr_accessor :update_subscription

    # Card id
    # @return [String]
    attr_accessor :card_id

    # Card data
    # @return [CreateCardRequest]
    attr_accessor :card

    # Indicates a recurrence
    # @return [Boolean]
    attr_accessor :recurrence

    # A mapping from model property names to API property names.
    def self.names
      if @_hash.nil?
        @_hash = {}
        @_hash['update_subscription'] = 'update_subscription'
        @_hash['card_id'] = 'card_id'
        @_hash['card'] = 'card'
        @_hash['recurrence'] = 'recurrence'
      end
      @_hash
    end

    def initialize(update_subscription = nil,
                   card_id = nil,
                   card = nil,
                   recurrence = nil)
      @update_subscription = update_subscription
      @card_id = card_id
      @card = card
      @recurrence = recurrence
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      update_subscription = hash['update_subscription']
      card_id = hash['card_id']
      card = CreateCardRequest.from_hash(hash['card']) if hash['card']
      recurrence = hash['recurrence']

      # Create object from extracted values.
      UpdateChargeCardRequest.new(update_subscription,
                                  card_id,
                                  card,
                                  recurrence)
    end
  end
end
