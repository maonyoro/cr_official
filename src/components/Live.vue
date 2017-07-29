<template>
  <div id="live">
    <div class="row">
      <div class="col-12 mb-4">
        <a href="https://form.jotform.me/60470680579463" target="_blank" class="btn btn-info">チケットの予約はこちらから</a>
      </div>
    </div>

    <div class="row">
      <div class="col-12 mb-4">
        <a :href="require('../assets/tamakan2017.jpg')" target="_blank">
          <img src="../assets/tamakan2017thumb.jpg" class="w-50 mb-5">
        </a>
      </div>
    </div>

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
          date: '8/6(日)',
          place: '浦和Narciss',
          title: '妖華乱舞',
          open: '16:30',
          start: '17:00',
          charge: { rsv: '3000', adv: '3500', drink: '500' },
          bands: ['CRUEL REASON', 'ROMiO.', 'RF', 'MAD Night', 'バレッタ', '眼鏡ギタァ', 'raith.'],
          option: ''
        },
        {
          date: '8/16(水)',
          place: '埼玉会館 小ホール',
          title: '浦和Narciss 35th Anniversary ~漆黒のシンフォニー~ at 埼玉会館ホール',
          open: '11:00',
          start: '11:30',
          charge: { rsv: '4000', adv: '4800', drink: '500' },
          bands: ['CRUEL REASON 他'],
          option: ''
        },
        {
          date: '9/18(月・祝)',
          place: '浦和ナルシス',
          title: 'Narciss 35th Anniversary ~漆黒のシンフォニー~',
          open: '16:30',
          start: '17:00',
          charge: { rsv: '3200', adv: '3700', drink: '500' },
          bands: ['CRUEL REASON', '[enver]brain', 'マルコ', 'More', 'ヒャクモノガタリ', 'GHAZAL'],
          option: ''
        },
        {
          date: '10/9(月・祝)',
          place: '浦和ナルシス',
          title: '~漆黒のシンフォニー~ セッション大会',
          open: '未定',
          start: '未定',
          charge: { rsv: '未定', adv: '未定', drink: '500' },
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
