<template>
  <div class="User container">
  <mt-header title="我的易购" fixed  class="user_header">
      <router-link to="/" slot="left">
          <mt-button icon="back">返回</mt-button>
      </router-link>
      <mt-button icon="more" slot="right"></mt-button>
    </mt-header>
    <div class="sn-banner clearfix">
      <a href="javascript:;" class="user-setting1"></a>
      <div class="user-info d-flex flex-row">
        <div class="user-logo">
          <a href="javascript:;"><img src="../assets/images/0000000000_01.jpg" alt=""></a>
          <a href="javascript:;" class="login_title">去实名认证</a>
        </div>
        <div class="user-detail">
          <div class="user-name">
            <span>15000000000</span>
            <a href="javascript:;" class="user-qrcode1"></a>
          </div>
          <div class="user-content">
            <a href="">
              <div class="user-level">新用户</div>
            </a>
          </div>
        </div>
        <a href="javasctipt:;" class="super-vip-1"><span>免费试用</span></a>
      </div>
    </div>
    <div class="container-fluid m_Coupon clearfix">
      <ul class="row m-0">
        <li class="col">
          <a href="javascript:;">
            <p>1</p>
            <span>优惠卷</span>
          </a>
        </li>
        <li class="col">
          <a href="javascript:;">
            <p>1</p>
            <span>领云钻</span>
          </a>
        </li>
        <li class="col">
          <a href="javascript:;">
            <p>1</p>
            <span>任性付</span>
          </a>
        </li>
        <li class="col">
          <a href="javascript:;">
            <p>1</p>
            <span>零钱宝</span>
          </a>
        </li>
        <li class="col">
          <a href="javascript:;">
            <p>1</p>
            <span>我的钱包</span>
          </a>
        </li>
      </ul>
    </div>
    <div class="card m_Order">
    <div class="card-header d-flex justify-content-between">
      <p >我的订单</p>
      <p ><a href="javascript:;">查看全部订单</a></p>
    </div>
    <div class="card-body">
    <div class="container p-0">
      <ul class="row m_Coupon_list">
        <li class="col">
          <a href="javascript:;">
          <img src="../assets/images/daizhifu.png" alt="">
          <p>待支付</p>
          </a>
        </li>
        <li class="col">
          <a href="javascript:;">
          <img src="../assets/images/fahuo.png" alt="">
          <p>待发货</p>
          </a>
        </li>
        <li class="col">
          <a href="javascript:;">
          <img src="../assets/images/pingjia.png" alt="">
          <p>待评价</p>
          </a>
        </li>
        <li class="col">
          <a href="javascript:;">
          <img src="../assets/images/shoyhou.png" alt="">
          <p>退款/售后</p>
          </a>
        </li>
        <li class="col">
          <a href="javascript:;">
          <img src="../assets/images/qingdan.png" alt="">
          <p>常购清单</p>
          </a>
        </li>
      </ul>
    </div>
    </div>
    </div>
    
    <div class="user_nav container">
      <ul class="row">
        <li class="col-3 ">
          <a href="javascript:;">
          <img src="../assets/images/145935079880876712.png" alt="">
          <p>商品收藏</p>
          </a>
        </li>
        <li class="col-3 ">
          <a href="javascript:;">
          <img src="../assets/images/145982435451465465.png" alt="">
          <p>收藏店铺</p>
          </a>
        </li>
        <li class="col-3 ">
          <a href="javascript:;">
          <img src="../assets/images/145935082037918330.png" alt="">
          <p>足迹</p>
          </a>
        </li>
        <li class="col-3 ">
          <a href="javascript:;">
          <img src="../assets/images/153190328043455271.png" alt="">
          <p>我的发票</p>
          </a>
        </li>
        <li class="col-3 ">
          <a href="javascript:;">
          <img src="../assets/images/147614977623966757.png" alt="">
          <p>必购清单</p>
          </a>
        </li>
        <li class="col-3 ">
          <a href="javascript:;">
          <img src="../assets/images/147614988021727583.png" alt="">
          <p>拼购</p>
          </a>
        </li>
        <li class="col-3 ">
          <a href="javascript:;">
          <img src="../assets/images/147614991441631779.png" alt="">
          <p>校园VIP</p>
          </a>
        </li>
        <li class="col-3 ">
          <a href="javascript:;">
          <img src="../assets/images/153052134771491642.png" alt="">
          <p>我的活动</p>
          </a>
        </li>
      </ul>
    </div>
  </div>
