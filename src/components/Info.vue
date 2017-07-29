<template>
  <div class="info">
    <div class="row">
      <div class="col-12">
        <h3>最新のお知らせ(Twitter)</h3>
        <a class="twitter-timeline" href="https://twitter.com/cruel_reason" data-widget-id="721699534041026560">@cruel_reasonさんのツイート</a>
      </div>
    </div>
  
    <div class="row mt-4">
      <div class="col-12">
        <h3>Mail Magazine</h3>
        <p>ライブ当日情報、メンバーコメントや最新情報の不定期便・毎月20日のライブ情報などをメールにて配信しています。</p>
        <p class="text-center">件名
          <span class="text-danger">メルマガ希望</span>として
          <br>
          <input @click="copyable($event)" value="cruel-reason@zmf.co.jp">
          <br>に空メールを送信してください。
        </p>
        <p>メルマガは info@zmf.co.jp より配信されますので、受信できるようメール設定をご確認ください。</p>
      </div>
    </div>
    <div class="row mt-4">
      <div class="col-12">
        <h3>Contact</h3>
        <h4>お問い合わせ・出演依頼・ファンレター等</h4>
        <p>
          〒330-0063
          <br> 埼玉県さいたま市浦和区高砂2-1-5
          <br> Zёnit Music Factory
          <br> (ジェナイト・ミュージック・ファクトリー)
          <br>
          <br> TEL：048-824-0647 (Live House Narciss)
          <br> Mail: cruel-reason[at]zmf.co.jp
          <br>
          <br>
          <br> 当ウェブサイト内容に関するお問い合わせ
          <br> cruel.reason.official[at]gmail.com
          <br> ([at]をアットマークに置き換えて下さい)
          <br> <a href="https://twitter.com/cruel_reason">公式Twitter</a> へのDM, Reply等でも承ります。
        </p>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'info',
  data() {
    return {
    }
  },
  methods: {
    copyable(e) {
      return e.target.setSelectionRange(0, e.target.value.length)
    }
  }
}

/* eslint-disable wrap-iife */
/* eslint-disable one-var */
!function (d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0],
    p = /^http:/.test(d.location) ? 'http' : 'https'
  if (!d.getElementById(id)) {
    js = d.createElement(s)
    js.id = id
    js.src = p + '://platform.twitter.com/widgets.js'
    fjs.parentNode.insertBefore(js, fjs)
  }
}(document, 'script', 'twitter-wjs')
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

p {
  font-size: 13px;
}
</style>
