<template>
  <div id="profile">
    <div class="border-bottom text-left mb-4" v-for="m in memberData" :key="m.name">
      <div class="row">
        <div class="col-12"> </div>
      </div>
      <div class="row">
        <!-- profile thumbnail -->
        <div class="col-3">
          <img :src="m.thumbnail" :alt="m.name" class="rounded-circle w-100">
        </div>
        <!-- profile text -->
        <div class="col-9">
          <div class="profile-name">
            <h5>{{m.name}}
              <span class="bold">@CRUEL_REASON</span>
            </h5>
          </div>
          <div class="profile-text">
            <p>
              <span class="bold">Part:</span> {{m.part}}
              <br>
              <span class="bold">Birthday:</span> {{m.birthday}}
              <br>
              <span class="bold">BloodType:</span> {{m.blood}}
              <br>
            </p>
          </div>
          <!-- images -->
          <div class="images">
            <lightbox :src="m.img1.img">
              <img :src="m.img1.thumb" alt="image1" class="w-45">
            </lightbox>
            <lightbox :src="m.img2.img">
              <img :src="m.img2.thumb" alt="image2" class="w-45">
            </lightbox>
          </div>
        </div>
      </div>
      <!-- social links -->
      <div class="row mt-3">
        <div class="col-2 offset-3">
          <a :href="m.social.twitter" target="_blank">
            <icon name="twitter" scale="1"></icon>
          </a>
        </div>
        <div class="col-2">
          <b-tooltip content="RT?" triggers="click" debounce=0>
            <icon name="retweet" scale="1"></icon>
          </b-tooltip>
        </div>
        <div class="col-2" @click="like(m.screen)">
          <icon name="heart-o" scale="1" v-if="!liked[m.screen]"></icon>
          <icon name="heart" scale="1" class="red" v-else></icon>
        </div>
        <div class="col-2">
          <icon name="trophy" scale="1"></icon>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'profile',
  data() {
    return {
      liked: { 'hideto': false, 'mao': false, 'yuri': false },
      msg: 'Welcome to Your Vue.js App',

      memberData: [
        {
          name: '英人',
          screen: 'hideto',
          part: 'Vocal',
          birthday: '3/9',
          blood: 'O',
          thumbnail: require('../assets/artist/hideto_thumb2017.jpg'),
          img1: {
            img: require('../assets/artist/hideto2017_1.jpg'),
            thumb: require('../assets/artist/hideto2017_1s.jpg')
          },
          img2: {
            img: require('../assets/artist/hideto2017_2.jpg'),
            thumb: require('../assets/artist/hideto2017_2.jpg')
          },
          social: {
            twitter: 'https://twitter.com/chidetor',
            blog: ''
          }
        },
        {
          name: 'mao',
          screen: 'mao',
          part: 'Guitars',
          birthday: '5/4',
          blood: 'B',
          thumbnail: require('../assets/artist/mao_thumb2017.jpg'),
          img1: {
            img: require('../assets/artist/mao2017_1.jpg'),
            thumb: require('../assets/artist/mao2017_1s.jpg')
          },
          img2: {
            img: require('../assets/artist/mao2017_2.jpg'),
            thumb: require('../assets/artist/mao2017_2.jpg')
          },
          social: {
            twitter: 'https://twitter.com/maonyoro',
            blog: ''
          }
        },
        {
          name: 'yuri',
          screen: 'yuri',
          part: 'Drums',
          birthday: '2/13',
          blood: 'O',
          thumbnail: require('../assets/artist/yuri_thumb2017.jpg'),
          img1: {
            img: require('../assets/artist/yuri2017_1.jpg'),
            thumb: require('../assets/artist/yuri2017_1s.jpg')
          },
          img2: {
            img: require('../assets/artist/yuri2017_2.jpg'),
            thumb: require('../assets/artist/yuri2017_2.jpg')
          },
          social: {
            twitter: 'https://twitter.com/tesroayuri',
            blog: ''
          }
        }
      ]
    }
  },

  methods: {
    like(name) {
      this.liked[name] = !this.liked[name]
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h1,
h2 {
  font-weight: normal;
}

ul {
  list-style-type: none;
  padding: 0;
}

li {
  display: inline-block;
  margin: 0 10px;
}

a {
  color: #42b983;
}






/* add */

.profile-text {
  font-size: 12px;
}
.images {
  /* max-height: 300px; */
}

</style>
