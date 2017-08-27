module Relations
  class Patients < ROM::Relation[:sql]

    schema(:patients) do
      attribute :id, Types::Strict::Serial
      attribute :first_names, Types::Coercible::String
      attribute :last_name, Types::Coercible::String
      attribute :preferred_name, Types::Coercible::String.optional
      # attribute :alternative_names, Types::String # perhaps names should be it's own table
      attribute :archived, Types::Strict::Bool

      associate do
        many :contact_details
      end
    end

    def by_id(id)
      where(id: id)
    end

    def archived
      where(archived: true)
    end
  end
end
