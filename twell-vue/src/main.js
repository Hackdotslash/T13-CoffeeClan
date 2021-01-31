import Vue from 'vue'
import App from './App.vue'

Vue.config.productionTip = false
import { firestorePlugin } from 'vuefire'
import firebase from 'firebase/app'
import 'firebase/firestore'

firebase.initializeApp({
  projectId: 'twell-cba09',
  databaseURL: 'https://twell-cba09.firebaseio.com/'
})
Vue.use(firestorePlugin)

export const bookingQueue = firebase.firestore().collection('bookingQueue')
export const bookings = firebase.firestore().collection('bookings')

new Vue({
  render: h => h(App),
}).$mount('#app')
