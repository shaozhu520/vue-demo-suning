<template>
  <div>
  <div class="Swipe">
  <mt-swipe :auto="4000" >
  <mt-swipe-item>
    <img src="../assets/images/1.jpg" alt="">
  </mt-swipe-item>
  <mt-swipe-item>
    <img src="../assets/images/2.jpg" alt="">
  </mt-swipe-item>
  <mt-swipe-item>
    <img src="../assets/images/3.jpg" alt="">
  </mt-swipe-item>
  <mt-swipe-item>
    <img src="../assets/images/4.jpg" alt="">
  </mt-swipe-item>
  <mt-swipe-item>
    <img src="../assets/images/5.jpg" alt="">
  </mt-swipe-item>
  </mt-swipe>
  
  </div>
  <div class="banner">
    <img src="../assets/images/banner.gif" alt="">
  </div>
  </div>
  
</template>

<script>
import { Swipe, SwipeItem } from 'mint-ui';

export default{
        data(){
            return {
                imgDatas : [require('../assets/images/1.jpg'),
                require('../assets/images/2.jpg'),
                require('../assets/images/3.jpg'),
                require('../assets/images/4.jpg'),
                require('../assets/images/5.jpg')]
            }
        },
        components:{
          Swipe,
          SwipeItem
        }
    }
</script>

<style scoped>
img{
  width: 100%;
  height: 100%;
}
.Swipe{
  height: 18rem;
  width: 100%;
}
.banner img{
  height: 15rem;
}
</style>
