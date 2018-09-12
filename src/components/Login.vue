<template>
  <div class="Login container">
      <!--头部-->
      
      <mt-header title="登陆" fixed  class="login_header">
        <router-link to="/" slot="left">
            <mt-button icon="back">返回</mt-button>
        </router-link>
        <mt-button icon="more" slot="right"></mt-button>
      </mt-header>

        
        <div  class="tab_nav">
        
        <mt-navbar v-model="selected">
        <mt-tab-item id="1">快捷登录</mt-tab-item>
        <mt-tab-item id="2">密码登录</mt-tab-item>
        </mt-navbar>
        <mt-tab-container v-model="selected">
        <mt-tab-container-item id="1">
            <mt-field label="用户名" placeholder="请输入用户名" v-model="username"></mt-field>
            <mt-field label="验证码" v-model="yzm">
            <a href="javascript:;">获取验证码</a>
            </mt-field>
        </mt-tab-container-item>
        <mt-tab-container-item id="2">
            <mt-field label="用户名" placeholder="请输入用户名" v-model="username"></mt-field>
            <mt-field label="密码" placeholder="请输入6-20位易购密码" type="password" v-model="password" v-on:keyup.enter="tologin"></mt-field>
        </mt-tab-container-item>
        </mt-tab-container>
        <div class="text-center mt-5">
          <button type="button" class="btn  login_btn" @click="tologin">登录</button>
        </div>
         <div class="text-center mt-5">
          <button type="button" class="btn reg_btn">
          <router-link to="/reg" >快速注册</router-link>
          </button>
        </div>
        </div>
        
  </div>
</template>

<script>
import { Header } from 'mint-ui';
import { Navbar, TabItem } from 'mint-ui';
import { Field } from 'mint-ui';
import { Toast } from 'mint-ui';


export default {
  name: 'Login',
  components:{
      Header,
      Navbar,
      TabItem,
      Field,
      Toast
      
  },
  mounted(){
    
    this.$store.commit('changnav', 5);//修改nav
  },
  data () {
    return {
      msg: 'Welcome to Your Vue.js App',
      selected:"1",
      username:"",
      yzm:"",
      password:"",
      userInfo:null

    }
  },
  methods:{
    tologin:function(){
      if(this.selected=="1"){
        Toast('开发中，请使用密码登录！');
      }else{
        if(this.username!=""&&this.password!=""){//登录入口

          this.$http.post('/login',{
            name:this.username,
            pwd:this.password
          }).then((res)=>{
            if(res.status==200){
              this.userInfo = res.data.Data;
              if(res.data.Success){
                window.sessionStorage.userInfo = JSON.stringify(this.userInfo);//本地存储
                Toast(res.data.Info);

                this.$router.push('/user');//用户中心
              }else{
                Toast(res.data.Info);//失败
              }
            }else {
              Toast('请求错误');
            }
          },(err)=>{
            console.log(err);
          })

        }else{
          Toast('用户名或密码不能为空！');
        }
      }
    }
  }
}
</script>

<style scoped>
.login_header{
    border-bottom:1px solid #d8d8d8;
    background: none;
    color:#333;
}
.tab_nav{
    margin-top:40px;
}
.tab_nav a{
    text-decoration: none;
    color: #333;
}
.Login .login_btn,.Login .reg_btn{
  width: 80%;
  border:none;
  margin: 0 auto;
  background: #f60;
  color: #fff;
}
.Login .reg_btn{
  background: none;
  border:1px solid #f60;

}
.Login .reg_btn a{
  display: block;
  width: 100%;
  color:#f60;
}
</style>
