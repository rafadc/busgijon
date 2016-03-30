import {Socket} from "phoenix"
import {markBus, clearMarkers} from "./buses"

let socket = new Socket("/socket", {params: {token: window.userToken}})

socket.connect()

let channel = socket.channel("bus:update", {})

channel.on("new_bus_positions", positions => {
  clearMarkers();
  for (let position of positions.positions) {
    markBus(position.x, position.y, position.line)
  }
})

channel.join()
  .receive("ok", resp => { })
  .receive("error", resp => { alert("Unable to join") })

export default socket
