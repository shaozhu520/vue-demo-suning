<template>
  <div class="Search">
    <mt-search
      v-model="value"
      cancel-text="取消"
      placeholder="搜索">
    </mt-search>
    
    
   </div>
</template>

<script>
import { Search } from 'mint-ui';
export default {
  name: 'Searchs',
  data () {
    return {
    value:""
  }
  },
  components:{
    Search,
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.Search .mint-search{
  height: auto;
}
</style>
