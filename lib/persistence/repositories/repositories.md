# Repositories 

Repositories are the primary persistence interfaces in our app. Responsitories contribute a couple of important things to a well-designed app:

1. They hide low-level persistence details, ensuring the rest of our app
   doesn't have any accidental or unnecessary coupling to the implementation
   details for our data source.
2. They return objects that are appropriate for our app's domain. The data
   for these objects may come from one or more relations, may be transformed
   into a different shape, and may be returned as objects that are designed
   to be passed around the other components in our app.
