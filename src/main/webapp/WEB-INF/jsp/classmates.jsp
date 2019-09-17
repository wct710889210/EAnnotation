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
    <title>学生列表</title>
    <!-- Path to Framework7 Library CSS -->
    <link rel="stylesheet" href="css/framework7.css">
    <link rel="stylesheet" href="css/framework7-icons.css">
    <link rel="stylesheet" href="css/style.css">
    <style>
      .ios .list .item-text {
        color: orange;
      }

      .ios .list {
        margin-top: 0;
      }

      .ios .list .item-content {
        padding-left: 0;
      }

      .item-after {
        margin-top: 20px;
      }
    </style>
  </head>

  <body>
    <div id="app">
      <!-- Statusbar overlay -->
      <div class="statusbar"></div>

      <!-- Your main view, should have "view-main" class -->
      <div class="view view-main">
        <!-- Initial Page, "data-name" contains page name -->
        <div class="page">

          <!-- Top Navbar -->
          <div class="navbar">
            <div class="navbar-inner">
              <div class="left">
                <a href="#" class="item-link icon" onclick="javascript :history.back(-1);">
                  <i class="icon f7-icons" style="font-size: 25px">chevron_left</i>
                </a>
              </div>
              <div class="title">班级排名</div>
              <div class="right"></div>
            </div>
          </div>
          <!-- Toolbar -->
          <!-- 工具栏标签 -->
          <div class="toolbar tabbar-labels">
            <div class="toolbar-inner">
              <a href="#" class="tab-link an-button link external">
                <!-- Different icons for iOS and MD themes -->
                <i class="icon f7-icons ios-only">book_fill</i>
                <span class="tabbar-label">作业</span>
              </a>
              <a href="#" class="tab-link-active an-button link external">
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

          <div class="page-content">
            <div class="list media-list">
              <ul>
                <li>
                  <a href="#" class="item-link item-content" style="padding-left:15px;">
                    <div class="item-media">
                      <img class="radius" src="images/lw.jpg" width="80px" />
                    </div>
                    <div class="item-inner">
                      <div class="item-title">
                        <div class="item-title size-20">我的排名</div>
                      </div>
                      <div class="rank orange">获得125经验值</div>
                      <div class="myrank ">第
                        <span class="size-40"> 5 </span>名</div>
                    </div>
                  </a>
                </li>
              </ul>

              <ul>
                <li>
                  <a href="#" class="item-link item-content">
                    <span class="size-25 rank0 red">1</span>
                    <div class="item-media">
                      <img class="radius" src="images/myrank.jpg" width="60px" />
                    </div>
                    <div class="item-inner">
                      <div class="item-title">艾小雨</div>
                      <div class="email">13548546@163.com</div>
                      <div class="rank2 orange">150经验值</div>
                    </div>
                  </a>
                </li>

                <li>
                  <a href="#" class="item-link item-content">
                    <span class="size-25 rank0 red">2</span>
                    <div class="item-media">
                      <img class="radius" src="images/myrank.jpg" width="60px" />
                    </div>
                    <div class="item-inner">
                      <div class="item-title">艾钰</div>
                      <div class="email">136446576@163.com</div>
                      <div class="rank2 orange">140经验值</div>
                    </div>
                  </a>
                </li>

                <li>
                  <a href="#" class="item-link item-content">
                    <span class="size-25 rank0 red">3</span>
                    <div class="item-media">
                      <img class="radius" src="images/myrank.jpg" width="60px" />
                    </div>
                    <div class="item-inner">
                      <div class="item-title">鲍骏</div>
                      <div class="email">15478546@163.com</div>
                      <div class="rank2 orange">135经验值</div>
                    </div>
                  </a>
                </li>

                <li>
                  <a href="#" class="item-link item-content">
                    <span class="size-25 rank0 orange">4</span>
                    <div class="item-media">
                      <img class="radius" src="images/myrank.jpg" width="60px" />
                    </div>
                    <div class="item-inner">
                      <div class="item-title">包榟</div>
                      <div class="email">575485461@qq.com</div>
                      <div class="rank2 orange">132经验值</div>
                    </div>
                  </a>
                </li>

                <li>
                  <a href="#" class="item-link item-content">
                    <span class="size-25 rank0 orange">5</span>
                    <div class="item-media">
                      <img class="radius" src="images/myrank.jpg" width="60px" />
                    </div>
                    <div class="item-inner">
                      <div class="item-title">连炜</div>
                      <div class="email">lw@foxmail.com</div>
                      <div class="rank2 orange">125经验值</div>
                    </div>
                  </a>
                </li>

                <li>
                  <a href="#" class="item-link item-content">
                    <span class="size-25 rank0 orange">6</span>
                    <div class="item-media">
                      <img class="radius" src="images/myrank.jpg" width="60px" />
                    </div>
                    <div class="item-inner">
                      <div class="item-title">蔡文</div>
                      <div class="email">13769846@123.com</div>
                      <div class="rank2 orange">120经验值</div>
                    </div>
                  </a>
                </li>

                <li>
                  <a href="#" class="item-link item-content">
                    <span class="size-25 rank0 orange">7</span>
                    <div class="item-media">
                      <img class="radius" src="images/myrank.jpg" width="60px" />
                    </div>
                    <div class="item-inner">
                      <div class="item-title">曹帅</div>
                      <div class="email">1681236@163.com</div>
                      <div class="rank2 orange">110经验值</div>
                    </div>
                  </a>
                </li>

                <li>
                  <a href="#" class="item-link item-content">
                    <span class="size-25 rank0 orange">8</span>
                    <div class="item-media">
                      <img class="radius" src="images/myrank.jpg" width="60px" />
                    </div>
                    <div class="item-inner">
                      <div class="item-title">曹清德</div>
                      <div class="email">13648546@123.com</div>
                      <div class="rank2 orange">106经验值</div>
                    </div>
                  </a>
                </li>

                <li>
                  <a href="#" class="item-link item-content">
                    <span class="size-25 rank0 orange">9</span>
                    <div class="item-media">
                      <img class="radius" src="images/myrank.jpg" width="60px" />
                    </div>
                    <div class="item-inner">
                      <div class="item-title">戴镐</div>
                      <div class="email">85448546@qq.com</div>
                      <div class="rank2 orange">100经验值</div>
                    </div>
                  </a>
                </li>
                <li>
                  <a href="#" class="item-link item-content">
                    <span class="size-25 rank0 orange">10</span>
                    <div class="item-media">
                      <img class="radius" src="images/myrank.jpg" width="60px" />
                    </div>
                    <div class="item-inner">
                      <div class="item-title">芳华</div>
                      <div class="email">97548546@qq.com</div>
                      <div class="rank2 orange">96经验值</div>
                    </div>
                  </a>
                </li>
                <li>
                  <a href="#" class="item-link item-content">
                    <span class="size-25 rank0 blue">11</span>
                    <div class="item-media">
                      <img class="radius" src="images/myrank.jpg" width="60px" />
                    </div>
                    <div class="item-inner">
                      <div class="item-title">高俊</div>
                      <div class="email">15698546@123.com</div>
                      <div class="rank2 orange">90经验值</div>
                    </div>
                  </a>
                </li>
                <li>
                  <a href="#" class="item-link item-content">
                    <span class="size-25 rank0 blue">12</span>
                    <div class="item-media">
                      <img class="radius" src="images/myrank.jpg" width="60px" />
                    </div>
                    <div class="item-inner">
                      <div class="item-title">皋天明</div>
                      <div class="email">15888546@qq.com</div>
                      <div class="rank2 orange">80经验值</div>
                    </div>
                  </a>
                </li>
              </ul>
            </div>
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