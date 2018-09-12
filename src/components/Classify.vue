<template>
  <div class="Classify">
  <Searchs></Searchs>
  <div class="container">
  <div class="row">
  <ul class="class_list col-3">
  <li v-for="(itel,i) in NavListData" @click="changid" >
  <router-link tag="a" :to="'/classify/'+itel.id" :class="{list_active:i+1==cid}">{{itel.title}}</router-link>
  </li>
  </ul>
  <ClassCon :message="cid" ref="ClassCon"></ClassCon>
  </div>
  </div>
  </div>
</template>

<script>
import Searchs from './Searchs.vue';
import ClassCon from './ClassCon.vue';

export default {
  name: 'Classify',
  mounted(){
    //console.log("id"+this.$route.params.id);
    var cid = this.$route.params.id;
    console.log("cid:"+cid);
    if(cid===undefined){
    
    }else{
      this.cid = cid;
      console.log("cid:"+cid);
    }
    this.changinfo();
    
  },
  methods:{
    changid:function () {
    //console.log("id"+this.$route.params.id);
    let cid = this.$route.params.id;
    this.cid = cid;
    console.log("key");
    this.$refs.ClassCon.tocontent();
    },
    changcon:function(){
      this.$refs.ClassCon.tocontent();
      console.log("diaoyongle")
    },
    changinfo:function(){
      this.$http.get('/classify').then((res)=>{
        console.log(res.data);
        //this.leftDatas = res.data;
        this.NavListData = res.data;
      },(err)=>{
        console.log(err);
      })
    }
  },
  components:{
    Searchs,
    ClassCon
  },

  data () {
    return {
      cid:"1",
      msg: 'Welcome to Your Vue.js App',
     NavListData:[
                
            ],
    }
  }
}
</script>


<style scoped>
.class_list{
  width:6rem;
  height:100%;
  overflow-y:scroll;
  padding:0;
  margin:0;
}
.class_list li{
  list-style:none;
  height:3rem;
  line-height:3rem;
  text-align:center;
  border:1px solid #d8d8d8;
  font-size: .8rem;
}
.class_list li a{
  text-decoration: none;
  color:#333;
  display:block;
  width: 100%;
}
.class_list li .list_active{
  border-left:5px solid #FE256B;
  color:#FE256B;
  display: block;
}
</style>
