#### K8s个人总结
1.K8s是一个容器编排系统,和docker swarm 和mesos一样,只不过在竞争中脱颖而出. k8s是google的亲儿子所以牛逼,Google内部早就有容器编排系统borg,k8s是Borg
的逻辑再一次的用go语言来写.避免了很多坑.(因为这么多年他们踩了什么坑他们都知道)
2.ks8主要有两个组件,master 和 node,master负责管理,node负责工作.
3.master里面有api server,schedule,etcd,controller.node有kubelet,docker(cri container runtime interface).
4.任何的客户端请求到k8s都是到api server,然后把指令传到etcd.然后schedule从众多的node中选出一个来执行也把结果存到etcd中,之后通知controller执行新的
指令.
5.controller里面有controlloop 一直死循环执行创建过的容器和etcd里面的容器指令进行比对,发现他们不一致就不断的修复知道正确为止
6.node 里面有个kubelet也是watch schedule 当schedule把它选为执行node的时候他来响应
7.面向对象编程语言是数据为中心,代码服务于数据,代码就是数据和指令,指令就是算法和数据结构.
8.面向过程编程语言是代码为中心,数据服务于代码
9.数据就是对象,代码就是方法
