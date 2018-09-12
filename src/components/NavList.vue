<template>
  <div class="">
  <ul class="clearfix">
  <li class="NavList_item" v-for="(item, index) in NavListData" :key="item.url">
  <img class="homebanner" :src="imgDatas[index]"/>
  <p v-text="item.msg"></p>
  </li>
  </ul>
  <div class="nav_rnews d-flex d-flex justify-content-start">
     <img src="../assets/images/153248811787088861.png" alt="">
      <div>
          <p>就算颜值不逆天，也能凭白牙倾国倾城</p>
          <p>手机充电速度排名！这款手机仅被Find X超越！</p>
      </div>
  </div>
   </div>
</template>

<script>
export default {
    data(){
        return {
            NavListData:[
                {url:"../assets/images/list_ico1.png", msg:"爆款手机"},
                {url:'../assets/images/list_ico2.png', msg:"苏尼超市"},
                {url:'../assets/images/list_ico3.png', msg:"母婴玩具"},
                {url:'../assets/images/list_ico4.png', msg:"拼购"},
                {url:'../assets/images/list_ico5.png', msg:"生活家电"},
                {url:'../assets/images/list_ico6.png', msg:"大优惠"},
                {url:'../assets/images/list_ico7.png', msg:"赚钱"},
                {url:'../assets/images/list_ico8.png', msg:"领云钻"},
                {url:'../assets/images/list_ico9.png', msg:"苏尼家电"},
                {url:'../assets/images/list_ico10.png',msg:"分类"}
            ],
            imgDatas : [require('../assets/images/list_ico1.png'),
                require('../assets/images/list_ico2.png'),
                require('../assets/images/list_ico3.png'),
                require('../assets/images/list_ico4.png'),
                require('../assets/images/list_ico5.png'),
                require('../assets/images/list_ico6.png'),
                require('../assets/images/list_ico7.png'),
                require('../assets/images/list_ico8.png'),
                require('../assets/images/list_ico9.png'),
                require('../assets/images/list_ico10.png')]
        }
    }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
ul{
    padding:0;
}
.NavList_item{
    padding-top: .4rem;
    width:20%;
    float:left;
    list-style:none;
    text-align:center;
}
.NavList_item img{
    width:50px;
    height:50px;
}
.NavList_item p{
    height: .9rem;
    line-height:.9rem;
    font-size:.8rem;
    margin-top: .4rem;
}

.nav_rnews{
    /*padding-left:3rem;*/
}
.nav_rnews img{
width: 4rem;
height: 4rem;
}
</style>
