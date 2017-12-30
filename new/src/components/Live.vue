<template>
  <div id="live">
    <div class="row">
      <div class="col-12 mb-4">
        <a href="https://form.jotform.me/60470680579463" target="_blank" class="btn btn-info">チケットの予約はこちらから</a>
      </div>
    </div>

    <!-- div class="row">
      <div class="col-12 mb-4">
        <a :href="require('../assets/tamakan2017.jpg')" target="_blank">
          <img src="../assets/tamakan2017thumb.jpg" class="w-50 mb-5">
        </a>
      </div>
    </div -->

    <div class="border-bottom text-left mb-4 " v-for="l in liveData" :key="l.date">
      <div class="row">
        <!-- とりあえずcol-12でベタッと -->
        <div class="col-12">
          <h3>{{l.date}}</h3>
          <h4>"{{l.title}}" </h4>
          <ul>
            <li>会場: {{l.place}}</li>
            <li>OPEN {{l.open}} / START {{l.start}}</li>
          </ul>
          <h5 class="bold">Charge:</h5>
          <ul>
            <li>前売 {{l.charge.rsv}}円 / 当日 {{l.charge.adv}}円</li>
            <li>(drink charge {{l.charge.drink}}円)</li>
          </ul>
          <h5 class="bold">出演</h5>
          <ul>
            <li v-for="b in l.bands" :key="b">{{b}}</li>
          </ul>
          <div v-if="!!l.option" class="mb-1">
            <span v-html="l.option"></span>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'live',
  data() {
    return {
      liveData: [
        {
          date: '1/6(土)',
          place: '浦和ナルシス',
          title: '～漆黒のシンフォニー～2018',
          open: '17:00',
          start: '17:30',
          charge: { rsv: '3200', adv: '3700', drink: '500' },
          bands: ['CRUEL REASON', 'Geomatrium', 'マーブル', '白夢', '勇†気セッション'],
          option: ''
        },
        {
          date: '1/20(土)',
          place: '池袋CYBER',
          title: 'LuLu主催 『隆佑医師BD記念祭 Ryu-suke Rock Festival 2018～Rebirth～』',
          open: '16:00',
          start: '16:30',
          charge: { rsv: '3500', adv: '4000', drink: '600' },
          bands: ['CRUEL REASON', 'LuLu', 'La\'veil MizeriA', 'G.S.I', '変態集団AnimA', 'CRISIS', 'SARRMATH', 'LOVE TRAP'],
          option: '<p>【チケット発売中】<br>[A] 池袋CYBER店頭販売(A1～A50 シャッフル、A51～整理番号順) ※1人3枚まで / [B] バンド予約</p>'
        },
        {
          date: '2/11(日)',
          place: '浦和ナルシス',
          title: 'Unlimited colors～CRUEL REASON yuri Birthday～',
          open: '16:30',
          start: '17:00',
          charge: { rsv: '3000', adv: '3500', drink: '500' },
          bands: ['CRUEL REASON', 'and more...'],
          option: ''
        },
        {
          date: '3/10(土)',
          place: '浦和ナルシス',
          title: '英人Birthday',
          open: '未定',
          start: '未定',
          charge: { rsv: '-', adv: '-', drink: '500' },
          bands: ['CRUEL REASON', 'and more...'],
          option: ''
        }
      ]

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

a {
  color: #42b983;
}

a.btn {
  color: #FFF;
}
</style>
