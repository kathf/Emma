module Relations
  class ContactDetails < ROM::Relation[:sql]
    schema(:contact_details) do
      attribute :id, Types::Serial
      attribute :patient_id, Types::ForeignKey(:patients)
      attribute :email, Types::String
      attribute :address_line_1, Types::String
      attribute :address_line_2, Types::String
      attribute :address_line_3, Types::String
      attribute :suburb, Types::String
      attribute :postcode, Types::Int
      attribute :state, Types::String
      attribute :country, Types::String
      attribute :email, Types::String

      associate do
        belongs :patients
      end
    end
  end
end
