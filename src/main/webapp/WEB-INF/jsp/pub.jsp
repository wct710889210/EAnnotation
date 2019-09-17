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
      .ios .list textarea.resizable {
        height: 250px;
      }

      .ios .item-label,
      .ios .item-floating-label {
        font-size: 17px;
      }
    </style>
  </head>

  <body>
    <div id="app">
      <div class="view view-main view-init">
        <div class="navbar">
          <div class="navbar-inner">
            <div class="left">
              <a href="classteacher.html" class="item-link icon external">
                <i class="icon f7-icons" style="font-size: 25px">chevron_left</i>
              </a>
            </div>
            <div class="title">发布作业</div>
            <div class="right"></div>
          </div>
        </div>
        <div class=" page-content">
          <form class="list" id="my-form">
            <ul>
              <li>
                <div class="item-content item-input">
                  <div class="item-inner">
                    <div class="item-title item-label">标题</div>
                    <div class="item-input-wrap">
                      <input type="text" name="name" placeholder="请输入标题">
                    </div>
                  </div>
                </div>
              </li>
              <li>
                <div class="item-content item-input">
                  <div class="item-inner">
                    <div class="item-title item-label">标题图片</div>
                    <div class="item-input-wrap">
                      <input type="file">
                    </div>
                  </div>
                </div>
              </li>
              <li class="item-input">
                <div class="item-media">
                  <i class="icon demo-list-icon"></i>
                </div>
                <div class="item-inner">
                  <div class="item-title item-label">内容</div>
                  <div class="item-input-wrap">
                    <script id="editor" type="text/plain" style="height: 300px;"></script>
                  </div>
                </div>
              </li>
              <li>
                <div class="item-content item-input">
                  <div class="item-inner">
                    <div class="item-title item-label">截止日期</div>
                    <div class="item-input-wrap">
                      <input type="text" placeholder="选择截止日期" readonly="readonly" id="demo-calendar-modal" />
                    </div>
                  </div>
                </div>
              </li>
            </ul>
            <div class="item-media">
              <i class="icon demo-list-icon"></i>
            </div>
            <div class="title">选择主题</div>
            <div class="row margin-top-30">
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
          </form>
          <div class="block">
            <div class="col">
              <a class="convert-form-to-data" href="#">
                <button type="button" class="button button-big button-fill text-center">发布</button>
              </a>
            </div>
          </div>
        </div>
      </div>
      <script src="js/framework7.js"></script>
      <script src="js/app.js"></script>
      <script src="js/rangy-core.js"></script>
      <script src="js/rangy-classapplier.js"></script>
      <script src="js/annotate.js"></script>
      <script src="ueditor/ueditor.config.js"></script>
      <script src="ueditor/ueditor.all.min.js"></script>
      <script src="ueditor/lang/zh-cn/zh-cn.js"></script>
      <%--<script>--%>
        <%--var calendarModal = app.calendar.create({--%>
          <%--inputEl: '#demo-calendar-modal',--%>
          <%--openIn: 'customModal',--%>
          <%--header: true,--%>
          <%--footer: false,--%>

        <%--});--%>
      <%--</script>--%>
      <%--<script>--%>
        <%--$$('.convert-form-to-data').on('click', function () {--%>
          <%--var formData = app.form.convertToData('#my-form');--%>
          <%--alert(JSON.stringify(formData));--%>
        <%--});--%>
      <%--</script>--%>
                    <script type="text/javascript">
                        //实例化编辑器
                        //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
                        var ue = UE.getEditor('editor');


                        function isFocus(e) {
                            alert(UE.getEditor('editor').isFocus());
                            UE.dom.domUtils.preventDefault(e)
                        }

                        function setblur(e) {
                            UE.getEditor('editor').blur();
                            UE.dom.domUtils.preventDefault(e)
                        }

                        function insertHtml() {
                            var value = prompt('插入html代码', '');
                            UE.getEditor('editor').execCommand('insertHtml', value)
                        }

                        function createEditor() {
                            enableBtn();
                            UE.getEditor('editor');
                        }

                        function getAllHtml() {
                            alert(UE.getEditor('editor').getAllHtml())
                        }

                        function getContent() {
                            var arr = [];
                            arr.push("使用editor.getContent()方法可以获得编辑器的内容");
                            arr.push("内容为：");
                            arr.push(UE.getEditor('editor').getContent());
                            alert(arr.join("\n"));
                        }

                        function getPlainTxt() {
                            var arr = [];
                            arr.push("使用editor.getPlainTxt()方法可以获得编辑器的带格式的纯文本内容");
                            arr.push("内容为：");
                            arr.push(UE.getEditor('editor').getPlainTxt());
                            alert(arr.join('\n'))
                        }

                        function setContent(isAppendTo) {
                            var arr = [];
                            arr.push("使用editor.setContent('欢迎使用ueditor')方法可以设置编辑器的内容");
                            UE.getEditor('editor').setContent('欢迎使用ueditor', isAppendTo);
                            alert(arr.join("\n"));
                        }

                        function setDisabled() {
                            UE.getEditor('editor').setDisabled('fullscreen');
                            disableBtn("enable");
                        }

                        function setEnabled() {
                            UE.getEditor('editor').setEnabled();
                            enableBtn();
                        }

                        function getText() {
                            //当你点击按钮时编辑区域已经失去了焦点，如果直接用getText将不会得到内容，所以要在选回来，然后取得内容
                            var range = UE.getEditor('editor').selection.getRange();
                            range.select();
                            var txt = UE.getEditor('editor').selection.getText();
                            alert(txt)
                        }

                        function getContentTxt() {
                            var arr = [];
                            arr.push("使用editor.getContentTxt()方法可以获得编辑器的纯文本内容");
                            arr.push("编辑器的纯文本内容为：");
                            arr.push(UE.getEditor('editor').getContentTxt());
                            alert(arr.join("\n"));
                        }

                        function hasContent() {
                            var arr = [];
                            arr.push("使用editor.hasContents()方法判断编辑器里是否有内容");
                            arr.push("判断结果为：");
                            arr.push(UE.getEditor('editor').hasContents());
                            alert(arr.join("\n"));
                        }

                        function setFocus() {
                            UE.getEditor('editor').focus();
                        }

                        function deleteEditor() {
                            disableBtn();
                            UE.getEditor('editor').destroy();
                        }

                        function disableBtn(str) {
                            var div = document.getElementById('btns');
                            var btns = UE.dom.domUtils.getElementsByTagName(div, "button");
                            for (var i = 0, btn; btn = btns[i++];) {
                                if (btn.id == str) {
                                    UE.dom.domUtils.removeAttributes(btn, ["disabled"]);
                                } else {
                                    btn.setAttribute("disabled", "true");
                                }
                            }
                        }

                        function enableBtn() {
                            var div = document.getElementById('btns');
                            var btns = UE.dom.domUtils.getElementsByTagName(div, "button");
                            for (var i = 0, btn; btn = btns[i++];) {
                                UE.dom.domUtils.removeAttributes(btn, ["disabled"]);
                            }
                        }

                        function getLocalData() {
                            alert(UE.getEditor('editor').execCommand("getlocaldata"));
                        }

                        function clearLocalData() {
                            UE.getEditor('editor').execCommand("clearlocaldata");
                            alert("已清空草稿箱")
                        }
                    </script>
  </body>

  </html>