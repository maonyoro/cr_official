<template>
  <div class="mymedia">
    <!-- select category -->
    <div class="row">
      <div class="col-12">
        <div class="btn-group" data-toggle="buttons">
          <label class="btn" :class="isDiscoSelected() ? 'btn-info' : 'btn-outline-info'">
            <input name="category" type="radio" @click="click('disco')" :checked="selected==='disco'"> Discography
          </label>
          <label class="btn" :class="isMovieSelected() ? 'btn-info' : 'btn-outline-info'">
            <input name="category" type="radio" @click="click('movie')" :checked="selected==='movie'"> Movie
          </label>
        </div>
      </div>
    </div>

    <!-- Movie -->
    <div class="row mt-3" v-show="isMovieSelected()">
      <div class="col-12">
        <!-- 2nd-->
        <h5 class="text-left">3rdミニアルバム「Advancement...」プレビュー</h5>
        <iframe width="320" height="320" src="https://www.youtube.com/embed/1nFqU-kmrEI" frameborder="0" allowfullscreen class="w-100 mb-5"></iframe>
        <!-- 2nd-->
        <h5 class="text-left">2ndミニアルバム「狂深層目録」プレビュー</h5>
        <iframe width="320" height="320" src="https://www.youtube.com/embed/sZ21CWxQEQY" frameborder="0" allowfullscreen class="w-100 mb-5"></iframe>
        <!-- 1st-->
        <h5 class="text-left">1stミニアルバム「夢幻泡影」プレビュー</h5>
        <iframe width="320" height="320" src="https://www.youtube.com/embed/PEOCj2eSNQs" frameborder="0" allowfullscreen class="w-100 mb-5"></iframe>
      </div>
    </div>

    <!-- Discography -->
    <div class="mt-4" v-show="isDiscoSelected()">

      <div id="3rd" class="mb-4">
        <div class="row">
          <div class="col-12 text-left mb-2">
            <h4 class="border-bottom">3rd Mini Album 「Advancement...」</h4>
          </div>
        </div>
        <div class="row text-left">
          <div class="col-5">
            <lightbox :src="require('../assets/jacket/3rd_jacket.png')">
              <img src="../assets/jacket/3rd_jacket.png" class="w-100">
            </lightbox>
            <ol class="ml-4 mt-3">
              <li>泡</li>
              <li>Break from the Past</li>
              <li>Claustrophobia</li>
              <li>沫</li>
              <li>Cry of minority</li>
              <li>étoile</li>
            </ol>
          </div>
          <div class="col-7">
            <iframe scrolling="no" id="hearthis_at_user_81344-5015992" width="100%" height="350" src="https://hearthis.at/set/81344-5015992/embed/" frameborder="0" allowtransparency></iframe>
          </div>
        </div>
        <div class="row">
          <div class="col-12 text-left">
            <ul>
              <li>商品番号 AZMF-3110</li>
              <li>価格 2160円(税込)</li>
              <li>発売元/販売元 有限会社ジェナイトミュージックファクトリー</li>
            </ul>
            <p>ライブ会場物販にて販売中</p>
          </div>
        </div>
      </div>

      <div id="2nd" class="mb-4">
        <div class="row">
          <div class="col-12 text-left mb-2">
            <h4 class="border-bottom">2nd Mini Album 「狂深層目録」</h4>
          </div>
        </div>
        <div class="row text-left">
          <div class="col-5">
            <lightbox :src="require('../assets/jacket/2nd_jacket.png')">
              <img src="../assets/jacket/2nd_jacket_s.png" class="w-100">
            </lightbox>
          </div>
          <div class="col-7">
            <ol>
              <li>虚絶</li>
              <li>心傷</li>
              <li>Algorithmic Society</li>
              <li>CREATURE</li>
              <li>幻添雨</li>
            </ol>
          </div>
        </div>
        <div class="row">
          <div class="col-12 text-left">
            <a href="https://hearthis.at/cruel-reason/set/63253-5015992/">試聴(外部リンク)</a>
            <ul>
              <li>商品番号 AZMF-3105</li>
              <li>価格 2160円(税込)</li>
              <li>発売元/販売元 有限会社ジェナイトミュージックファクトリー</li>
            </ul>
            <p>ライブ会場物販にて販売中</p>
          </div>
        </div>
      </div>
  
      <div id="1st">
        <div class="row">
          <div class="col-12 text-left mb-2">
            <h4 class="border-bottom">1st Mini Album 夢幻泡影</h4>
          </div>
        </div>
        <div class="row text-left">
          <div class="col-5">
            <lightbox :src="require('../assets/jacket/mugen_jacket.png')">
              <img src="../assets/jacket/mugen_jacket_s.png" class="w-100">
            </lightbox>
          </div>
          <div class="col-7">
            <ol>
              <li>∞</li>
              <li>Gimlet</li>
              <li>the season</li>
              <li>欠落少女</li>
              <li>COLOR</li>
            </ol>
          </div>
        </div>
        <div class="row">
          <div class="col-12 text-left">
            <a href="https://hearthis.at/cruel-reason/set/52282-5015992/" target="_blank">試聴(外部リンク)</a>
            <ul style="list-style:none">
              <li>商品番号 AZMF-3097</li>
              <li>価格 2160円(税込)</li>
              <li>発売元/販売元 有限会社ジェナイトミュージックファクトリー</li>
            </ul>
            <p>ライブ会場物販にて販売中</p>
          </div>
        </div>
  
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'disc',
  data() {
    return {
      selected: 'disco'
    }
  },

  methods: {
    click(el) {
      this.selected = el
    },
    isMovieSelected() {
      return this.selected === 'movie'
    },
    isDiscoSelected() {
      return this.selected === 'disco'
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

ol {
  padding: 0;
}

ul {
  padding: 0;
  list-style: none;
  font-size: 75%;
}

a {
  color: #42b983;
}
</style>
