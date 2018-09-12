<template>
  <div class="RobList container">
  <mt-header fixed title="必抢清单" class="RobList_main">
  <router-link to="/" slot="left">
    <mt-button icon="back">返回</mt-button>
  </router-link>
  <mt-button icon="more" slot="right"></mt-button>
</mt-header>

<mt-navbar v-model="selected" class="bq_tab">
  <mt-tab-item id="1">精选</mt-tab-item>
  <mt-tab-item id="2">必抢清单</mt-tab-item>
  <mt-tab-item id="3">家电</mt-tab-item>
  <mt-tab-item id="4">酷比</mt-tab-item>
  <mt-tab-item id="5">超市</mt-tab-item>
  <mt-tab-item id="6">穿搭</mt-tab-item>
  <mt-tab-item id="7">置家</mt-tab-item>
  <mt-tab-item id="8">育儿</mt-tab-item>
  <mt-tab-item id="9">办公</mt-tab-item>
  <mt-tab-item id="10">运动</mt-tab-item>
  <mt-tab-item id="11">出行</mt-tab-item>
</mt-navbar>

<mt-tab-container v-model="selected">
  <mt-tab-container-item id="1">
    11111111
  </mt-tab-container-item>
  <mt-tab-container-item id="2">
    222222222
  </mt-tab-container-item>
  <mt-tab-container-item id="3">
    3333333333333333333333333
  </mt-tab-container-item>
  <mt-tab-container-item id="4">
    4444444444444444
  </mt-tab-container-item>
  <mt-tab-container-item id="5">
    555555555555555555555555
  </mt-tab-container-item>
  <mt-tab-container-item id="6">
    66666666666666666666
  </mt-tab-container-item>
  <mt-tab-container-item id="7">
    777777777777777777777777
  </mt-tab-container-item>
  <mt-tab-container-item id="8">
    888888888888888
  </mt-tab-container-item>
  <mt-tab-container-item id="9">
    9999999999999999
  </mt-tab-container-item>
  <mt-tab-container-item id="10">
    1010101010101010
  </mt-tab-container-item>
  <mt-tab-container-item id="11">
    111111111111111111111
  </mt-tab-container-item>
</mt-tab-container>

   </div>
</template>

<script>
import { Header } from 'mint-ui';
import { Navbar, TabItem } from 'mint-ui';

export default {
  name: 'RobList',
  components:{
    Header,
    Navbar,
    TabItem
  },
  mounted(){
    this.$store.commit('changnav', 3);
  },
  data () {
    return {
      msg: 'Welcome to Your Vue.js App',
      selected:"1",
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.RobList_main{
  background:none;
  border-bottom:1px solid #d8d8d8;
  color:#333;
}
.bq_tab{
  margin-top:40px;
}
</style>
