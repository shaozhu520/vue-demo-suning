const express = require('express');
const mysql = require('mysql');
//const common = require('../libs/common');
const db = mysql.createPool({ //连接池(最小，最大)
    host: '47.96.119.66',    //机器IP
    user: 'root',
    password: '',//略了
    database: 'yg'       //数据库实例，将脚本导入实例
});
module.exports = () => {
    const route = express.Router();    //路由

    route.get('/classify', (req, res) => {//获取分类列表
        const getTasks = `SELECT * FROM classify `;
        db.query(getTasks, (err, data) => {
            if (err) {
                console.log(err);
                res.status(500).send('database err').end();
            } else {
                if (data.length == 0) {
                    res.status(500).send('no datas').end();
                } else {
                    //console.log(data)
                    res.send(data).end();
                }
            }
        });
    });


    route.get('/classcon', (req, res) => {//获取分类内容页内容
        let classid = req.query.classid;//get获取参数
        const getTasks = `SELECT * FROM classcon where classid='${classid}'`;
        db.query(getTasks, (err, data) => {
            if (err) {
                console.log(err);
                res.status(500).send('database err').end();
            } else {
                if (data.length == 0) {
                    res.status(500).send('no datas').end();
                } else {
                    //console.log(classid);
                    res.send(data).end();
                }
            }
        });
    });


    route.post('/login', (req, res) => {//登录
        //let mId = req.query.mId; gei 取参数
        let name = req.body.name;//获取参数
        let pwd = req.body.pwd;
        //let password = common.md5(mObj.loginPawd + common.MD5_SUFFXIE);
         console.log(name, pwd);
        const selectUser = `SELECT * FROM userinfo where name='${name}' and pwd='${pwd}'`;
        db.query(selectUser, (err, data) => {   //数据库查询
            console.log(data);//调试
            if (err) {
                console.log(err);
                
                res.send({"Success":false,"TypeID":0,"Info":"服务器出错","Redirect":"","Data":null}).end();
            } else {
                if (data.length == 0) {
                    //res.send({ 'msg': '该用户不存在', 'status': -1 }).end();//返回提示
                    res.send({"Success":false,"TypeID":0,"Info":"用户名或密码错误！","Redirect":"","Data":null}).end();
                } else {
                    let dataw = data[0];
                    //console.log(dataw,dataw.password,req.body.password);
                    //login sucess
                    if (dataw.pwd === req.body.pwd) {
                        //console.log("ok");
                        //save the session 
                        req.session['user_id'] = dataw.id;     //存入服务端session]
                        //dataw.result = "success";
                        dataw.pwd = null;
                        var datas = {"Success":true,"TypeID":0,"Info":"登录成功","Redirect":"","Data":dataw};
                        res.send(datas).end();
                    } else {
                        res.send({"Success":false,"TypeID":0,"Info":"用户名或密码错误！","Redirect":"","Data":null}).end();
                    }
                }
            }
        });

    });


    route.post('/reg', (req, res) => {//注册
        let name = req.body.name;//获取参数
        let pwd = req.body.pwd;
        //let password = common.md5(mObj.loginPawd + common.MD5_SUFFXIE);
         console.log(name, pwd);
        const selectUser = `insert into userinfo(name,pwd) values('${name}','${pwd}')`;
        
        const selectUser1 = `SELECT * FROM userinfo where name='${name}'`;

        db.query(selectUser1, (err, data) => {//查询用户名是否存在
        if (data.length == 0) {

        db.query(selectUser, (err, data) => {   //数据库查询
            console.log(data.affectedRows);//调试
            if (err) {
                console.log(err);
                
                res.send({"Success":false,"TypeID":0,"Info":"服务器出错","Redirect":"","Data":null}).end();
            } else {
                if(data.affectedRows){
                    res.send({"Success":true,"TypeID":0,"Info":"注册成功","Redirect":"","Data":null}).end();

                }else{
                    res.send({"Success":false,"TypeID":0,"Info":"注册失败","Redirect":"","Data":null}).end();

                }
                
            } 
        });

        }else{
            res.send({"Success":false,"TypeID":0,"Info":"用户名已存在！","Redirect":"","Data":null}).end();

        }

        });

    });


    
    /*
    route.post('/login', (req, res) => {
        //let mId = req.query.mId; gei 取参数
        let username = req.body.username;//获取参数
        let password = req.body.password;
        //let password = common.md5(mObj.loginPawd + common.MD5_SUFFXIE);
        // console.log(username, mObj.passwd);
        const selectUser = `SELECT * FROM t_user where username='${username}' and password='${password}'`;
        db.query(selectUser, (err, data) => {   //数据库查询
            console.log(data);//调试
            if (err) {
                console.log(err);
                res.send({ 'msg': '服务器出错', 'status': 0 }).end();//返回错误
            } else {
                if (data.length == 0) {
                    res.send({ 'msg': '该用户不存在', 'status': -1 }).end();//返回提示
                } else {
                    let dataw = data[0];
                    //console.log(dataw,dataw.password,req.body.password);
                    //login sucess
                    if (dataw.password === req.body.password) {
                        //console.log("ok");
                        //save the session 
                        req.session['user_id'] = dataw.id;     //存入服务端session]
                        dataw.result = "success";
                        dataw.password = null;
                        res.send(dataw).end();
                    } else {
                        res.send({ 'msg': '密码不正确', 'status': -2 }).end();
                    }
                }
            }
        });

    });
    */

    /*

    route.get('/tasks', (req, res) => {
        const getTasks = `SELECT * FROM t_task `;
        db.query(getTasks, (err, data) => {
            if (err) {
                console.log(err);
                res.status(500).send('database err').end();
            } else {
                if (data.length == 0) {
                    res.status(500).send('no datas').end();
                } else {
                    //console.log(data)
                    res.send(data).end();
                }
            }
        });
    });
    */
   
   /*
    route.post('/task/add', (req, res) => {
        
        let text = req.body.text;
        //let password = common.md5(mObj.loginPawd + common.MD5_SUFFXIE);
        // console.log(username, mObj.passwd);
        const insertTask = `INSERT INTO t_task(text) VALUES('${text}')`;
        db.query(insertTask, (err, data) => {
            if (err) {
                console.log(err);
                res.send({ 'msg': '服务器出错', 'status': 0 }).end();
            } else {
                res.send({ 'msg': '操作成功', 'status': 1 }).end();
            }
        });

    });
    */

    /*
    route.post('/task/del', (req, res) => {
        
        let id = req.body.id;
        //let password = common.md5(mObj.loginPawd + common.MD5_SUFFXIE);
        // console.log(username, mObj.passwd);
        const delTask = `DELETE from t_task where id=${id}`;
        db.query(delTask, (err, data) => {
            if (err) {
                console.log(err);
                res.send({ 'msg': '服务器出错', 'status': 0 }).end();
            } else {
                res.send({ 'msg': '操作成功', 'status': 1 }).end();
            }
        });

    });
    */

    /*
    route.post('/task/upd', (req, res) => {
        
        let id = req.body.id;
        let completed = req.body.completed ? 'N' : 'Y';
        //let password = common.md5(mObj.loginPawd + common.MD5_SUFFXIE);
        // console.log(username, mObj.passwd);
        const updateTask = `update t_task set completed='${completed}' where id=${id}`;
        db.query(updateTask, (err, data) => {
            if (err) {
                console.log(err);
                res.send({ 'msg': '服务器出错', 'status': 0 }).end();
            } else {
                res.send({ 'msg': '操作成功', 'status': 1 }).end();
            }
        });

    });
    */


    return route;
}
