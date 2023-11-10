abstract class RemoteBeersEvent {
  const RemoteBeersEvent();
}

class GetBeersInit extends RemoteBeersEvent {}

class PaginateBeers extends RemoteBeersEvent {}
