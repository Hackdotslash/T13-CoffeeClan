import { createApp } from 'vue'
import App from './App.vue'
import './index.css'

import VueFire from 'vuefire'
import firebase from 'firebase/app'
import 'firebase/firestore'

Vue.use(VueFire)
firebase.initializeApp({
  projectId: 'twell-cba09',
  databaseURL: 'https://twell-cba09.firebaseio.com/'
})

createApp(App).mount('#app')
export const bookingQueue = firebase.firestore().collection('bookingQueue')
export const bookings = firebase.firestore().collection('bookings')
