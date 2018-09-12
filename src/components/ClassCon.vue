<template>
  <div class=" col-9">
    <div v-for="(c,ins) in list" class="container p-0">
      <div>
        <!--<p>{{c}}--热销榜</p>-->
        <mt-header :title="c">
          <mt-button slot="right">热销榜</mt-button>
        </mt-header>
        <ul class="classcon row">
          <li v-for="i in condata[ins]" class="col-4 classcon_item">
            <div class="" >
            <img class="card-img-top" :src="i.thumbnail" alt="Card image cap">
            <div class="card-body">
              <p class="card-text" v-text="i.text"></p>
            </div>
          </div>
          </li>
        </ul>
      </div>
    </div>
  </div>
</template>

<script>
import { Header } from 'mint-ui';

export default {
  name: 'classcon',
    mounted(){
    //console.log(this.$route.params.id);
    let cid = this.$route.params.id;
    this.cid = cid;
    this.tocontent();//获取数据

    this.$store.commit('changnav', 2);
  },
  methods:{
    tocontent:function(){

      let cid = this.$route.params.id;
      this.cid = cid;

      let that = this;
      console.log("12");
      if(this.cid===undefined){
        this.cid ="1";
        console.log(this.cid);
      }

      this.$http.get('/classcon?classid='+this.cid).then((res)=>{
        console.log(res.data);

        this.condata = res.data;

      this.list = res.data.map(function(car){
      return car.attr;
      })

      this.list = [...new Set(this.list)]; //去重
      
      let con= [];
        that.list.forEach(function(item,index){//分类数据
        //这个时候要安装index 获取一个新的数组
          let da = that.condata.filter(function(items){
              return items.attr === item;
          })
          con.push(da);
        });
      that.condata = con;


      },(err)=>{
        console.log(err);
      })
    }
  },
  props:["message"],//父组件给子组件传参
  data () {
    return {
      msg: 'Welcome to Your Vue.js App',
      cid:"1",
      list:null,
      condata:null
    }
  },
  components:{
    Header
  }
}
</script>

<style scoped>
.classcon{
  list-style: none;
  margin-left: 0;
  padding-left: 0;
}
.classcon_item{
  margin-bottom: .6rem;
  padding: .2rem;
}
.classcon_item p{
  font-size: .6rem;
}
.card-body{
  padding:0;
  margin: .4rem 0;
  text-align: center;
}
</style>
