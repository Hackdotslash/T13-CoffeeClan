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
        if (event) {
          this.updateBookingList()
        }
      }
      else {
        alert("Enter details to generate QR Code")
      }
    },
    updateBookingList: function (event) {
      alert("Visitor list upated")
    }

  }
}
</script>

<style>
.body {
  height: 100%;
  display: flex;
  flex-direction: column;
  align-items: center;
}

input {
  width: 200px;
}

.skip {
  height: 10px;
}
</style>
