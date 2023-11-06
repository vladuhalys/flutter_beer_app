abstract class RemoteBeersEvent {
  const RemoteBeersEvent();
}

class GetBeers extends RemoteBeersEvent {
  final int page;

  GetBeers(this.page);
}
