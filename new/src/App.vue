<template>
  <div id="app">
    <!-- ヘッダ -->
    <nav class="navbar bg-faded sticky-top mb-3">
      <div class="container">
        <div class="row text-left">
          <div class="col-12 mt-1">
            <h1 @click="select('hello')" v-if="current!=='hello'" class="clickable">CRUEL REASON Official Website</h1>
          </div>
        </div>
        <div class="row">
          <div class="col-3 clickable" @click="select('profile')" :class="{'selected': current==='profile'}">
            <icon name="user-circle" scale="1.5" class="mt-2"></icon>
            <small class="form-text text-muted mb-1">Profile</small>
          </div>
          <div class="col-3 clickable" @click="select('live')" :class="{'selected': current==='live'}">
            <icon name="music" scale="1.5" class="mt-2"></icon>
            <small class="form-text text-muted mb-1">Live</small>
          </div>
          <div class="col-3 clickable" @click="select('media')" :class="{'selected': current==='media'}">
            <icon name="headphones" scale="1.5" class="mt-2"></icon>
            <small class="form-text text-muted mb-1">Media</small>
          </div>
          <div class="col-3 clickable" @click="select('info')" :class="{'selected': current==='info'}">
            <icon name="info" scale="1.5" class="mt-2"></icon>
            <small class="form-text text-muted mb-1">Info</small>
          </div>
        </div>
      </div>
    </nav>

    <div class="container contents">
      <Hello v-if="current === 'hello'"></Hello>
      <Profile v-if="current === 'profile'"></Profile>
      <Live v-if="current === 'live'"></Live>
      <Media v-if="current === 'media'"></Media>
      <Info v-if="current === 'info'"></Info>
    </div>

  </div>
</template>

<script>
import Hello from './components/Hello'
import Info from './components/Info'
import Profile from './components/Profile'
import Live from './components/Live'
import Media from './components/Media'

export default {
  name: 'app',
  components: {
    Hello,
    Info,
    Profile,
    Live,
    Media
  },
  data() {
    return {
      current: 'hello'
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
  max-width: 800px;
  margin-left: auto;
  margin-right: auto;
}

.clickable {
  cursor: pointer;
}

.no-pm {
  padding: 0;
  margin: 0;
}

.selected {
  border-bottom: 2px solid #1da1f2
}
/* .contents {
  margin-top: 85px;
} */

h1 {
  font-size: 13px;
}
h3 {
  font-size: 24px;
}

h4 {
  font-size: 17px;
}
h5 {
  font-size: 15px;
}
p {
  font-size: 12px;
}
li {
  font-size: 13px;
}

.bold {
  font-weight: bold;
}

.w-45 {
  width: 45%;
}

.w-60 {
  width: 60%;
}

.red {
  color: #FF0000;
}
.border-bottom {
  border-bottom: 1px solid #cfcfcf;
}

/* override bootstrap */

.navbar {
  padding: 0;
}

.form-text {
  margin-top: 0;
}
</style>
