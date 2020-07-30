import { Controller } from 'stimulus';

import CounterChannel from '../channels/counter_channel';

export default class extends Controller {
  connect() {}

  upHttp(_event) {
    fetch('/up', {method: 'POST'})
  }

  downHttp(_event) {
    fetch('/down', {method: 'POST'})
  }

  upWebsocket(_event) {
    CounterChannel.up()
  }

  downWebsocket(_event) {
    CounterChannel.down()
  }
}
