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
              <span class="bold">@{{m.screen}}</span>
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
          <div>
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
          <a :href="m.social.twitter">
            <icon name="twitter" scale="1"></icon>
          </a>
        </div>
        <div class="col-2">
          <icon name="retweet" scale="1"></icon>
        </div>
        <div class="col-2" @click="like(m.screen)">
          <icon name="heart-o" scale="1" v-if="!liked[m.screen]"></icon>
          <icon name="heart" scale="1" class="red" v-else></icon>
        </div>
        <div class="col-2">
          <icon name="envelope" scale="1"></icon>
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
          thumbnail: 'https://placehold.jp/150x150.png',
          img1: {
            img: 'https://placehold.jp/600x900.png',
            thumb: 'https://placehold.jp/200x300.png'
          },
          img2: {
            img: 'https://placehold.jp/600x900.png',
            thumb: 'https://placehold.jp/200x300.png'
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
          thumbnail: 'https://placehold.jp/150x150.png',
          img1: {
            img: 'https://placehold.jp/600x900.png',
            thumb: 'https://placehold.jp/200x300.png'
          },
          img2: {
            img: 'https://placehold.jp/600x900.png',
            thumb: 'https://placehold.jp/200x300.png'
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
          thumbnail: 'https://placehold.jp/150x150.png',
          img1: {
            img: 'https://placehold.jp/600x900.png',
            thumb: 'https://placehold.jp/200x300.png'
          },
          img2: {
            img: 'https://placehold.jp/600x900.png',
            thumb: 'https://placehold.jp/200x300.png'
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

</style>
