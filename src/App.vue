<template>
  <div id="app">
    <nav class="navbar bg-faded">
      <div class="container">
        <div class="row">
          <div class="col-3 clickable" @click="select('profile')">Profile</div>
          <div class="col-3 clickable" @click="select('live')">Live</div>
          <div class="col-3 clickable" @click="select('disc')">Disc</div>
          <div class="col-3 clickable" @click="select('info')">Info</div>
        </div>
      </div>
    </nav>

    <Profile v-if="current === 'profile'"></Profile>
    <Live v-if="current === 'live'"></Live>
    <Disc v-if="current === 'disc'"></Disc>
    <Info v-if="current === 'info'"></Info>
    <!-- <Contact></Contact> -->
  
  
  </div>
</template>

<script>
import Hello from './components/Hello'
import Info from './components/Info'
import Profile from './components/Profile'
import Live from './components/Live'
import Contact from './components/Contact'
import Disc from './components/Disc'

export default {
  name: 'app',
  components: {
    Hello,
    Info,
    Profile,
    Live,
    Disc,
    Contact
  },
  data() {
    return {
      current: 'profile'
    }
  },
  methods: {
    select(target) {
      this.current = target
    }
  }
}
</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}
.clickable {
  cursor: pointer
}
</style>
