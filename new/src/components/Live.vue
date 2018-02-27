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
            <p v-html="l.option"></p>
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
          date: '3/10(土)',
          place: '浦和ナルシス',
          title: 'Unlimited colors ～CRUEL REASON 英人 Birthday～',
          open: '17:00',
          start: '17:30',
          charge: { rsv: '3000', adv: '3500', drink: '500' },
          bands: [
            'CRUEL REASON',
            'DANGER☆GANG',
            'Abyss',
            'Black Bullet',
            '月影先生(from Heretique Aventure)',
            'シークレットバンド'
          ],
          option: ''
        },
        {
          date: '3/31(土) ※maoセッション「浦和鋼鉄同好会」出演',
          place: '浦和ナルシス',
          title: '桜華爛漫',
          open: '17:00',
          start: '17:30',
          charge: { rsv: '3000', adv: '3500', drink: '500' },
          bands: [
            '浦和鋼鉄同好会 [Vo.Kiri／Gt.mao／Gt.GENTARO(ReWilD)／Ba.悠(Geomatrium)／Dr.樹]',
            'ROMiO.',
            'コインロッカーベイビー(ズ)',
            'プラチナ',
            '変態集団AnimA'
          ],
          option: '※CRUEL REASONの出演はございません'
        },
        {
          date: '4/15(日)',
          place: '浦和ナルシス',
          title: '未定',
          open: '未定',
          start: '未定',
          charge: { rsv: '-', adv: '-', drink: '500' },
          bands: ['CRUEL REASON', 'and more...'],
          option: ''
        },
        {
          date: '5/4(祝)',
          place: '浦和ナルシス',
          title: 'mao Birthday live',
          open: '未定',
          start: '未定',
          charge: { rsv: '-', adv: '-', drink: '500' },
          bands: ['CRUEL REASON', 'and more...'],
          option: ''
        },
        {
          date: '6/3(日)',
          place: '浦和ナルシス',
          title: 'Zёnit Music Factory PRESENTS『ジェナイト祭り』',
          open: '未定',
          start: '未定',
          charge: { rsv: '-', adv: '-', drink: '500' },
          bands: [
            'CRUEL REASON',
            'DANGER☆GANG',
            '[enver]brain',
            'Geomatrium',
            'RF',
            'ROMiO.'
          ],
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
