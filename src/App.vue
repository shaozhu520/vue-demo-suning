<template>
  <div id="app" class="">

    <router-view/>
    <BottmoNav></BottmoNav>

  </div>
</template>

<script>
import BottmoNav from './components/BottomNav.vue'
export default {
  name: 'App',
  components:{
    BottmoNav
  },
  methods:{
    todu:function(){
      //console.log("jQuery");
    }
  }

}
</script>

<style>
#app{
  /*max-width:750px;*/
  /*margin:0 auto;*/
  margin-bottom: 4rem;
}
</style>
