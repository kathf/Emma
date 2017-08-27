# The first thing we need to define is a Relation. Relations are the interface
# to a particular collection in our data source, which in SQL terms is either a
# table or a view.
module Relations
  # This relation is for the patients table.
  class Patients < ROM::Relation[:sql]

    # Define a canonical schema for this relation. This will be used when we use
    # commands to make changes to our data. It ensures that only appropriate
    # attributes are written through to the database table.
    schema(:patients) do
      attribute :id, Types::Serial
      attribute :first_names, Types::String
      attribute :last_name, Types::String
      attribute :preferred_name, Types::String
      # attribute :alternative_names, Types::String # perhaps names should be it's own table
      attribute :archived, Types::Bool

    end

    # Define some composable, reusable query methods to return filtered results
    # from our database table. We’ll use them in a moment.
    def by_id(id)
      where(id: id)
    end

    def archived
      where(archived: true)
    end
  end
end
