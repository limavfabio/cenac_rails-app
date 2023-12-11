import consumer from "channels/consumer"

consumer.subscriptions.create("CounterChannel", {
  connected() {
    console.log("Counter Channel is Connected!")
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    console.log("Message was received from counter_channel: ", data.value)
  }
});
