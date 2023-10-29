The model is an interface defining the data to be displayed or otherwise acted upon in the user interface.

The view is a passive interface that displays data (the model) and routes user commands (events) to the presenter to act upon that data.

The presenter acts upon the model and the view. It retrieves data from repositories (the model), and formats it for display in the view

So in the MVP pattern, the presenter is the middle mediator handling the model and updating the view. In MVP View and Presenter are completely decoupled and communicate each other by the interfaces. Because of decoupling of MVP that is easy to mock data for unit testing.
