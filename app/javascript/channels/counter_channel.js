import consumer from "./consumer"

const channel = consumer.subscriptions.create("CounterChannel", {
  connected() {
    console.log('Connecting...');
  },

  disconnected() {
    console.log('Disconnecting...');
  },

  received(data) {
    console.log(data);

    document.querySelector('.counter').innerHTML = data;
  },

  up() {
    this.perform('up')
  },

  down() {
    this.perform('down')
  }
});

export default channel;
