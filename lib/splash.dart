import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  int _pageIndex = 0;
  // pageView控制器
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);
    return Container(
      child: Scaffold(
        body: Container(
          color: Colors.white,
          child: Stack(
            children: <Widget>[
              _createPage()
            ],
          ),
        ),
      ),
    );
  }

  Widget _createPage(){
    return PageView(
      controller: pageController,
      onPageChanged: (index){
        setState(() {
          _pageIndex = index;
          print(pageController.page);
          print(_pageIndex);
        });
      },
      children: <Widget>[
        Container(
          child: Center(
            child: Image.network("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567267354277&di=1d1ffdd13dd69a975f4203312b4268d6&imgtype=0&src=http%3A%2F%2Fgss0.baidu.com%2F-vo3dSag_xI4khGko9WTAnF6hhy%2Fzhidao%2Fwh%253D450%252C600%2Fsign%3D381c9906ec1190ef01ae9adbfb2bb120%2Fd6ca7bcb0a46f21f032017b8fd246b600d33aec1.jpg",
              height: ScreenUtil().setHeight(1334),
              width: ScreenUtil().setWidth(750),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          child: Center(child: Image.network("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567267377788&di=e0067b9ed2a75194c1922829a03b410f&imgtype=0&src=http%3A%2F%2Fimg.qqu.cc%2Fuploads%2Fallimg%2F150104%2F1-150104154U8.jpg",
            height: ScreenUtil().setHeight(1334),
            width: ScreenUtil().setWidth(750),
            fit: BoxFit.cover,
          ),),
        ),
        Container(
          child: Center(child: Image.network("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567267377788&di=0aba162d7ec2d52eb728513d935ea79b&imgtype=0&src=http%3A%2F%2Fpic.ffpic.com%2Ffiles%2F2015%2F0601%2F0527yylsjbz1.jpg",
            height: ScreenUtil().setHeight(1334),
            width: ScreenUtil().setWidth(750),
            fit: BoxFit.cover,
          ),),
        ),
      ],
    );
  }
}