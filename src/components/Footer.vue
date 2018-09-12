<template>
  <div class="footer container">
    <div class="row footer_main">
    	<div class="col"><a href="javascript:;">登录</a></div>
    	<div class="col"><a href="javascript:;">注册</a></div>
    	<div class="col"><a href="javascript:;">普通版</a></div>
    	<div class="col"><a href="javascript:;">客户端</a></div>
    </div>
    <p>Copyright © 2002 -2018 苏宁 suning.com 版权所有</p>
  </div>
</template>

<script>
export default {
  name: 'footer',
  data () {
    return {
      msg: 'Welcome to Your Vue.js App'
    }
  }
}
</script>

<style scoped>
.footer_main{
	margin-bottom: 1rem;
}
.footer_main a{
	color:#333;
}
p{
	text-align: center;
	padding-bottom: 1rem;
}
</style>
