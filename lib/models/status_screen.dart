class StatusScreen {
  final String name;
  final String time;
  final String status;
  final bool seen;

  StatusScreen({required this.name, required this.time, required this.status, required this.seen});
}

List<StatusScreen> dummydata = [
  StatusScreen(
      name: 'My Status',
      time: 'Click to add status',
      status: 'https://randomuser.me/api/portraits/men/10.jpg',
      seen: false),
  StatusScreen(
      name: 'John Doe',
      time: '10:00 AM',
      status: 'https://randomuser.me/api/portraits/men/1.jpg',
      seen: true),
  StatusScreen(
      name: 'Barry Cook',
      time: '11:00 AM',
      status: 'https://randomuser.me/api/portraits/men/4.jpg',
      seen: true),
  StatusScreen(
      name: 'Jake Smith',
      time: 'Yesterday',
      status: 'https://randomuser.me/api/portraits/men/6.jpg',
      seen: false),
];
