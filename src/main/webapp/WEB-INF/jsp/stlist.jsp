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
              <div class="title">学生列表</div>
              <div class="subnavbar">
                <!-- Searchbar with auto init -->
                <form class="searchbar">
                  <div class="searchbar-inner">
                    <div class="searchbar-input-wrap">
                      <input type="search" placeholder="搜索">
                      <i class="searchbar-icon"></i>
                      <span class="input-clear-button"></span>
                    </div>
                    <span class="searchbar-disable-button">取消</span>
                  </div>
                </form>
              </div>
            </div>
          </div>
          <!-- Toolbar -->
          <!-- 工具栏标签 -->
          <div class="toolbar tabbar-labels">
            <div class="toolbar-inner">
              <a href="index.html" class="tab-link an-button link external">
                <!-- Different icons for iOS and MD themes -->
                <i class="icon f7-icons">home_fill</i>
                <span class="tabbar-label">首页</span>
              </a>
              <a href="class.html" class="tab-link an-button link external">
                <i class="icon f7-icons">layers_fill</i>
                <span class="tabbar-label">班级</span>
              </a>
              <a href="person.html" class="tab-link an-button link external">
                <i class="icon f7-icons">person_fill</i>
                <span class="tabbar-label">我的</span>
              </a>
            </div>
          </div>

          <div class="page-content">
            <!-- Searchbar backdrop -->
            <div class="searchbar-backdrop"></div>
            <!-- search target list -->
            <div class="list contacts-list">
              <div class="list-group">
                <ul>
                  <li class="list-group-title">A</li>
                  <li>
                    <a href="#" class="item-link ">
                      <div class="item-content">
                        <div class="item-inner">
                          <div class="item-title">
                            <i class="icon f7-icons">person_fill</i> 艾小雨 </div>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <a href="#" class="item-link ">
                      <div class="item-content">
                        <div class="item-inner">
                          <div class="item-title">
                            <i class="icon f7-icons">person_fill</i> 艾钰 </div>
                        </div>
                      </div>
                    </a>
                  </li>
                  </li>
                </ul>
              </div>
              <div class="list-group">
                <ul>
                  <li class="list-group-title">B</li>
                  <li>
                    <a href="#" class="item-link ">
                      <div class="item-content">
                        <div class="item-inner">
                          <div class="item-title">
                            <i class="icon f7-icons">person_fill</i> 鲍骏 </div>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <a href="#" class="item-link ">
                      <div class="item-content">
                        <div class="item-inner">
                          <div class="item-title">
                            <i class="icon f7-icons">person_fill</i> 包榟 </div>
                        </div>
                      </div>
                    </a>
                  </li>
                </ul>
              </div>
              <div class="list-group">
                <ul>
                  <li class="list-group-title">C</li>
                  <li>
                    <a href="#" class="item-link ">
                      <div class="item-content">
                        <div class="item-inner">
                          <div class="item-title">
                            <i class="icon f7-icons">person_fill</i> 蔡文 </div>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <a href="#" class="item-link ">
                      <div class="item-content">
                        <div class="item-inner">
                          <div class="item-title">
                            <i class="icon f7-icons">person_fill</i> 曹帅 </div>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <a href="#" class="item-link ">
                      <div class="item-content">
                        <div class="item-inner">
                          <div class="item-title">
                            <i class="icon f7-icons">person_fill</i> 曹清德 </div>
                        </div>
                      </div>
                    </a>
                  </li>
                </ul>
              </div>
              <div class="list-group">
                <ul>
                  <li class="list-group-title">D</li>
                  <li>
                    <a href="#" class="item-link ">
                      <div class="item-content">
                        <div class="item-inner">
                          <div class="item-title">
                            <i class="icon f7-icons">person_fill</i> 戴镐 </div>
                        </div>
                      </div>
                    </a>
                  </li>
                </ul>
              </div>
              <div class="list-group">
                <ul>
                  <li class="list-group-title">F</li>
                  <li>
                    <a href="#" class="item-link ">
                      <div class="item-content">
                        <div class="item-inner">
                          <div class="item-title">
                            <i class="icon f7-icons">person_fill</i> 芳华 </div>
                        </div>
                      </div>
                    </a>
                  </li>
                </ul>
                <ul>
                  <li class="list-group-title">G</li>
                  <li>
                    <a href="#" class="item-link ">
                      <div class="item-content">
                        <div class="item-inner">
                          <div class="item-title">
                            <i class="icon f7-icons">person_fill</i> 高俊 </div>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <a href="#" class="item-link ">
                      <div class="item-content">
                        <div class="item-inner">
                          <div class="item-title">
                            <i class="icon f7-icons">person_fill</i> 高财 </div>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <a href="#" class="item-link ">
                      <div class="item-content">
                        <div class="item-inner">
                          <div class="item-title">
                            <i class="icon f7-icons">person_fill</i> 皋天明 </div>
                        </div>
                      </div>
                    </a>
                  </li>
                </ul>
                <ul>
                  <li class="list-group-title">H</li>
                  <li>
                    <a href="#" class="item-link ">
                      <div class="item-content">
                        <div class="item-inner">
                          <div class="item-title">
                            <i class="icon f7-icons">person_fill</i> 昊吴 </div>
                        </div>
                      </div>
                    </a>
                  </li>
                </ul>
              </div>
            </div>
            <!-- Nothing found message -->
            <div class="block searchbar-not-found">
              <div class="block-inner">无结果</div>
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