require "license_plate/version"

module LicensePlate

  autoload :ActiveRecordExtensions, "license_plate/active_record_extensions"
  autoload :Plate,                  "license_plate/plate"

end

ActiveRecord::Base.send( :include, LicensePlate::ActiveRecordExtensions ) if defined?( ActiveRecord::Base )
