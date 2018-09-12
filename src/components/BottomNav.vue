<template>
  <div class="BottmoNav container p-0 m-0">

  <ul class="BottmoNav_main row">
    <router-link tag="li" to="/home" class="tabItem col">
    <a href="javascript:;" class="tab-item-link" @Click="changactive(1)">
          <img src="../assets/images/b_navico1.png" alt="" class="nav_ico">
          <p :class="{nav_active:active==1}">首页</p>
      </a>
     </router-link>
     <router-link tag="li" to="/Classify" class="tabItem col">
    <a href="javascript:;" class="tab-item-link" @Click="changactive(2)">
          <img src="../assets/images/b_navico2.png" alt="" class="nav_ico">
          <p :class="{nav_active:active==2}">分类</p>
      </a>
     </router-link>
     <router-link tag="li" to="/RobList" class="tabItem col" >
    <a href="javascript:;" class="tab-item-link" @Click="changactive(3)">
          <img src="../assets/images/b_navico3.png" alt="" class="nav_ico">
          <p :class="{nav_active:active==3}">必抢清单</p>
      </a>
     </router-link>
     <router-link tag="li" to="/Cart" class="tabItem col">
    <a href="javascript:;" class="tab-item-link" @Click="changactive(4)">
          <img src="../assets/images/b_navico4.png" alt="" class="nav_ico">
          <p :class="{nav_active:active==4}">购物车</p>
      </a>
     </router-link>
     <router-link tag="li" to="/User" class="tabItem col">
    <a href="javascript:;" class="tab-item-link" @Click="changactive(5)">
          <img src="../assets/images/b_navico5.png" alt="" class="nav_ico">
          <p :class="{nav_active:active==5}">我的</p>
      </a>
     </router-link>
  </ul>

   </div>
</template>

<script>
import { Tabbar, TabItem } from 'mint-ui';
import { TabContainer, TabContainerItem } from 'mint-ui';


export default {
  components:{
    Tabbar,
    TabItem,
    TabContainer,
    TabContainerItem
  },
  name: 'BottmoNav',
  computed: {
  active () {
    return this.$store.state.NavActive;
  }
  },
  data () {
    return {
      msg: 'Welcome to Your Vue.js App',
    }
  },
  methods:{
    changactive:function(ids){
      console.log("ids"+ids);
      this.$store.commit('changnav', ids);
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.BottmoNav{
  /*width: 100%;*/
  position: relative;
}
.BottmoNav .BottmoNav_main{
  width:100%;
  height:3.8rem;
  background:#fff;
  color:#333;
  padding: 0;
  margin: 0;
  display: flex;
  right: 0;
  bottom: 0;
  left: 0;
  position: fixed;
  text-align: center;
}
.BottmoNav .BottmoNav_main a{
  color:#333;
  text-decoration: none;
}
.BottmoNav_main li{
  display: inline-block;
  /*width: 19%;*/
}
.BottmoNav p{
  margin:0;
  padding-bottom:.3rem;
}
.nav_ico{
  width:2.2rem;
  height:2.2rem;
}
.nav_active{
  color: #fa0;
}
</style>
