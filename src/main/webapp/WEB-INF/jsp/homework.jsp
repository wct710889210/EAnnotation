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

      .ios a {
        color: black;
      }

      .link {
        width: 100%;
      }

      .item-content {
        width: 100%;
      }

      .mark {
        margin-right: 8px;
      }
    </style>
  </head>

  <body>
    <div id="app">
      <div class="view view-main view-init">
        <div class="navbar">
          <div class="navbar-inner">
            <div class="left">
              <a href="classteacher.html" class="item-link icon external" style="color: white;">
                <i class="icon f7-icons" style="font-size: 25px">chevron_left</i>
              </a>
            </div>
            <div class="title">没有理由拒绝成为更好的自己</div>
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
            <a href="#" class="tab-link an-button link external">
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
        <div class=" page-content">
          <div class="card">
            <div class="card-header">没有理由拒绝成为更好的自己</div>
            <div class="card-content card-content-padding">你会发现这么多年喜欢你的人还会喜欢，不喜欢你的人依旧是陌路。但自己所有的努力，只是为了成为更好的自己。别人的看法似乎没有那么重要了，至少更爱自己了，这也 ...</div>
          </div>

          <div class="list">
            <ul>
              <li class="accordion-item accordion-item-opened">
                <a href="#" class="item-content item-link">
                  <div class="item-inner">
                    <div class="item-title">已完成</div>
                    <span class="badge">5</span>
                  </div>
                </a>
                <div class="accordion-item-content">
                  <div class="list contacts-list">
                    <div class="list-group">
                      <ul>
                        <li>
                          <a href="correct.html" class="external link">
                            <div class="item-content">
                              <div class="item-inner">
                                <div class="item-title">连炜</div>
                                <div class="mark">未批改</div>
                              </div>
                            </div>
                          </a>
                        </li>
                        <li>
                          <a href="#" class="external link">
                            <div class="item-content">
                              <div class="item-inner">
                                <div class="item-title">曹清德</div>
                                <div class="mark">未批改</div>
                              </div>
                            </div>
                          </a>
                        </li>
                        <li>
                          <div class="item-content">
                            <div class="item-inner">
                              <div class="item-title">鲍骏</div>
                              <div class="mark">
                                <span class="great">A</span>等</div>
                            </div>
                          </div>
                        </li>
                        <li>
                          <div class="item-content">
                            <div class="item-inner">
                              <div class="item-title">蔡文</div>
                              <div class="mark">
                                <span class="jsoso">B</span>等</div>
                            </div>
                          </div>
                        </li>
                        <li>
                          <a href="#" class="external link">
                            <div class="item-content">
                              <div class="item-inner">
                                <div class="item-title">艾小雨</div>
                                <div class="mark">
                                  <span class="bad">C</span>等</div>
                              </div>
                            </div>
                          </a>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
              </li>

              <!-- 未完成 -->
              <li class="accordion-item">
                <a href="#" class="item-content item-link">
                  <div class="item-inner">
                    <div class="item-title">未完成</div>
                    <span class="badge color-red">3</span>
                  </div>
                </a>
                <div class="accordion-item-content">
                  <div class="list contacts-list">
                    <div class="list-group">
                      <ul>
                        <li>
                          <div class="item-content">
                            <div class="item-inner">
                              <div class="item-title">戴镐</div>
                            </div>
                          </div>
                        </li>
                        <li>
                          <div class="item-content">
                            <div class="item-inner">
                              <div class="item-title">芳华</div>
                            </div>
                          </div>
                        </li>
                        <li>
                          <div class="item-content">
                            <div class="item-inner">
                              <div class="item-title">高俊</div>
                            </div>
                          </div>
                        </li>
                      </ul>
                    </div>
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