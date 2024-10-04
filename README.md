Flutter Practice Projects: State Management with Provider


This repository contains beginner-level Flutter app ideas to help you practice state management using the provider package. Each app demonstrates how to use ChangeNotifier to manage and notify listeners when the state changes.


App Ideas

1. To-Do List App

Description:

Build a simple to-do list app where users can add, edit, delete, and mark tasks as completed.

Provider Usage:

Use ChangeNotifier to manage the list of tasks. Notify listeners when tasks are added, updated, or deleted.

Features to Implement:

Add new tasks with a title and description.

Update task status (completed or not).

Delete tasks and filter by completed/incomplete tasks.

2. Shopping Cart App

Description:

Create a basic shopping cart app where users can add items to a cart, view the cart, and see the total price.

Provider Usage:

Use ChangeNotifier to handle the state of the shopping cart. Notify listeners when items are added, removed, or updated.

Features to Implement:

Display a list of products.

Add products to the cart and adjust quantities.

Show the total price of items in the cart.

3. Simple Counter App with Multiple Counters

Description:

Create an app with multiple counters where users can increment or decrement each counter individually.

Provider Usage:

Use ChangeNotifier to manage the state of each counter. Notify listeners when counters are incremented or decremented.

Features to Implement:

Add new counters dynamically.

Increment or decrement the count for each counter.

Reset counters individually or all at once.

4. Favorite Movies App

Description:

Build an app where users can add movies to a favorites list and view their favorite movies.

Provider Usage:

Use ChangeNotifier to manage the list of favorite movies. Notify listeners when a movie is added or removed from the favorites list.

Features to Implement:

Display a list of movies (static or fetched from an API).

Add or remove movies from the favorite list.

Show a separate screen for the list of favorite movies.

5. Weather App

Description:

Create a weather app that displays the current weather based on the user's location or a city search. Implement offline caching of weather data.

Provider Usage:

Use ChangeNotifier to manage weather data and city searches. Notify listeners when weather data is fetched or updated.

Features to Implement:

Fetch weather data using an API (e.g., OpenWeather API).

Allow users to search for weather by city name.

Display the current temperature, weather condition, and city name.