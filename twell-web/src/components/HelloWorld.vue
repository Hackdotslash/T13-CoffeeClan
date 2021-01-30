<template>
  <body>
    <div class="body">
      <h1>{{ msg }}</h1>
      <input v-model="name" placeholder="Full Name">
      <div class="skip"></div>
      <input v-model="date" placeholder="Date of visit (dd/mm/yyyy)">
      <div class="skip"></div>
      <input v-model="count" placeholder="Number of visitors">
      <div class="skip"></div>
      <button v-on:click="generateCode(name, date, count)">Generate QR Code</button>
      <div class="skip"></div>
      <div v-if="valid == true">
        <qrcode-vue :value="value" :size="size" level="H" />
      </div>    
    </div>
  </body>

</template>

<script>
  import QrcodeVue from 'qrcode.vue'
  import { bookingQueue, bookings } from '../main'

export default {
  name: 'HelloWorld',
  props: {
    msg: String
  },
  data() {
    return {
      name: "",
      date: "",
      count: "",
      value: "",
      valid: false,
    }
  },
  components: {
    QrcodeVue,
  },
  methods: {
    generateCode: function (name, date, count) {
      this.valid = false
      this.value = name + "_" + date + "_" + count
      if (name.length > 0 && date.length > 0 && count.length > 0) {
        this.valid = true
        alert("Generate QR Code")
        this.pushToStore(name, date, count)
      }
      else {
        alert("Enter complete details to generate QR Code")
      }
    },
    pushToStore: function(name, date, count) {
      const bookedAt = Date.now()
      bookingQueue.doc(bookedAt).set({bookedAt: bookedAt})
      bookings.doc(bookedAt).set({name: name, date: date, count: count})
    }
  }
}
</script>