</template>

<script>
import { Header } from 'mint-ui';
export default {
  name: 'User',
  components:{
    Header
  },
  data () {
    return {
      msg: 'Welcome to Your Vue.js App'
    }
  },
  mounted(){
    this.getUDatas();
    this.$store.commit('changnav', 5);//修改nav
  },
  methods:{
    getUDatas(){
      let _this = this;
      console.log("1111");
      if(window.sessionStorage.userInfo){
        //...获取用户信息
      }else{
        _this.$router.push({
						path:'/login',
					})
      }
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
a,.user span{
  font-size: .98rem;
}
a:hover{
  text-decoration:none;
}
.User{
  background: #f2f2f2;
}
.user_header{
  border-bottom:1px solid #d8d8d8;
  background: none;
  color:#333;
}
.sn-banner {
    width: 100%;
    height: 7.6rem;
    margin-top: 40px;
    padding: 1.4rem 0.56rem 0;
    background: url(../assets/images/ubanner.jpg) no-repeat;
    background-size: cover;
    position: relative;
}
.sn-banner .user-setting1{
    position: absolute;
    right: 0.5rem;
    top: 0.52rem;
    width: 0.96rem;
    height: 0.96rem;
    background: url(../assets/images/shezhi.png) no-repeat;
    background-size: contain;
}
.login_title{
  background: #666;
  padding: .3rem .6rem;
  text-align: center;
  color: #fff;
  border-radius:.3rem;
}
.user-logo {
  text-align: center;
}
.user-logo a{
  display: block;
}
.sn-banner .user-info .user-logo img {
    display: inline-block;
    width: 3.6rem;
    height: 3.6rem;
    border-radius: 1.3rem;
    border: 0.1rem solid #eaaa00;
}
.user-detail{
    margin-left: 0.4rem;
}
.sn-banner .user-info .user-detail .user-name {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    margin-bottom: 0.32rem;
}
.user-qrcode1 {
    display: block;
    width: 0.82rem;
    height: 0.82rem;
    margin-left: 1rem;
    background: url(../assets/images/erweima.png) no-repeat;
    background-size: contain;
}
 .user-level {
    width: 4.2rem;
    height: 1.6rem;
    line-height: 0.7rem;
    background: url(../assets/images/lov1.png) no-repeat;
    background-size: contain;
    padding-left: 1.6rem;
    padding-top: .2rem;
    font-size: 0.4rem;
    color: #fff;
    margin-right: 0.2rem;
    margin-top: -0.1rem;
}
 .super-vip-1 {
    display: block;
    width: 7.8rem;
    height: 4.8rem;
    position: absolute;
    right: 0;
    bottom: -4px;
    padding-top: 1rem;
    padding-left: 0.4rem;
    background: url(../assets/images/super-vip-bg1.png) no-repeat;
    background-size: contain;
    transform-origin: 0px 0px 0px;
    opacity: 1;
    transform: scale(1, 1);
}
.super-vip-1 span {
    font-size: 0.4rem;
    color: #000;
    position: absolute;
    top: 2.6rem;
    left: 2.3rem;
    -webkit-transform: rotate(5deg);
    transform: rotate(5deg);
}
.m_Coupon{
  padding: 1rem 0;
  background: #fff;
}
.m_Coupon ul{
  padding-left: 0;
  list-style: none;
}
.m_Coupon ul p{
    text-align: center;
    font-size: 0.9rem;
    color: #222;
    font-weight: normal;
}
.m_Coupon ul  span {
    display: block;
    width: 100%;
    text-align: center;
    color: #222;
}
.m_Order .card-body{
  padding: 1.25rem .4rem;
}
.m_Coupon_list{
  list-style: none;
  margin: 0;
  padding-left: 0;
  text-align:center;
}
.m_Coupon_list li{
  padding: 0;
}
.m_Coupon_list img{
  width: 2.2rem;
  height: 2.2rem;
}
.m_Coupon_list p{
  color: #222;
  font-size: .9rem;
}
.user_nav {
  background: #fff;
  margin: 1rem 0;
  padding-top: 1rem;
  padding-bottom: 1rem;
}
.user_nav ul{
  padding-left: 0;
  list-style: none;
  text-align: center;

}
.user_nav ul img{
  width: 2.2rem;
  height: 2.2rem;
}
.user_nav ul p{
  font-size: .9rem;
  color: #222;
}

</style>