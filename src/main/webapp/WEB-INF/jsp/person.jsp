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
    <title>个人中心</title>
    <!-- Path to Framework7 Library CSS -->
    <link rel="stylesheet" href="css/framework7.css">
    <link rel="stylesheet" href="css/framework7-icons.css">
    <link rel="stylesheet" href="css/style.css">
    <style>
      .ios .list ul:after {
        background-color: white;
      }

      .ios .list .list-button:after {
        background-color: white;
      }

      .ios .list .list-button:after {
        background-color: white;
      }

      .popup:not(.popup-tablet-fullscreen) {
        width: 100%;
        height: 100%;
        margin: 0;
        left: 0%;
        top: 0%;
      }
    </style>
  </head>

  <body>
    <div id="app">
      <div class="view view-main view-init">
        <div class="navbar">
          <div class="navbar-inner">
            <div class="left"></div>
            <div class="title">个人中心</div>
            <div class="right"></div>
          </div>
        </div>

        <!-- 工具栏标签 -->
        <div class="toolbar tabbar-labels">
          <div class="toolbar-inner">
            <a href="index.html" class="tab-link an-button link external">
              <!-- Different icons for iOS and MD themes -->
              <i class="icon f7-icons ios-only">home_fill</i>
              <span class="tabbar-label">首页</span>
            </a>
            <a href="class.html" class="tab-link an-button link external">
              <i class="icon f7-icons ios-only">layers_fill</i>
              <span class="tabbar-label">班级</span>
            </a>
            <a href="#" class="tab-link-active an-button link external">
              <i class="icon f7-icons ios-only">person_fill</i>
              <span class="tabbar-label active-state">我的</span>
            </a>
          </div>
        </div>
        <div class="page-content">
          <div class="list media-list">
            <ul>
              <li>
                <a href="#" class="item-link item-content login-screen-open" data-login-screen=".login-screen">
                  <div class="item-media">
                    <img class="radius" src="images/weidenglu.jpg" width="80" />
                  </div>
                  <div class="item-inner">
                    <div class="item-title-row">
                      <div class="item-title">未登录</div>
                    </div>
                    <div class="item-subtitle">
                      <p> </p>
                    </div>
                    <div class="item-text">登录查看更多信息</div>
                  </div>
                </a>
              </li>
            </ul>
          </div>

          <div class="block-title">系统</div>
          <div class="list">
            <ul>
              <li>
                <a href="#" class="item-link item-content">
                  <div class="item-media">
                    <i class="icon f7-icons">gear</i>
                  </div>
                  <div class="item-inner">
                    <div class="item-title">设置</div>
                  </div>
                </a>
              </li>
            </ul>
          </div>
          <div class="login-screen">
            <div class="view">
              <div class="page">
                <div class="page-content login-screen-content">
                  <div class="logo text-center">
                    <img src="images/logo.png" width="75px">
                  </div>
                  <div class="login-screen-title login">用户登录</div>
                  <form>
                    <div class="list no-hairlines-md">
                      <ul>
                        <li class="item-content item-input">
                          <div class="item-media">
                            <i class="icon framework7-icons">person</i>
                          </div>
                          <div class="item-inner">
                            <div class="item-title item-label">用户名</div>
                            <div class="item-input-wrap">
                              <input type="text" placeholder="请输入用户名">
                              <span class="input-clear-button"></span>
                            </div>
                          </div>
                        </li>
                        <li class="item-content item-input">
                          <div class="item-media">
                            <i class="icon framework7-icons">lock</i>
                          </div>
                          <div class="item-inner">
                            <div class="item-title item-label">密码</div>
                            <div class="item-input-wrap">
                              <input type="password" placeholder="请输入密码">
                              <span class="input-clear-button"></span>
                            </div>
                          </div>
                        </li>
                      </ul>
                    </div>
                    <div class="block">
                      <p class="row">
                        <button type="button" class="col-85 button button-big button-fill" style="margin-left: auto;margin-right: auto;">
                          <a href="person2.html" class="icon external">登录</a>
                        </button>
                      </p>
                      <p class="row">
                        <button type="button" class="col-85 button button-big button-fill popup-open" style="margin-left: auto;margin-right: auto; background: #0b5670"
                          data-popup=".popup-about">注册</button>
                      </p>
                    </div>
                    <div class="text-center">
                      <a class="link login-screen-close" href="#">取消</a>
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
          <div class="popup popup-about">
            <div class="page-content login-screen-content">
              <div class="logo text-center">
                <img src="images/logo.png" width="75px">
              </div>
              <div class="login-screen-title login">用户注册</div>
              <form>
                <div class="list no-hairlines-md">
                  <ul>
                    <li class="item-content item-input">
                      <div class="item-media">
                        <i class="icon framework7-icons">person</i>
                      </div>
                      <div class="item-inner">
                        <div class="item-title item-label">用户名</div>
                        <div class="item-input-wrap">
                          <input type="text" placeholder="请输入用户名">
                          <span class="input-clear-button"></span>
                        </div>
                      </div>
                    </li>
                    <li class="item-content item-input">
                      <div class="item-media">
                        <i class="icon framework7-icons">lock</i>
                      </div>
                      <div class="item-inner">
                        <div class="item-title item-label">密码</div>
                        <div class="item-input-wrap">
                          <input type="password" placeholder="请输入密码">
                          <span class="input-clear-button"></span>
                        </div>
                      </div>
                    </li>

                    <li class="item-content item-input">
                      <div class="item-media">
                        <i class="icon framework7-icons">lock</i>
                      </div>
                      <div class="item-inner">
                        <div class="item-title item-label">再次输入密码</div>
                        <div class="item-input-wrap">
                          <input type="password" placeholder="请再次输入密码">
                          <span class="input-clear-button"></span>
                        </div>
                      </div>
                    </li>
                  </ul>
                </div>

                <div class="block">
                  <p class="row">
                    <button type="button" class="col-85 button button-big button-fill popup-open" style="margin-left: auto;margin-right: auto;"
                      data-popup=".popup-chose">下一步</button>
                  </p>
                </div>
                <div class="text-center">
                  <a class="link popup-close login-screen-close" href="#">取消</a>
                </div>
              </form>
            </div>
          </div>

          <div class="popup popup-chose">
            <div class="page-content login-screen-content">
              <div class="logo text-center">
                <img src="images/logo.png" width="75px">
              </div>
              <div class="login-screen-title login">请选择感兴趣的内容</div>
              <form>
                <div class="row">
                  <div class="col">
                    <div class="list">
                      <ul>
                        <li>
                          <label class="item-checkbox item-content">
                            <input type="checkbox" name="demo-checkbox" value="Books" />
                            <i class="icon icon-checkbox"></i>
                            <div class="item-inner">
                              <div class="item-title">演讲</div>
                            </div>
                          </label>
                        </li>
                        <li>
                          <label class="item-checkbox item-content">
                            <input type="checkbox" name="demo-checkbox" value="Movies" />
                            <i class="icon icon-checkbox"></i>
                            <div class="item-inner">
                              <div class="item-title">生活</div>
                            </div>
                          </label>
                        </li>
                        <li>
                          <label class="item-checkbox item-content">
                            <input type="checkbox" name="demo-checkbox" value="Food" />
                            <i class="icon icon-checkbox"></i>
                            <div class="item-inner">
                              <div class="item-title">摘录</div>
                            </div>
                          </label>
                        </li>
                        <li>
                          <label class="item-checkbox item-content">
                            <input type="checkbox" name="demo-checkbox" value="Drinks" />
                            <i class="icon icon-checkbox"></i>
                            <div class="item-inner">
                              <div class="item-title">心理</div>
                            </div>
                          </label>
                        </li>
                        <li>
                          <label class="item-checkbox item-content">
                            <input type="checkbox" name="demo-checkbox" value="Drinks" />
                            <i class="icon icon-checkbox"></i>
                            <div class="item-inner">
                              <div class="item-title">金融</div>
                            </div>
                          </label>
                        </li>
                      </ul>
                    </div>
                  </div>
                  <div class="col">
                    <div class="list">
                      <ul>
                        <li>
                          <label class="item-checkbox item-content">
                            <input type="checkbox" name="demo-checkbox" value="Books" />
                            <i class="icon icon-checkbox"></i>
                            <div class="item-inner">
                              <div class="item-title">校园</div>
                            </div>
                          </label>
                        </li>
                        <li>
                          <label class="item-checkbox item-content">
                            <input type="checkbox" name="demo-checkbox" value="Movies" />
                            <i class="icon icon-checkbox"></i>
                            <div class="item-inner">
                              <div class="item-title">科技</div>
                            </div>
                          </label>
                        </li>
                        <li>
                          <label class="item-checkbox item-content">
                            <input type="checkbox" name="demo-checkbox" value="Food" />
                            <i class="icon icon-checkbox"></i>
                            <div class="item-inner">
                              <div class="item-title">励志</div>
                            </div>
                          </label>
                        </li>
                        <li>
                          <label class="item-checkbox item-content">
                            <input type="checkbox" name="demo-checkbox" value="Drinks" />
                            <i class="icon icon-checkbox"></i>
                            <div class="item-inner">
                              <div class="item-title">青春</div>
                            </div>
                          </label>
                        </li>
                        <li>
                          <label class="item-checkbox item-content">
                            <input type="checkbox" name="demo-checkbox" value="Drinks" />
                            <i class="icon icon-checkbox"></i>
                            <div class="item-inner">
                              <div class="item-title">传记</div>
                            </div>
                          </label>
                        </li>
                      </ul>
                    </div>
                  </div>
                  <div class="col">
                    <div class="list">
                      <ul>
                        <li>
                          <label class="item-checkbox item-content">
                            <input type="checkbox" name="demo-checkbox" value="Books" />
                            <i class="icon icon-checkbox"></i>
                            <div class="item-inner">
                              <div class="item-title">实事</div>
                            </div>
                          </label>
                        </li>
                        <li>
                          <label class="item-checkbox item-content">
                            <input type="checkbox" name="demo-checkbox" value="Movies" />
                            <i class="icon icon-checkbox"></i>
                            <div class="item-inner">
                              <div class="item-title">推理</div>
                            </div>
                          </label>
                        </li>
                        <li>
                          <label class="item-checkbox item-content">
                            <input type="checkbox" name="demo-checkbox" value="Food" />
                            <i class="icon icon-checkbox"></i>
                            <div class="item-inner">
                              <div class="item-title">教育</div>
                            </div>
                          </label>
                        </li>
                        <li>
                          <label class="item-checkbox item-content">
                            <input type="checkbox" name="demo-checkbox" value="Drinks" />
                            <i class="icon icon-checkbox"></i>
                            <div class="item-inner">
                              <div class="item-title">哲学</div>
                            </div>
                          </label>
                        </li>
                        <li>
                          <label class="item-checkbox item-content">
                            <input type="checkbox" name="demo-checkbox" value="Drinks" />
                            <i class="icon icon-checkbox"></i>
                            <div class="item-inner">
                              <div class="item-title">历史</div>
                            </div>
                          </label>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>

                <div class="block">
                  <p class="row">
                    <div class="text-center">
                      <a href="person1.html" class="link external col75">
                        <button type="button" class="button button-big button-fill text-center">完成</button>
                      </a>
                    </div>
                  </p>
                </div>
                <div class="text-center">
                  <a class="link popup-close" href="#">暂时跳过</a>
                </div>
              </form>
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
    <script>
      // Create toast with icon
      var toastIcon = app.toast.create({
        icon: app.theme === 'ios' ? '<i class="f7-icons">star</i>' : '<i class="material-icons">star</i>',
        text: '恭喜！注册成功',
        position: 'center',
        closeTimeout: 1500,
      });
      $$('.open-toast-icon').on('click', function () {
        toastIcon.open();
        setTimeout("window.location.href='index.html'", 1500);
      });
    </script>
  </body>

  </html>