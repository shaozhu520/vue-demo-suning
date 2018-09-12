<template>
  <div class="Reg container">
    <mt-header title="快速注册" fixed  class="reg_header">
    <router-link to="/" slot="left">
        <mt-button icon="back">返回</mt-button>
    </router-link>
    <mt-button icon="more" slot="right"></mt-button>
    </mt-header>
    <div class="reg_from">
    <mt-field label="手机号码" placeholder="请输入11位手机号码" v-model="username"></mt-field>    
    <mt-field label="验证码"  placeholder="开发中，此处就无视吧" v-model="captcha">
     <img src="http://www.ruokuai.com/common/registerCaptcha" height="45px" width="100px">
    </mt-field>
    <mt-field label="设置密码" placeholder="6到20位字母或符号组成" type="password" v-model="password"></mt-field>
    
    <div class="text-center mt-5">
      <button type="button" class="btn  reg_btn" @click="toreg">注册</button>
    </div>
   <div class="text-center mt-5">
    <button type="button" class="btn  login_btn">
    <router-link to="/login" >登录</router-link>
    </button>
  </div>
    </div>
  </div>
</template>

<script>
import { Field } from 'mint-ui';
import { Button } from 'mint-ui';
import { Checklist } from 'mint-ui';
import { Header } from 'mint-ui';
import { Toast } from 'mint-ui';

export default {
  components:{
    Field,
    Button,
    Checklist,
    Header,
    Toast
  },
  name: 'Reg',
  mounted(){

    this.$store.commit('changnav', 5);//修改nav
  },
  data () {
    return {
      msg: 'Welcome to Your Vue.js App',
      username:"",
      captcha:"",
      password:"",
      values:""
    }
  },
  methods:{
    toreg:function(){
      if (this.password =="" || this.username=="") {
        Toast('用户名和密码都要填！');
      }else{
         this.$http.post('/reg',{
            name:this.username,
            pwd:this.password
          }).then((res)=>{
            if(res.status==200){
              Toast(res.data.Info);
            }else {
              Toast('请求错误');
            }
          },(err)=>{
            console.log(err);
          })
      }
    }
  }
}
</script>

<style scoped>
.reg_header{
  border-bottom:1px solid #d8d8d8;
  background: none;
  color:#333;
}
.reg_from{
  margin-top: 40px;
}

.Reg .login_btn,.Reg .reg_btn{
  width: 80%;
  border:none;
  margin: 0 auto;
  background: #f60;
  color: #fff;
}
.Reg .login_btn{
  background: none;
  border:1px solid #f60;

}
.Reg .login_btn a{
  display: block;
  width: 100%;
  color:#f60;
}
</style>
