<template>
  <div class="home">
  <Searchs></Searchs>
  <Lunbo></Lunbo>
  <NavList></NavList>
  <Calive></Calive>
  <Footer></Footer>
  </div>
</template>

<script>
import Searchs from './Searchs.vue';
import Lunbo from './Lunbo.vue';
import NavList from './NavList.vue';
import Calive from './Calive.vue';
import Footer from './Footer.vue';
export default {
  name: 'Home',
  components:{
    Searchs,
    Lunbo,
    NavList,
    Calive,
    Footer
  },
    mounted(){
    this.$store.commit('changnav', 1);
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>

</style>
