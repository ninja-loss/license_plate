module LicensePlate

  class Plate

    attr_reader :state, :number, :expires_on

    def initialize( state, number, expires_on=nil )
      @state      = state
      @number     = number
      @expires_on = expires_on

      self.freeze
    end

    def expired?
      !expires_on.blank? && Time.zone.now >= expires_on
    end

    def description
      [state, number].reject( &:blank? ).
                      join( ' ' )
    end

    def to_s
      description
    end

  end

end
