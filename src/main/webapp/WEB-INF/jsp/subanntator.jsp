<%@ page language="java" contentType="text/html; charset=utf-8"%>
  <!DOCTYPE html>
  <html>

  <head>
    <!-- Required meta tags-->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no, minimal-ui, viewport-fit=cover">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <!-- Color theme for statusbar -->
    <meta name="theme-color" content="#000">
    <!-- Your app title -->
    <title>批注系统</title>
    <!-- Path to Framework7 Library CSS -->
    <link rel="stylesheet" href="css/framework7.css">
    <link rel="stylesheet" href="css/framework7-icons.css">
    <link rel="stylesheet" href="css/style.css">
    <style>
      .ios .searchbar:after {
        background-color: white;
      }

      .ios .card {
        margin: 0.5rem 0 0 0;
      }

      .ios .navbar .left {
        margin-right: 0px;
      }

      .ios .navbar b,
      .ios .navbar .title {
        font-weight: 500;
      }

      p {
        font-size: 16px;
        line-height: 1.5rem;
      }

      .ios .navbar .title {
        font-size: 16px;
      }

      .ios .media-list .item-title,
      .ios li.media-item .item-title {
        font-weight: 500;
      }
    </style>
  </head>

  <body>
    <!-- App root element -->
    <div id="app">
      <!-- 左侧边栏 -->
      <div class="panel panel-left panel-cover anpanel annotator">
        <div class="subnavbar subbar annotator" id="searchnav">
          <!-- Searchbar with auto init -->
          <form class="searchbar" id="search">
            <div class="searchbar-inner">
              <div class="searchbar-input-wrap" id="subwrap">
                <input type="search" placeholder="搜索">
                <i class="searchbar-icon"></i>
                <span class="input-clear-button"></span>
              </div>
              <span class="searchbar-disable-button">取消</span>
            </div>
          </form>
        </div>
        <div class="block" id="Mynote">
          <div id="ancontent">
            <div class="texbg">暂无批注</div>
          </div>
        </div>
      </div>
      <!-- Statusbar overlay -->
      <!-- Your main view, should have "view-main" class -->
      <div class="view view-main">
        <!-- Initial Page, "data-name" contains page name -->
        <!-- 头部标题栏 -->
        <div class="navbar">
          <div class="navbar-inner">
            <div class="left">
              <a href="#" class="item-link icon" onclick="javascript :history.back(-1);">
                <i class="icon f7-icons" style="font-size: 25px">chevron_left</i>
              </a>
            </div>
            <div class="title">没有理由拒绝成为更好的自己
              <div class="stitle">12 位同学已提交
                <i class="icon f7-icons more">right</i>
              </div>
            </div>

            <div class="right">
              <a href="#" class="icon link panel-open" data-panel="right">
                <i class="icon f7-icons" style="font-size: 25px">more</i>
              </a>
            </div>
          </div>
        </div>

        <!-- 工具栏 -->
        <div class="toolbar tabbar-labels">
          <div class="toolbar-inner">
            <!-- 工具栏标签 -->
            <a href="#" class="tab-link an-button popup-open" data-popup=".popup0" id="button0">
              <!-- Different icons for iOS and MD themes -->
              <i class="icon f7-icons ios-only">chat_fill</i>
              <span class="tabbar-label">感想</span>
            </a>
            <a href="#" class="tab-link an-button popup-open" data-popup=".popup1" id="button1">
              <i class="icon f7-icons ios-only">help_fill</i>
              <span class="tabbar-label">质疑</span>
            </a>
            <a href="#" class="tab-link an-button popup-open" data-popup=".popup2" id="button2">
              <i class="icon f7-icons ios-only">heart_fill</i>
              <span class="tabbar-label">联想</span>
            </a>
            <a href="#" class="tab-link an-button popup-open" data-popup=".popup3" id="button3">
              <i class="icon f7-icons ios-only">mic_fill</i>
              <span class="tabbar-label">评价</span>
            </a>
            <a href="#" class="tab-link an-button popup-open" data-popup=".popup4" id="button4">
              <i class="icon f7-icons ios-only">compose_fill</i>
              <span class="tabbar-label">补充</span>
            </a>


            <a href="#" class="tab-link an-button open-confirm" id="button5">
              <i class="icon f7-icons ios-only" style="color: #638BD4">check_round_fill </i>
              <span class="tabbar-label">提交</span>
            </a>
          </div>
        </div>
        <!-- 内容区域 -->
        <div class="page-content">
          <div class="list media-list annotator">
            <ul>
              <li>
                <a href="#" class="item-link item-content class">
                  <div class="item-media">
                    <img src="images/teacher.jpg" width="44" />
                  </div>
                  <div class="item-inner">
                    <div class="item-title-row">
                      <div class="item-title size-14">发布人：张宇宙老师</div>
                    </div>
                    <div class="item-subtitle size-14">教育工作者</div>
                  </div>
                </a>
              </li>
            </ul>
          </div>
          <div id="txblock">
            <div class="block" id="box" style="color:black">
              <p>你会发现这么多年喜欢你的人还会喜欢，不喜欢你的人依旧是陌路。但自己所有的努力，只是为了成为更好的自己。别人的看法似乎没有那么重要了，至少更爱自己了。
              </p>
              <p>一个人的成熟是需要慢慢修炼的，允许自己的不足并接纳然后努力改变。
              </p>
              <p>多年的一位朋友，我还记得高中时的她与班里男生说话脸都羞的通红，甚至不敢看对方。羞怯中略带些自卑。性格比较慢热，看似高冷的外表，其实是不知如何主动交往。
              </p>
              <p>后来我们彼此读了不同学校，不同的城市，也只有通过电话了解彼此的生活。
              </p>
              <p>我们彼此分享最近有哪些有趣的事，参加了什么社团，什么活动。她担任了他们班的学委，哎呦，不错呦我打趣道，一向爱学习的乖孩子，挺符合你的气质。
              </p>
              <p>虽是玩笑话，但真心为她高兴，性格变的开朗了许多，言语中流露着一种小小的自信。自由的大学生活确实能够改变一个人，是从稚嫩向成熟的一个过渡。思想也慢慢变得丰富独立了。
              </p>
              <p>不可否认自信的女孩总是最美的，不管高矮胖瘦，与其交往总感觉带给你的是满满的能量。
              </p>
              <p>大三的某一天，她跟我说自己恋爱了。这家伙隔着电话我也能感觉到浓浓的甜蜜味道。让我羡慕嫉妒恨自叹不如啊。
              </p>
              <p>爱情的开始总是充满着期待，但不是谁的初恋都能走到最后，这是后话了。
              </p>
              <p>临毕业的时候，我去了她的城市。那时彼此都在为毕业后工作考虑着。本来想着要不要去一个城市工作，虽然专业不同，陌生的城市一起租房子彼此也可以互相照应。
              </p>
              <p>最后是我一人去了上海，她决定留在省内发展。而她的初恋也只停留在了大四上半年。置于为什么分手，我没有多问。但我知道这段初恋给她带来了不小的伤害，那个晚上我也几乎没睡，陪她聊天。隔着屏幕也能感觉到失恋的泪水早已浸透了枕边。
              </p>
              <p>她说:我终于明白什么是心痛的感觉了。
              </p>
              <p>我说:这几年你真的变了很多，努力在做自己。至于爱情以后会遇到更好的。
              </p>
              <p>看似轻描淡写的改变，我知道她一直在努力的潜心修炼。她不善言谈，却逼着自己参加演讲比赛，没有期望取得什么好成绩，只是勇敢的让自己跨出去一步，多去尝试。
              </p>
              <p>因为是学委，自然少不了与同学之间的沟通。帮那些面临挂科的同学补课，和其他班委组织班级活动。慢慢的羞涩少了，站在讲台也不那么胆怯了。
              </p>
              <p>四年的时间与她重新塑造了一番，她的改变我是看在眼里的。
              </p>
              <p>所谓的成长也是发现不足而去改变的过程。也只有自己知道要勇敢的跨出去一步才能更好的完善自己。没有理由拒绝成为更好的自己，哪怕是生活给予的一些不愉快，试着与生活和解与自己和解。
              </p>
              <p>有一天或许会感谢曾经认为是生活故意的刁难。经历过才能成为一种阅历，才能修炼更加笃定的内心，也才能自信的一直走下去，成为那个更好的自己。 </p>
            </div>
          </div>
        </div>
        <!-- 弹出页面 -->
        <div class="popup popup0 annotator">
          <div class="block annotator">
            <p>
              <i class="icon f7-icons ios-only">chat_fill</i> 添加感想批注</p>
            <blockquote class="blockquote bqcolor0">
              <p id="selectedtxt0"></p>
            </blockquote>
            <p class="content">
              <i class="icon f7-icons ios-only">bookmark_fill</i> 批注内容</p>
            <!-- Close Popup -->
            <div class="item-media">
              <i class="icon demo-list-icon"></i>
            </div>
            <textarea placeholder="请输入感想批注" id="note0" cols="45" rows="8" class="textarea"></textarea>
            <p class="row">
              <button class="col-30 button button-fill panel-open popup-close" id="add0">添加批注</button>
              <button class="button col-30  popup-close">取消</button>
            </p>
          </div>
        </div>

        <div class="popup popup1 annotator">
          <div class="block annotator">
            <p>
              <i class="icon f7-icons ios-only">help_fill</i> 添加质疑批注</p>
            <blockquote class="blockquote bqcolor1">
              <p id="selectedtxt1"></p>
            </blockquote>
            <p class="content">
              <i class="icon f7-icons ios-only">bookmark_fill</i> 批注内容</p>
            <!-- Close Popup -->
            <div class="item-media">
              <i class="icon demo-list-icon"></i>
            </div>
            <textarea placeholder="请输入质疑批注" id="note1" cols="45" rows="8" class="textarea"></textarea>
            <p class="row">
              <button class="col-30 button button-fill panel-open popup-close" id="add1">添加批注</button>
              <button class="button col-30  popup-close">取消</button>
            </p>
          </div>
        </div>

        <div class="popup popup2 annotator">
          <div class="block annotator">
            <p>
              <i class="icon f7-icons ios-only">heart_fill</i> 添加联想批注</p>
            <blockquote class="blockquote bqcolor2">
              <p id="selectedtxt2"></p>
            </blockquote>
            <p class="content">
              <i class="icon f7-icons ios-only">bookmark_fill</i> 批注内容</p>
            <!-- Close Popup -->
            <div class="item-media">
              <i class="icon demo-list-icon"></i>
            </div>
            <textarea placeholder="请输入联想批注" id="note2" cols="45" rows="8" class="textarea"></textarea>
            <p class="row">
              <button class="col-30 button button-fill panel-open popup-close" id="add2">添加批注</button>
              <button class="button col-30  popup-close">取消</button>
            </p>
          </div>
        </div>

        <div class="popup popup3 annotator">
          <div class="block annotator">
            <p>
              <i class="icon f7-icons ios-only">mic_fill</i> 添加评价批注</p>
            <blockquote class="blockquote bqcolor3">
              <p id="selectedtxt3"></p>
            </blockquote>
            <p class="content">
              <i class="icon f7-icons ios-only">bookmark_fill</i> 批注内容</p>
            <!-- Close Popup -->
            <div class="item-media">
              <i class="icon demo-list-icon"></i>
            </div>
            <textarea placeholder="请输入评价批注" id="note3" cols="45" rows="8" class="textarea"></textarea>
            <p class="row">
              <button class="col-30 button button-fill panel-open popup-close" id="add3">添加批注</button>
              <button class="button col-30  popup-close">取消</button>
            </p>
          </div>
        </div>

        <div class="popup popup4 annotator">
          <div class="block annotator">
            <p>
              <i class="icon f7-icons ios-only">compose_fill</i> 添加补充批注</p>
            <blockquote class="blockquote bqcolor4">
              <p id="selectedtxt4"></p>
            </blockquote>
            <p class="content">
              <i class="icon f7-icons ios-only">bookmark_fill</i> 批注内容</p>
            <!-- Close Popup -->
            <div class="item-media">
              <i class="icon demo-list-icon"></i>
            </div>
            <textarea placeholder="请输入补充批注" id="note4" cols="45" rows="8" class="textarea"></textarea>
            <p class="row">
              <button class="col-30 button button-fill panel-open popup-close" id="add4">添加批注</button>
              <button class="button col-30  popup-close">取消</button>
            </p>
          </div>
        </div>
      </div>
    </div>
    <script src="js/framework7.js"></script>
    <script src="js/app.js"></script>
    <script src="js/rangy-core.js"></script>
    <script src="js/rangy-classapplier.js"></script>
    <script src="js/annotate.js"></script>
    <script>
      $$('.open-confirm').on('click', function () {
        app.dialog.confirm('您的批注内容过少，是否提交？', function () {
          app.dialog.alert('提交成功！');
          setTimeout("window.location.href='subclass.html'", 1000);
        });
      });
    </script>
  </body>

  </html>