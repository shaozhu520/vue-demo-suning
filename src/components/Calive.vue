<template>
  <div class="calive">
  	<div class="calive_head">
  		<img src="../assets/images/152838231269295627.png" alt="">
  	</div>
  	<div class="container">
    <ul class="row">
    	<li class="col-6 shop_item">
    		<img src="../assets/images/201808080313071871_x.jpg" alt="">
    		<p class="shop_title">展卉 广西百香果 12个装 单果70-100g 新鲜水果</p>
    		<p class="shop_Price">￥ 23.8</p>
    	</li>
    	<li class="col-6 shop_item">
    		<img src="../assets/images/201808080313071871_x.jpg" alt="">
    		<p class="shop_title">展卉 广西百香果 12个装 单果70-100g 新鲜水果</p>
    		<p class="shop_Price">￥ 23.8</p>
    	</li>
    	<li class="col-6 shop_item">
    		<img src="../assets/images/201808080313071871_x.jpg" alt="">
    		<p class="shop_title">展卉 广西百香果 12个装 单果70-100g 新鲜水果</p>
    		<p class="shop_Price">￥ 23.8</p>
    	</li>
    	<li class="col-6 shop_item">
    		<img src="../assets/images/201808080313071871_x.jpg" alt="">
    		<p class="shop_title">展卉 广西百香果 12个装 单果70-100g 新鲜水果</p>
    		<p class="shop_Price">￥ 23.8</p>
    	</li>
    	<li class="col-6 shop_item">
    		<img src="../assets/images/201808080313071871_x.jpg" alt="">
    		<p class="shop_title">展卉 广西百香果 12个装 单果70-100g 新鲜水果</p>
    		<p class="shop_Price">￥ 23.8</p>
    	</li>
    	<li class="col-6 shop_item">
    		<img src="../assets/images/201808080313071871_x.jpg" alt="">
    		<p class="shop_title">展卉 广西百香果 12个装 单果70-100g 新鲜水果</p>
    		<p class="shop_Price">￥ 23.8</p>
    	</li>
    	
    </ul>
    </div>
  </div>
</template>

<script>
export default {
  name: 'Calive',
  data () {
    return {
      msg: 'Welcome to Your Vue.js App'
    }
  }
}
</script>

<style scoped>
ul{
	padding: 0;
	margin: 0;
}
li{
	list-style: none;
}
.calive_head{
	height: 100%;
}
.calive_head img{
	width: 100%;
}
.shop_item img{
	width: 100%;
}
.shop_title{
	font-size:1.4rem;
	display: -webkit-box;
	-webkit-box-orient: vertical;
	-webkit-line-clamp: 2;
	overflow: hidden;
}
.shop_Price{
	font-size: 1.4rem;
	color:#f33;
}
image[lazy=loading] {
  width: 100%;
  height:auto ;
}
</style>
