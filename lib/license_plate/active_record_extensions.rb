module LicensePlate

  module ActiveRecordExtensions

    def self.included( base )
      base.extend ActsMethods
    end

    module ActsMethods

      def license_plate( *args )
        unless included_modules.include? InstanceMethods
          self.class_eval { extend ClassMethods }
          include InstanceMethods
        end

        initialize_compositions( args )
      end
      alias_method :license_plates, :license_plate

    end

    module ClassMethods

      def initialize_compositions( attrs )
        attrs.each do |attr|
          composed_of attr,
                      :class_name => "LicensePlate::Plate",
                      :mapping => [["#{attr}_state", "state"],
                                   ["#{attr}_number", "number"],
                                   ["#{attr}_expires_on", "expires_on"]] #,
                      #:converter => :convert,
                      #:allow_nil => true
        end
      end

    end

    module InstanceMethods

    end

  end

end
