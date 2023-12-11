import consumer from "channels/consumer";

consumer.subscriptions.create("CounterChannel", {
  connected() {
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    const el = document.body.querySelector("#counter-value");
    if (el) {
      el.innerHTML = data.value;
    }
  },
});
