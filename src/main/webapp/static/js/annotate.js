// 创建ajax
function ajax() {
  var ajaxData = {
    type: arguments[0].type || "GET",
    url: arguments[0].url || "",
    async: arguments[0].async || "true",
    data: arguments[0].data || null,
    dataType: arguments[0].dataType || "text",
    contentType: arguments[0].contentType || "application/x-www-form-urlencoded",
    beforeSend: arguments[0].beforeSend || function () { },
    success: arguments[0].success || function () { },
    error: arguments[0].error || function () { }
  }
  ajaxData.beforeSend()
  var xhr = createxmlHttpRequest();
  xhr.responseType = ajaxData.dataType;
  xhr.open(ajaxData.type, ajaxData.url, ajaxData.async);
  xhr.setRequestHeader("Content-Type", ajaxData.contentType);
  xhr.send(convertData(ajaxData.data));
  xhr.onreadystatechange = function () {
    if (xhr.readyState == 4) {
      if (xhr.status == 200) {
        ajaxData.success(xhr.response)
      } else {
        ajaxData.error()
      }
    }
  }
}

function createxmlHttpRequest() {
  if (window.ActiveXObject) {
    return new ActiveXObject("Microsoft.XMLHTTP");
  } else if (window.XMLHttpRequest) {
    return new XMLHttpRequest();
  }
}

function convertData(data) {
  if (typeof data === 'object') {
    var convertResult = "";
    for (var c in data) {
      convertResult += c + "=" + data[c] + "&";
    }
    convertResult = convertResult.substring(0, convertResult.length - 1)
    return convertResult;
  } else {
    return data;
  }
} 

// 选中并传递到popup
var text;

function getString(n) {
  text = rangy.getSelection().toString();
  console.log(text);
  var string = 'selectedtxt' + n;
  var selectedtxt = document.getElementById(string);
  selectedtxt.innerText = text;
}

var userID = 1;
var passageId = 1;
//将popu中的文字传递到侧边栏
function panel(m) {
  var string = 'note' + m;
  var textarea = document.getElementById(string).value;
  $$('#ancontent').append(
    '<div class="card cardcss cd'+m+'">'+
    '<blockquote class="blockquote bqcolor'+m+'">' +
    '<p>' + text + '</p>' +
    '</blockquote>' +
    '<div class="card-content cardct ">' +
    '<p  id="anPnode" class="p'+m+'">' + textarea + '</p>' +
    '</div >' +
    '<div class="card-footer">' +
    '<a class="link popup-open" id="change" data-popup=".popup5" onclick="xiugai()">修改</a><a  class="link" id="delete" onclick="del()">删除</a>' +
    '</div>' +
    '</div>');
  document.getElementById(string).value = '';
  ajax({
    type: "POST",
    url: "/EAnnotation/addAnnotation",
    dataType: "JSON",
    data: { "content": textarea, "paragraph": paragraph, "start": start, "end": end, "type": type, "userId": userID, "passageId": passageId, "selected": text},
    beforeSend: function () {

    },
    success: function () {

    },
    error: function () {

    }
  })
}

//获取选中文字的位置
var paragraph = 0;
var start;
var end;
var type;
function getLocation(n) {
  var userSelection;
  if (window.getSelection) { //现代浏览器
    userSelection = window.getSelection();
  }
  var getRangeObject = function (selectionObject) {
    if (selectionObject.getRangeAt)
      return selectionObject.getRangeAt(0);
    else { // 较老版本Safari!
      var range = document.createRange();
      range.setStart(selectionObject.anchorNode, selectionObject.anchorOffset);
      range.setEnd(selectionObject.focusNode, selectionObject.focusOffset);
      return range;
    }
  }
  var rangeObject = getRangeObject(userSelection);
  var p = rangeObject.startContainer.parentNode;
  while (p = p.previousSibling) {
    paragraph++;
  }
  paragraph = (paragraph + 1) / 2;
  start = rangeObject.startOffset;
  end = rangeObject.endOffset;
  type = n;
  // alert(paragraph);
  // alert(rangeObject.startOffset);
  // alert(rangeObject.endOffset);
  // alert("第"+n+"批注类型");
}

// 从数据库取回数据后选中文字
function selectText() {
  if (textbox.setSelectionRange) {
    textbox.setSelectionRange(startIndex, stopIndex);
  } else if (textbox.createTextRange) {
    var range = textbox.createTextRange();
    range.collapse(true);
    range.moveStart('character', startIndex);
    range.moveEnd('character', stopIndex - startIndex);
    range.select();
  }
  textbox.focus();
}

//添加批注样式
function anPaint(bton) {
  rangy.init();
  var classApplierModule = rangy.modules.ClassApplier;
  if (true) {
    switch (bton) {
      case 0:
        cssApplier = rangy.createClassApplier("Bton0Backgrond", false);
        cssApplier.toggleSelection();
        break;
      case 1:
        cssApplier = rangy.createClassApplier("Bton1Backgrond", false);
        cssApplier.toggleSelection();
        break;
      case 2:
        cssApplier = rangy.createClassApplier("Bton2Backgrond", false);
        cssApplier.toggleSelection();
        break;
      case 3:
        cssApplier = rangy.createClassApplier("Bton3Backgrond", false);
        cssApplier.toggleSelection();
        break;
      case 4:
        cssApplier = rangy.createClassApplier("Bton4Backgrond", false);
        cssApplier.toggleSelection();
        break;
    }
  }
}

//修改批注
function anChange() {
  console.log('132')
  $$('change').parent().prev().children('#anPnode').text = '132';
};

// 底部工具栏按钮事件
var button0 = document.getElementById("button0");
button0.addEventListener('touchstart', function () {
  getString(0);
  anPaint(0);
  getLocation(0);
});

var botton1 = document.getElementById("button1");
button1.addEventListener('touchstart', function () {
  getString(1);
  anPaint(1);
  getLocation(1);
});

var botton2 = document.getElementById("button2");
button2.addEventListener('touchstart', function () {
  getString(2);
  anPaint(2);
  getLocation(2);
});

var botton3 = document.getElementById("button3");
button3.addEventListener('touchstart', function () {
  getString(3);
  anPaint(3);
  getLocation(3);
});

var botton4 = document.getElementById("button4");
button4.addEventListener('touchstart', function () {
  getString(4);
  anPaint(4);
  getLocation(4);
});
//添加批注按钮点击事件
var add0 = document.getElementById("add0");
add0.addEventListener('touchstart', function () {
  panel(0);
});

var add1 = document.getElementById("add1");
add1.addEventListener('touchstart', function () {
  panel(1);
});

var add2 = document.getElementById("add2");
add2.addEventListener('touchstart', function () {
  panel(2);
});

var add3 = document.getElementById("add3");
add3.addEventListener('touchstart', function () {
  panel(3);
});

var add4 = document.getElementById("add4");
add4.addEventListener('touchstart', function () {
  panel(4);
});

//修改按钮
var change = document.getElementById("change");
change.addEventListener('touchstart', function () {
  anChange();
});

