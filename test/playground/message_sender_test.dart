import 'package:flutter_test/flutter_test.dart';

void main() {
  test("", () {
    final telegramSender = TelegramMessageSender();
    final emailSender = EmailMessageSender();
    final whatsapSender = WhatsapMessageSender();

    final spamer = Spamer([
      telegramSender,
      emailSender,
      whatsapSender,
    ]);

    spamer.spam("Buy cheap potato");
  });
}

//client code should be able to send string message to different destinations.
//This destinations can be changed dynamically.

abstract class MessageSender {
  void sendMessage(String message);
}

class TelegramMessageSender implements MessageSender {
  @override
  void sendMessage(String message) {
    // message = "Hello"
    print("Telegram: $message"); // "Telegram: Hello"
  }
}

class EmailMessageSender implements MessageSender {
  @override
  void sendMessage(String message) {
    // message = "Hello"
    print("Email: $message"); // "Telegram: Hello"
  }
}

class WhatsapMessageSender implements MessageSender {
  @override
  void sendMessage(String message) {
    // message = "Hello"
    print("Whatsap: $message"); // "Telegram: Hello"
  }
}

class Spamer {
  List<MessageSender> senders;

  Spamer(this.senders);

  spam(String message) {
    for (final sender in senders) {
      sender.sendMessage(message);
    }
  }
}
