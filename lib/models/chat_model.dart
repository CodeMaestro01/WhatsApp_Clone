class ChatModel {
  final String name;
  final String message;
  final String time;
  final String avatarUrl;

  ChatModel(
      {required this.name,
      required this.message,
      required this.time,
      required this.avatarUrl});
}

List<ChatModel> dummydata = [
  ChatModel(
      name: 'John Doe',
      message: "Hello World, How are you?",
      time: "10:00",
      avatarUrl: "https://randomuser.me/api/portraits/men/1.jpg"),
  ChatModel(
      name: 'Henry Dust',
      message: "Hey, how's it going man!",
      time: "08:20",
      avatarUrl: "https://randomuser.me/api/portraits/men/2.jpg"),
  ChatModel(
      name: 'Mark Spector',
      message: "Hello Flutter!!!",
      time: "13:00",
      avatarUrl: "https://randomuser.me/api/portraits/men/3.jpg"),
  ChatModel(
      name: 'Barry Cook',
      message: "Hello, Good Morning",
      time: "07:33",
      avatarUrl: "https://randomuser.me/api/portraits/men/4.jpg"),
  ChatModel(
      name: 'Sam Alex',
      message: "What'up dude!!!",
      time: "16:00",
      avatarUrl: "https://randomuser.me/api/portraits/men/5.jpg"),
  ChatModel(
      name: 'Jake Smith',
      message: "Hope you are doing well man...",
      time: "09:00",
      avatarUrl: "https://randomuser.me/api/portraits/men/6.jpg")
];
