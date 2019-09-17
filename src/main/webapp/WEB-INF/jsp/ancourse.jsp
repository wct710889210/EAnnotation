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
            <div class="title">可以失去一切，不能失去理想
            </div>

            <div class="right">
              <a href="#" class="icon link panel-open" data-panel="right">
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
          </div>
          <div id="txblock">
            <div class="block" id="box" style="color:black">
              <p class="delete">我们要感谢这个时代，感谢互联网，感谢中国，感谢所有的同事，包括那些曾经在阿里巴巴工作过哪怕半个小时的人。</p>
              <p>18年来变化最大的，是我们从18个人变成了54421名员工，70个不同的国家，我们在21个国家和地区有自己的办事处。18年以来我们最大的成就是拥有了大家，从18个人到了5.4万多人，我们最大的财富也是因为有了你们，我们最大的资产就是因为有了5.4万多名员工。</p>
              <p>我去年一年在空中飞了870个小时，但是去年一年，阿里人在空中总共飞了68万个小时，相当于77年的时间在空中，谢谢大家的付出。</p>
              <p>
              </p>
              <p>今天的阿里巴巴已经不是一家普通的公司，已经是一个经济体，一个新型的经济体以前的经济体以地理位置界定：长三角经济体，珠三角经济体，加州经济体但是今天新的经济体诞生在互联网上。我们希望通过这个新的经济体，及其搭建的基础设施，让全世界的年轻人，中小企业能够做到全球买，全球卖，全球付，全球运和全球邮。我们希望能够让更多的发展中国家，中小企业和年轻人都能够分享自由贸易和全球化的快乐，尝试创业创新的快乐，享受技术进步的好处。</p>
              <p>今天从规模来讲，它已经是全世界第21大经济体。再过19年，我们希望能够打造全世界第5大经济体。而第5大经济体，不是因为规模，而是责任，更是担当。我们希望为全世界解决1亿的就业机会，我们希望能够服务20亿的消费者，我们更希望能够为1000万家中小企业创造盈利的平台。</p>
              <p>这个经济体创造的价值就是能够让世界更加普惠，共享，让世界经济更加可持续发展，更加健康和快乐的成长。经济体和普通公司有差别，公司以考虑自己利益为主，而经济体是要担当社会的责任。它不是规模的差别，不是利润的差别，而是担当和责任的差别。</p>
              <p>
              </p>
              <p>18年以前，我们看到的是机会;而18年后，我们看到的是巨大的挑战一直让我担心的是环境问题，贫困问题，疾病问题，不公平问题。</p>
              <p>而阿里巴巴今天拥有了5万多名员工，2.5万名工程师和科学家，我们拥有强大的技术能力，巨大的技术资源，客户以及一定的影响力。我们要思考，面对未来的问题，我们应该做一些什么。因为我们拥有了别人没有的东西，这不仅仅是财富，更是责任。</p>
              <p>让阿里巴巴坚持18年的是因为我们有理想主义，坚持理想主义使阿里巴巴走到了今天。我最担心的是我们的员工，看到自己拥有这一切的时候，忘却了理想主义。如果人没有了理想，这个人会活得非常无趣。而由人组成的组织失去了理想，一个公司失去了理想，就只是一部赚钱的机器。</p>
              <p>这个世界上永远会有公司比我们更赚钱，但是这个世界需要每一个人都非常明确知道自己有什么，要什么和想做什么。所以阿里巴巴可以失去一切，但是不能失去理想主义。</p>
              <p>18年以前，我们的理想就是做一家让世界尊重的中国公司。我们未来必须要有&ldquo;家国情怀&rdquo;和&ldquo;世界担当&rdquo;，必须考虑自己的家，考虑每个人的家，考虑这个社会，考虑这个国家，考虑世界的担当，阿里才会赢得尊重。</p>
              <p>未来5到10年，我们不是要超越谁，也不是要当世界前三，而是要为未来解决问题，要为中小企业，为年轻人，为我们当年让天下没有难做的生意这个承诺去付诸于行动。</p>
              <p>
              </p>
              <p>未来阿里巴巴将全力投入全球化，积极推进全球化。我们必须用全球的眼光看问题，必须用全球的能力，整合各方资源，解决社会，世界未来的问题。全球化势不可挡，我们不应该阻碍全球化，阿里巴巴有责任去完善全球化。</p>
              <p>我们也会全力以赴，不惜一切代价的投入到农村发展之中，技术不应该成为贫富差距拉开的驱动剂，技术是一种完全的，彻底的，更普惠共享的东西，必须让全人类能够共享这样的技术。所以我们今天必须参加到中国的脱贫之中去，我们必须参与到全球的脱贫之中，我相信只要能够解决掉贫困的问题，我相信阿里巴巴会骄傲的不是我们的利润，不是我们的收入，不是我们的规模，而是我们担当的责任以及巨大的福报。</p>
              <p>我们将更进一步的加大技术的投入和技术的创新.BAT中马云是最不懂技术的人，但最不懂的人最热爱，并且是真心热爱。今天阿里为之骄傲，2.5万名工程师和科学家加入阿里，感谢你们为阿里巴巴创造了无数技术的奇迹，你们未来要为世界创造奇迹。技术的投入不仅仅是资金的问题，而是我们的承诺，技术的发展不仅仅是要把&ldquo;不作恶&rdquo;作为底线，而是应该为社会，为世界作出贡献，才是我们技术的使命。</p>
              <p>
              </p>
              <p>我们永远客户第一，没有客户的支持和信任，不会有阿里巴巴。这世界上最珍贵的就是客户的信任，信任是最昂贵，又是最脆弱的产品，只有对得起这些信任，阿里才会走得更远，走得更好。关心中小企业，关心年轻人，关心妇女，才是真正关心未来和我们自己的未来。</p>
              <p>我希望我们的员工记住，今天阿里巴巴大了，但跟未来相比，我们真是一个孩子。我们值得骄傲，但是我们不能骄横，我们不能自以为是，离开了平台，离开了合作伙伴，离开我们拥有的信任，我们什么都不是。</p>
              <p>我最难过的是在外面听见阿里人现在骄横了，阿里人现在自大了，阿里人认为自己无所不能了。我们必须明白，也必须拥有一颗谦卑的心。阿里巴巴要成为一家了不起的企业，我们员工必须是谦卑的。阿里巴巴要成为一家担当世界未来，解决问题的公司，我们的员工首先是担当自己，担当家庭，担当团队，担当社区的责任。</p>
            </div>
          </div>
        </div>
        <!-- 弹出页面 -->
        <div class="popup popup5 annotator">
          <div class="block annotator">
            <p>
              <i class="icon f7-icons ios-only">help_fill</i> 修改质疑批注</p>
            <blockquote class="blockquote xg1 bqcolor1">
              <p id="old"></p>
            </blockquote>
            <p class="content">
              <i class="icon f7-icons ios-only">bookmark_fill</i> 批注内容</p>
            <!-- Close Popup -->
            <div class="item-media">
              <i class="icon demo-list-icon"></i>
            </div>
            <textarea placeholder="请输入质疑批注" id="xg" cols="45" rows="8" class="textarea"></textarea>
            <p class="row">
              <button class="col-30 button button-fill panel-open popup-close" id="xgadd">添加批注</button>
              <button class="button col-30  popup-close">取消</button>
            </p>
          </div>
        </div>


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
      function del() {
        $$('.delete').html("我们要感谢这个时代，感谢互联网，感谢中国中国，感谢所有的同事，包括那些曾经在阿里巴巴工作过哪怕半个小时的人。");
        $$('.cd0').remove();
      }

      function xiugai() {
        var x = $$('.p1').text();
        var t = $$('.bqcolor1>p').text()
        $$('#old').text(t);
        $$('#xg').val(x);
      }

      var ad = document.getElementById("xgadd");
      ad.addEventListener('touchstart', function () {
        add();
      });

      function add() {
        var nw = $$('#xg').val();
        $$('.p1').text(nw);
      }

      $$("input[name='teacher']").change(function () {
        if (!$$(this).is(':checked')) {
          $$("[id=teacher]").css('display', 'none');
        } else {
          $$("[id=teacher]").css('display', 'block');
        }
      });

      $$("input[name='student']").change(function () {
        if (!$$(this).is(':checked')) {
          $$("[id=student]").css('display', 'none');
        } else {
          $$("[id=student]").css('display', 'block');
        }
      });
    </script>
    <script>
      $$('.open-confirm').on('click', function () {
        app.dialog.confirm('是否提交批注？', function () {
          setTimeout("window.location.href='course2.html'", 1000);
        });
      });
    </script>
  </body>

  </html>