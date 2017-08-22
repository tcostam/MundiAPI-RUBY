# This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ).

module MundiApi
  class ListInvoicesResponse < BaseModel
    # The Invoice objects
    # @return [List of GetInvoiceResponse]
    attr_accessor :data

    # Paging object
    # @return [PagingResponse]
    attr_accessor :paging

    # A mapping from model property names to API property names
    def self.names
      if @_hash.nil?
        @_hash = {}
        @_hash["data"] = "data"
        @_hash["paging"] = "paging"
      end
      @_hash
    end

    def initialize(data = nil,
                   paging = nil)
      @data = data
      @paging = paging
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash
      # Parameter is an array, so we need to iterate through it
      data = nil
      if hash['data'] != nil
        data = Array.new
        hash['data'].each{|structure| data << (GetInvoiceResponse.from_hash(structure) if structure)}
      end
      paging = PagingResponse.from_hash(hash['paging']) if hash['paging']

      # Create object from extracted values
      ListInvoicesResponse.new(data,
                               paging)
    end
  end
end
