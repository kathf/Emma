module Repositories
  # This simple repository uses patients as its main relation.
  class Patients < ROM::Repository[:patients]

    relations :contact_details

    commands :create, update: :by_id

    def [](id)
      patients.by_id(id).one!
    end

    # def archived
    #   patients.archived.to_a
    # end
  end
end
