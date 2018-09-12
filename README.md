# suning

Github地址：https://github.com/shaozhu520/vue-demo-suning
作者微信：shaozhu124
by 小义

使用了：node.js/Vue-cli/axios/Vuex/vue-router/mint-ui


名称：vue商城
介绍：
首页
分类
登录
注册
个人中心

由于时间伧俗，有些功能并没有去完善
但是用到的东西还是很多的，比如node,vuex,axios,mint-ui的懒加载等
分类取的是真实的数据，登录注册也是真实请求
其它功能后期完整中



关于使用：
1.前提肯定要下载安装node环境，没有下载去下载一个就好了
https://nodejs.org/en/
然后安装 vue,vue-cli 这些我们默认已经安装了


2.到项目根目录 npm install
先把依赖的包下载下来

3.在更目录 npm run dev
启动项目

4. 进入 /server
npm install
node server.js

(由于我部署的时候是部署在两个地方，所以分来了，后端服务和前端服务不在一起)
对了，由于分享牵扯数据库信息，所以这里并没有提供，这个例子请求的是服务器已经启好了的一个服务，如果想要请求本地的数据，先配置好 /server/route/index.js 里面的信息
然后把更目录的.sql文件还原带定义的库里面去。

