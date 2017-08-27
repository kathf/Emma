module Main
  module Entities
    class Patients < Dry::Types::Struct
      attribute :id, Types::Strict::Serial
      attribute :first_names, Types::Coercible::String
      attribute :last_name, Types::Coercible::String
      attribute :preferred_name, Types::Coercible::String.optional
      attribute :archived, Types::Strict::Bool
      attribute :contact_details, Types::Strict::Array.member(ContactDetail)
    end
  end
end
