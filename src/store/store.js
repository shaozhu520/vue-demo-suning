import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export const store = new Vuex.Store({
	strict:true,//严格模式
	state:{
		products:[
	        {name:"001",price:200},
	        {name:"002",price:140},
	        {name:"003",price:20},
	        {name:"004",price:10}
	      ],
	      NavActive:2
	},
	getters:{
		saleProducts: (state) =>{
			var saleProducts = state.products.map(product =>{
		        return {
		          name: "**" + product.name + "**",
		          price: product.price / 2
		        };
		    });
		    return saleProducts;
		}
	},
	mutations:{
		reducePrice: (state,payload) =>{
			// setTimeout(function(){
				state.products.forEach(product =>{
			        product.price -= payload;
			    })
		    // },3000);
		},
		changnav:(state,index)=>{
			state.NavActive = index;
		}
	},
	actions:{
		reducePrice:(context,payload) =>{
			setTimeout(function(){
				context.commit("reducePrice",payload);
			},2000);
		}
	}
});






