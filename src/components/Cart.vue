<template>
  <div class="Cart container">
  <mt-header fixed class="cart_nav"  title="购物车">
  <router-link to="/" slot="left">
    <mt-button icon="back">返回</mt-button>
  </router-link>
  <mt-button icon="more" slot="right"></mt-button>
</mt-header>

  <div class="Tips">
  <span>登陆后同步电脑与手机购物车的商品</span>
  <router-link tag="a" to="/login" class="tabItem">
  <button type="button" class="btn btn-info">登录</button>
</router-link>
  </div>
  <div>
  <header><h3>您可能感兴趣的商品</h3><i></i></header>
  <ul class="tj_shop">
  <li v-for="(item, index) in tjShopDate" :key="imgDatas[index]">
  <!--<img class="tj_thumbnail" :src="imgDatas[index]">-->
   <img v-lazy.container="imgDatas[index]" class="tj_thumbnail">
  <p v-text="item.title"></p>
  <div>
  <span class="Price">￥{{item.Price}}</span>
  <a href="javascript:;" class="addcard"></a>
  </div>
  </li>
  </ul>
  </div>
</div>
</template>

<script>
import { Header } from 'mint-ui';
import { Button } from 'mint-ui';
export default {
  name: 'Cart',
  components:{
    Header,
    Button,
  },
  mounted(){
    this.$store.commit('changnav', 4);
  },
  data () {
    return {
      msg: 'Welcome to Your Vue.js App',
      tjShopDate:[
                {thumbnail:"../assets/images/shop1.png", title:"中裕(ZHONGYU)原味小麦粉（5kg）面粉富强粉中筋面粉",Price:"28.90"},
                {thumbnail:"../assets/images/shop2.png", title:"五丰优选东北珍珠米-东北米/ 粳米/ 10kg/袋 东北大米",Price:"28.90"},
                {thumbnail:"../assets/images/shop3.png", title:"上一道 南瓜自发粉 1250g 小麦自发粉 膳食纤维 馒头 包子 烙饼用",Price:"28.90"},
                {thumbnail:"../assets/images/shop4.png", title:"宝宝金水 婴儿洗衣皂125g*3块 宝宝肥皂尿布皂",Price:"28.90"},
                {thumbnail:"../assets/images/shop5.png", title:"格兰仕（Galanz）电烤箱KWS1530X-H7R 30L大容量360度旋转烤叉上下发热管独立加热",Price:"28.90"},
                {thumbnail:"../assets/images/shop6.png", title:"好吃点 饼干 香脆杏仁饼800g(饼干礼盒)",Price:"28.90"},
                {thumbnail:"../assets/images/shop7.png", title:"望乡鸡蛋挂面1kg袋装鸡蛋面条细面方便速食",Price:"28.90"},
                {thumbnail:"../assets/images/shop8.png", title:"雪花啤酒冰酷拉罐330ml*24听",Price:"28.90"},
                {thumbnail:"../assets/images/shop9.png", title:"中裕(ZHONGYU)多用途麦芯粉（2.5kg）面粉富强粉中筋面粉 水饺面条大饼馒头用粉 食用粉 通用粉 中裕出品",Price:"28.90"},
                {thumbnail:"../assets/images/shop10.png", title:"中裕(ZHONGYU)面包用小麦粉2.5kg拉丝烘焙原料 披萨粉高筋烘焙面粉面包粉面包机专用中裕出品",Price:"28.90"},
                {thumbnail:"../assets/images/shop11.png", title:"九阳（Joyoung）电烤箱 KX-30J601 30升大容量 上下管独立加热 家用烘焙蛋糕 多功能烤箱",Price:"28.90"},
                {thumbnail:"../assets/images/shop12.png", title:"好吃点 饼干 香脆腰果饼108g袋装",Price:"28.90"},
                {thumbnail:"../assets/images/shop13.png", title:"雪花啤酒清爽拉罐六连包330ml*6罐",Price:"28.90"},
                {thumbnail:"../assets/images/shop14.png", title:"中裕(ZHONGYU)雪花小麦粉（煮）1kg面粉富强粉中筋面粉 水饺面条大饼馒头用粉 食用粉 通用粉 中裕出品",Price:"28.90"},
                {thumbnail:"../assets/images/shop15.png", title:"中裕(ZHONGYU)雪花小麦粉（蒸）1Kg面粉富强粉中筋面粉 水饺面条大饼馒头用粉 食用粉 通用粉 中裕出品",Price:"28.90"},
                {thumbnail:'../assets/images/shop16.png',title:"西瑞驼铃花原味小麦粉 面粉 5kg",Price:"28.90"}
            ],
            imgDatas : [require('../assets/images/shop1.jpg'),
                require('../assets/images/shop2.jpg'),
                require('../assets/images/shop3.jpg'),
                require('../assets/images/shop4.jpg'),
                require('../assets/images/shop5.jpg'),
                require('../assets/images/shop6.jpg'),
                require('../assets/images/shop7.jpg'),
                require('../assets/images/shop8.jpg'),
                require('../assets/images/shop9.jpg'),
                require('../assets/images/shop10.jpg'),
                require('../assets/images/shop11.jpg'),
                require('../assets/images/shop12.jpg'),
                require('../assets/images/shop13.jpg'),
                require('../assets/images/shop14.jpg'),
                require('../assets/images/shop15.jpg'),
                require('../assets/images/shop16.jpg')]
        
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.Cart{
  padding-top:40px;
}
.cart_nav{
  background:none;
  color:#333;
  border-bottom:1px solid #d8d8d8;
  font-size:1rem;
}
.Tips{
  height:6rem;
  line-height:6rem;
  text-align: center;
  background-color: #fff0c9;
  font-size: 12px;
}
.tj_thumbnail{
  width:100%;
}
.tj_shop{
  width:100%;
  margin:0;
  padding:0;
  list-style:none;
  padding-bottom:4rem;
}
.tj_shop li{
  display:inline-block;
  width:48%;
  margin-left:1%;
  background:#fff;
  border:1px solid #d5d5d5;
  padding:.5rem;
  box-sizing:border-box;
  margin-bottom:.4rem;
}
.Price{
  float:left;
}
.addcard{
  float:right;
  width: 40px;
  height: 38px;
  background-image:url(../assets/images/addCart.png);
}
image[lazy=loading] {
  width: 100%;
  height:auto ;
}
header{
  position: relative; 
  background-color: #f2f2f2;
}
header h3{
  position: relative;
  margin: .5rem 0;
  width: 35%;
  left: 32%;
  text-align: center;
  color: #999; 
  background-color: #f2f2f2;
  z-index: 6;
  font-size: .8rem;
}
header i{
  position: absolute;
  margin-top: -1rem;
  width: 100%;
  height: 0.04rem;
  background-color: #999;
  z-index: 5;
}
</style>
