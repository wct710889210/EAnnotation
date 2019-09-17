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
    <title>班级</title>
    <!-- Path to Framework7 Library CSS -->
    <link rel="stylesheet" href="css/framework7.css">
    <link rel="stylesheet" href="css/framework7-icons.css">
    <link rel="stylesheet" href="css/style.css">
    <style>
      .ios .toolbar:before {
        background-color: white;
      }

      .ios .tabbar a.tab-link,
      .ios .tabbar-labels a.tab-link,
      .ios .tabbar a.link,
      .ios .tabbar-labels a.link {
        width: 100%;
      }

      .ios .list {
        margin-top: 0;
      }

      .ios a {
        color: black;
      }
    </style>
  </head>

  <body>
    <div id="app">
      <div class="view view-main view-init">
        <div class="navbar">
          <div class="navbar-inner">
            <div class="left">
              <a href="tcindex.html" class="item-link icon external" style="color: white;">
                <i class="icon f7-icons" style="font-size: 25px">chevron_left</i>
              </a>
            </div>
            <div class="title">我的班级</div>
            <div class="right"></div>
          </div>
        </div>
        <!-- 工具栏标签 -->
        <div class="toolbar tabbar-labels">
          <div class="toolbar-inner">
            <a href="#" class="tab-link-active an-button link external">
              <!-- Different icons for iOS and MD themes -->
              <i class="icon f7-icons ios-only">book_fill</i>
              <span class="tabbar-label">作业</span>
            </a>
            <a href="course.html" class="tab-link an-button link external">
              <i class="icon f7-icons ios-only">layers_fill</i>
              <span class="tabbar-label active-state">课堂</span>
            </a>
            <a href="#" class="tab-link an-button link external">
              <i class="icon f7-icons ios-only">persons_fill</i>
              <span class="tabbar-label active-state">成员</span>
            </a>
            <a href="#" class="tab-link an-button">
              <i class="icon f7-icons ios-only">chat_fill
                <span class="badge color-red">5</span>
              </i>
              <span class="tabbar-label">消息</span>
            </a>
          </div>
        </div>

        <div class="toolbar toolbar-bottom-md fab-morph-target tabbar-labels">
          <div class="toolbar-inner">
            <a class="link popup-open external" data-popup=".popup-about" href="pub.html">发布作业</a>
            <a class="link fab-close">取消</a>
          </div>
        </div>
        <div class="fab fab-right-bottom fab-morph" data-morph-to=".toolbar">
          <a href="#">
            <i class="icon f7-icons ios-only">add</i>
            <i class="icon f7-icons ios-only">close</i>
            <i class="icon material-icons md-only">add</i>
            <i class="icon material-icons md-only">close</i>
          </a>
        </div>
        <div class=" page-content">
          <div class="list media-list annotator">
            <ul>
              <li>
                <div class="item-content">
                  <div class="item-media">
                    <img src="images/teacher.jpg" width="44" />
                  </div>
                  <div class="item-inner">
                    <div class="item-title-row">
                      <div class="item-title margin-top10">行政班：软件工程162</div>
                    </div>
                  </div>
                </div>
              </li>
            </ul>
          </div>
          <div class="list">
            <ul>
              <!-- 已完成作业栏 -->
              <li class="accordion-item accordion-item-opened">
                <a href="#" class="item-content item-link">
                  <div class="item-inner">
                    <div class="item-title">正在进行的作业</div>
                    <div class="item-after">
                      <span class="badge color-red">1</span>
                    </div>
                  </div>
                </a>
                <div class="accordion-item-content">
                  <div class="list media-list">
                    <ul>
                      <li class="swipeout">
                        <div class="swipeout-content">
                          <label href="#" class="item-content item-checkbox">
                            <a href="homework.html" class="link external">
                              <div class="item-inner">
                                <div class="item-title-row">
                                  <div class="item-title">没有理由拒绝成为更好的自己</div>
                                  <div class="item-after"></div>
                                </div>
                                <div class="item-subtitle">励志 · 1 天前</div>
                                <div class="item-text">
                                  你会发现这么多年喜欢你的人还会喜欢，不喜欢你的人依旧是陌路。但自己所有的努力，只是为了成为更好的自己。别人的看法似乎没有那么重要了，至少更爱自己了
                                </div>
                              </div>
                            </a>
                          </label>
                        </div>
                        <div class="swipeout-actions-left">
                          <a href="#" class="color-green swipeout-overswipe alert-reply">Reply</a>
                          <a href="#" class="color-blue alert-forward">Forward</a>
                        </div>
                        <div class="swipeout-actions-right">
                          <a href="#" class="open-more-actions">更多</a>
                          <a href="#" class="color-orange alert-mark">批改</a>
                          <a href="#" data-confirm="Are you sure you want to delete this item?" class="swipeout-delete swipeout-overswipe">删除</a>
                        </div>
                      </li>
                    </ul>
                  </div>
                </div>
              </li>

              <!-- 未完成作业栏 -->
              <li class="accordion-item">
                <a href="#" class="item-content item-link">
                  <div class="item-inner">
                    <div class="item-title">已截止的作业</div>
                    <div class="item-after">
                      <span class="badge">3</span>
                    </div>
                  </div>
                </a>
                <div class="accordion-item-content">
                  <div class="list media-list">
                    <ul>
                      <li class="swipeout ">
                        <div class="swipeout-content">
                          <label href="#" class="item-content item-checkbox">
                            <div class="item-inner">
                              <div class="item-title-row">
                                <div class="item-title">阿里年会马云演讲全文：可以失去一切，不能失去理想</div>
                                <div class="item-after"></div>
                              </div>
                              <div class="item-subtitle">演讲 · 1 天前</div>
                              <div class="item-text">
                                我们要感谢这个时代，感谢互联网，感谢中国，感谢所有的同事，包括那些曾经在阿里巴巴工作过哪怕半个小时的
                              </div>
                            </div>
                          </label>
                        </div>
                        <div class="swipeout-actions-left">
                          <a href="#" class="color-green swipeout-overswipe alert-reply">Reply</a>
                          <a href="#" class="color-blue alert-forward">Forward</a>
                        </div>
                        <div class="swipeout-actions-right">
                          <a href="#" class="open-more-actions">更多</a>
                          <a href="#" class="color-orange alert-mark">批改</a>
                          <a href="#" data-confirm="Are you sure you want to delete this item?" class="swipeout-delete swipeout-overswipe">删除</a>
                        </div>
                      </li>

                      <li class="swipeout ">
                        <div class="swipeout-content">
                          <label href="#" class="item-content item-checkbox">
                            <div class="item-inner">
                              <div class="item-title-row">
                                <div class="item-title">台湾作家林清玄散文精选摘抄</div>
                                <div class="item-after"></div>
                              </div>
                              <div class="item-subtitle">摘录 · 5 天前</div>
                              <div class="item-text">
                                无论是少年、青年还是已经步入中年，对于林清玄这个名字都并不陌生。 这个台湾作家的智慧确实渗透了他的每一篇散文，感染了每一颗灯前捧读的心。 正是林清玄，教会了我们如何用积极向上的心态去面对现实，定义人生
                              </div>
                            </div>
                          </label>
                        </div>
                        <div class="swipeout-actions-left">
                          <a href="#" class="color-green swipeout-overswipe alert-reply">Reply</a>
                          <a href="#" class="color-blue alert-forward">Forward</a>
                        </div>
                        <div class="swipeout-actions-right">
                          <a href="#" class="open-more-actions">更多</a>
                          <a href="#" class="color-orange alert-mark">批改</a>
                          <a href="#" data-confirm="Are you sure you want to delete this item?" class="swipeout-delete swipeout-overswipe">删除</a>
                        </div>
                      </li>

                      <li class="swipeout ">
                        <div class="swipeout-content">
                          <label href="#" class="item-content item-checkbox">
                            <div class="item-inner">
                              <div class="item-title-row">
                                <div class="item-title">一场花期一段梦</div>
                                <div class="item-after"></div>
                              </div>
                              <div class="item-subtitle">青春 · 2018-4-11</div>
                              <div class="item-text">
                                一朵小小的木樨花在寂静中绽放，怀念的果子便要在光阴里结实。青春韶华无情流逝，承载了太多苦涩又甘甜的往昔。花瓣曼妙飞扬的时候，牵念起心中清落的记忆
                              </div>
                            </div>
                          </label>
                        </div>
                        <div class="swipeout-actions-left">
                          <a href="#" class="color-green swipeout-overswipe alert-reply">Reply</a>
                          <a href="#" class="color-blue alert-forward">Forward</a>
                        </div>
                        <div class="swipeout-actions-right">
                          <a href="#" class="open-more-actions">更多</a>
                          <a href="#" class="color-orange alert-mark">批改</a>
                          <a href="#" data-confirm="Are you sure you want to delete this item?" class="swipeout-delete swipeout-overswipe">删除</a>
                        </div>
                      </li>
                    </ul>
                  </div>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    <script src="js/framework7.js"></script>
    <script src="js/app.js"></script>
    <script src="js/rangy-core.js"></script>
    <script src="js/rangy-classapplier.js"></script>
    <script src="js/annotate.js"></script>
  </body>

  </html>