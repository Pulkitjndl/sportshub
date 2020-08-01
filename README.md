# sportshub

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.
there are various repositories which cab do some magic
## Repositories
# Bloc

I have Created Three Bloc files
# Bloc event
It is basically used to define to classes CoutrySelectedevent and PlayerSelectedevent
# Bloc state
it will also create some classes which would be needed in main Bloc file

# Main Bloc

it will convert the event bloc into the state bloc 

# API provider
Actually we have to crearte two end points FetchPlayerByName and FetchPlayerByCountry
so it will get the api calls from these end points

# Repository

The repository.dart serves as an abstraction between the client code and the data provider so that as a developer working on features, you don't have to know where the data is coming from. It may come from API provider or Local database. So a good practice is to use Repository pattern
