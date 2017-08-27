# ### Repositories
#
# Now, let's define a **Repository**. Repositories are the primary persistence
# interfaces in our app. Responsitories contribute a couple of important things
# to a well-designed app:
#
# 1. They hide low-level persistence details, ensuring the rest of our app
#    doesn't have any accidental or unnecessary coupling to the implementation
#    details for our data source.
# 2. They return objects that are appropriate for our app's domain. The data
#    for these objects may come from one or more relations, may be transformed
#    into a different shape, and may be returned as objects that are designed
#    to be passed around the other components in our app.

module Repositories
  # This simple repository uses patients as its main relation.
  class Patients < ROM::Repository[:patients]
    # Define a command to create new patients.
    commands :create

    # Define methods to return the article objects we want to use within our
    # app. Each of these can access the relation via `patients` and use its
    # query methods.

    # Unlike the query methods inside the relations, these ones should not be
    # chainable. Their purpose is to return a set of patients for each
    # distinct use case within our app. This means that our repository API
    # (and therefore our persistence API in general) is a perfect reflection
    # of our app's persistence requirements.
    def [](id)
      patients.by_id(id).one!
    end

    # def archived
    #   patients.archived.to_a
    # end
  end
end
