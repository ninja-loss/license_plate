# LicensePlate

A composed_of implementation of a license plate for use in Rails projects.

## Installation

Add this line to your application's Gemfile:

    gem 'license_plate'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install license_plate

## Usage

Assuming a table people has attribute 'license_plate\_state', 'license_plate_number'.

    class Person

      license_plate :license_plate

    end

Now you can use #license_plate:

    person = Person.new

    person.license_plate.class.name # => DriversLicense::License

    person.license_plate_state      # => 'TX'
    person.license_plate.state      # => 'TX'

    person.license_plate_number     # => 'BZ1234'
    person.license_plate.number     # => 'BZ1234'

