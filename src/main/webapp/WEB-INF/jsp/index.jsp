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
    <title>首页</title>
    <!-- Path to Framework7 Library CSS -->
    <link rel="stylesheet" href="css/framework7.css">
    <link rel="stylesheet" href="css/framework7-icons.css">
    <link rel="stylesheet" href="css/style.css">
  </head>

  <body>
    <div id="app">
      <div class="view view-main view-init">
        <div class="page">
          <div class="navbar">
            <div class="navbar-inner index">
              <div class="subnavbar">
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
          <div class="subnavbar">
            <div class="subnavbar-inner">
              <div class="segmented segmented-raised">
                <a class="button tab-link tab-link-active" href="#tab1">推荐</a>
                <a class="button tab-link" href="#tab2">排行</a>
              </div>
            </div>
          </div>
          <!-- 工具栏标签 -->
          <div class="toolbar tabbar-labels">
            <div class="toolbar-inner">
              <a href="#" class="tab-link-active an-button link external">
                <!-- Different icons for iOS and MD themes -->
                <i class="icon f7-icons">home_fill</i>
                <span class="tabbar-label">首页</span>
              </a>

              <a href="classteacher.html" class="tab-link an-button link external">
                <i class="icon f7-icons">layers_fill</i>
                <span class="tabbar-label">班级</span>
              </a>
              <a href="person.html" class="tab-link an-button link external">
                <i class="icon f7-icons">person_fill</i>
                <span class="tabbar-label">我的</span>
              </a>
            </div>
          </div>


          <div class="page-content ptr-content index">
            <!-- <div class="searchbar-backdrop"></div> -->
            <div class="tabs">
              <div class="tab tab-active" id="tab1">
                <div class="ptr-preloader">
                  <div class="preloader"></div>
                  <div class="ptr-arrow"></div>
                </div>
                <div class="list media-list index">
                  <ul class="index">
                    <div class="card demo-card-header-pic">
                      <div style="background-image:url(images/news.jpg)" class="card-header align-items-flex-end">飞机和鹰分不清！英国仿鹰无人机用于驱逐鸟群</div>
                      <div class="card-content card-content-padding">
                        <p class="date index">科技 · 40 分钟前</p>
                        <p>当地时间2018年4月6日，英国汉普郡南安普敦机场，一架猎鹰样式的新型无人机试飞成功，它用来驱赶机场附近 ...</p>
                      </div>
                      <div class="card-footer">
                        <a href="#" class="link">
                          <i class="f7-icons size-18">heart_fill</i>325 喜欢</a>
                        <a href="#" class="link">
                          157人批注过，共计216条批注
                        </a>
                      </div>
                    </div>

                    <div class="card demo-card-header-pic">
                      <div style="background-image:url(images/641.jpg)" class="card-header align-items-flex-end">夜读丨揭秘最真实的投行鄙视链</div>
                      <div class="card-content card-content-padding">
                        <p class="date index">金融 · 1 小时前</p>
                        <p>投行的全称是投资银行，按照这个词本身的含义，它所对应的是“商业银行”。但是当这个词被引入到咱们国内的时候 ...</p>
                      </div>
                      <div class="card-footer">
                        <a href="#" class="link">
                          <i class="f7-icons size-18">heart_fill</i>615 喜欢</a>
                        <a href="#" class="link">
                          472人批注过，共计514条批注
                        </a>
                      </div>
                    </div>

                    <div class="card">
                      <div class="card-header">你才不是一个没有故事的女同学</div>
                      <div class="card-content card-content-padding">
                        <p class="date index">校园 · 1 小时前</p>
                        <p>某高中同学在网上告诉我小樱领证结婚了，还给我发来他们的结婚照。红底照片上的一对新人好似金童玉女，十分合衬。我盯着小樱光洁的额头看，突然好奇，新郎知道小 ...
                        </p>
                      </div>
                      <div class="card-footer">
                        <a href="#" class="link">
                          <i class="f7-icons size-18">heart_fill</i>1,021 喜欢</a>
                        <a href="#" class="link">
                          688人批注过，共计786条批注
                        </a>
                      </div>
                    </div>
                    <div class="card">
                      <div class="card-header">青春中国梦</div>
                      <div class="card-content card-content-padding">
                        <p class="date index">演讲 · 2 小时前</p>
                        <p>中国梦存在于世世代代的中国人心间，是每个中国人心中的信念与奋斗的动力，自历史的滚滚长河以来，中国经历了太多的过往。中国是那个曾建成了万里长城，建造了数座 ...
                        </p>
                      </div>
                      <div class="card-footer">
                        <a href="#" class="link">
                          <i class="f7-icons size-18">heart_fill</i>1,421 喜欢</a>
                        <a href="#" class="link">
                          557人批注过，共计5,152条批注
                        </a>
                      </div>
                    </div>
                    <div class="card demo-card-header-pic">
                      <a href="anntator.html" class="link external black">
                        <div style="background-image:url(images/timg.jpg)" class="card-header align-items-flex-end">阿里年会马云演讲全文：可以失去一切，不能失去理想</div>
                      </a>
                      <div class="card-content card-content-padding">
                        <p class="date index">演讲 · 3 小时前</p>
                        <p>
                          <a href="anntator.html" class="link external color-black">
                            我们要感谢这个时代，感谢互联网，感谢中国，感谢所有的同事，包括那些曾经在阿里巴巴工作过哪怕半个小时的 ...</a>
                        </p>
                      </div>

                      <div class="card-footer">
                        <a href="#" class="link">
                          <i class="f7-icons size-18">heart_fill</i>514 喜欢</a>
                        <a href="#" class="link">
                          857人批注过，共计5,582条批注
                        </a>
                      </div>
                    </div>

                    <div class="card demo-card-header-pic">
                      <div style="background-image:url(images/speech.jpg)" class="card-header align-items-flex-end">为您推荐：加利福尼亚大学克服公众演讲焦虑课程</div>
                      <div class="card-content card-content-padding">
                        <p class="date index">
                          <span>[广告]</span> 可免费试听 5 分钟</p>
                        <p>本课程旨在帮助研究生和博士后们做好在各种听众面前进行优秀的演讲的准备。本课涉及的公众演讲技巧适用于各领域的学者和研究人员。</p>
                      </div>
                    </div>

                    <div class="card">
                      <div class="card-header">台湾作家林清玄散文精选摘抄</div>
                      <div class="card-content card-content-padding">
                        <p class="date index">摘记 · 5小时前</p>
                        <p>无论是少年、青年还是已经步入中年，对于林清玄这个名字都并不陌生。这个台湾作家的智慧确实渗透了他的每一篇散文，感染了每一颗灯前捧读的心。正是林清玄，教会了 ...
                        </p>
                      </div>
                      <div class="card-footer">
                        <a href="#" class="link">
                          <i class="f7-icons size-18">heart_fill</i>1,014 喜欢</a>
                        <a href="#" class="link">
                          5,857人批注过，共计51,582条批注
                        </a>
                      </div>
                    </div>
                    <div class="card demo-card-header-pic">
                      <div style="background-image:url(images/dianying.jpg)" class="card-header align-items-flex-end">你要高雅 ——由“烂片”所想到的
                      </div>
                      <div class="card-content card-content-padding">
                        <p class="date index">随笔 · 3 小时前</p>
                        <p>一直想就电影这个话题写点儿东西，可作为外行，一直没有提笔的勇气。 文题借用郭德纲“你”字系列相声。要说我 ...
                        </p>
                      </div>
                      <div class="card-footer">
                        <a href="#" class="link">
                          <i class="f7-icons size-18">heart_fill</i>2,514 喜欢</a>
                        <a href="#" class="link">
                          5,857人批注过，共计51,582条批注
                        </a>
                      </div>
                    </div>

                    <div class="card demo-card-header-pic">
                      <div style="background-image:url(images/zzq.jpg)" class="card-header align-items-flex-end">为您推荐：中国现代散文瑰宝——《朱自清散文集》</div>
                      <div class="card-content card-content-padding">
                        <p class="date index">
                          <span>[电子书]</span> 可免费试读</p>
                        <p>作为一位散文大家，朱自清以他独特的美文艺术风格，为中国现代散文增添了瑰丽的色彩，为建立中国现代散文全新的审美特征，树立了“白话美文的模范”。</p>
                      </div>
                    </div>

                    <div class="card">
                      <div class="card-header">一场花期一段梦</div>
                      <div class="card-content card-content-padding">
                        <p class="date index">散文 · 1天前</p>
                        <p>一朵小小的木樨花在寂静中绽放，怀念的果子便要在光阴里结实。青春韶华无情流逝，承载了太多苦涩又甘甜的往昔。花瓣曼妙飞扬的时候，牵念起心中清落的记忆，曾记得 ...
                        </p>
                      </div>
                      <div class="card-footer">
                        <a href="#" class="link">
                          <i class="f7-icons size-18">heart_fill</i>6,054 喜欢</a>
                        <a href="#" class="link">
                          5,857人批注过，共计51,582条批注
                        </a>
                      </div>
                    </div>

                    <div class="card">
                      <div class="card-header">无目的美好生活</div>
                      <div class="card-content card-content-padding">
                        <p class="date index">散文 · 1天前</p>
                        <p>一我曾经有一个朋友，其老公是加州一汉学家，这两口子深深地在中国文人身上投入了好几回，把他们一个个弄去加州，好吃好喝，认真投入友情，有时候还搭上点爱情和 ...
                        </p>
                      </div>
                      <div class="card-footer">
                        <a href="#" class="link">
                          <i class="f7-icons size-18">heart_fill</i>1,054 喜欢</a>
                        <a href="#" class="link">
                          5,857人批注过，共计51,582条批注
                        </a>
                      </div>
                    </div>
                  </ul>
                </div>
              </div>
              <div class="tab" id="tab2">
                <div class="ptr-preloader">
                  <div class="preloader"></div>
                  <div class="ptr-arrow"></div>
                </div>
                <div class="list media-list index">
                  <ul class="index">
                    <div class="card demo-card-header-pic">
                      <a href="anntator.html" class="link external black">
                        <div style="background-image:url(images/timg.jpg)" class="card-header align-items-flex-end">阿里年会马云演讲全文：可以失去一切，不能失去理想</div>
                      </a>
                      <div class="card-content card-content-padding">
                        <p class="date index">演讲 · 1 小时前</p>
                        <p>
                          <a href="anntator.html" class="link external color-black">
                            我们要感谢这个时代，感谢互联网，感谢中国，感谢所有的同事，包括那些曾经在阿里巴巴工作过哪怕半个小时的 ...</a>
                        </p>
                      </div>

                      <div class="card-footer">
                        <a href="#" class="link">
                          <i class="f7-icons size-18">heart_fill</i>514 喜欢</a>
                        <a href="#" class="link">
                          5,857人批注过，共计51,582条批注
                        </a>
                      </div>
                    </div>

                    <div class="card">
                      <div class="card-header">没有理由拒绝成为更好的自己</div>
                      <div class="card-content card-content-padding">
                        <p class="date index">励志 · 40 分钟前</p>
                        <p>你会发现这么多年喜欢你的人还会喜欢，不喜欢你的人依旧是陌路。但自己所有的努力，只是为了成为更好的自己。别人的看法似乎没有那么重要了，至少更爱自己了，也变 ...
                        </p>
                      </div>
                      <div class="card-footer">
                        <a href="#" class="link">
                          <i class="f7-icons size-18">heart_fill</i>1,421 喜欢</a>
                        <a href="#" class="link">
                          5,857人批注过，共计51,582条批注
                        </a>
                      </div>
                    </div>

                    <div class="card">
                      <div class="card-header">青春中国梦</div>
                      <div class="card-content card-content-padding">
                        <p class="date index">演讲 · 40 分钟前</p>
                        <p>中国梦存在于世世代代的中国人心间，是每个中国人心中的信念与奋斗的动力，自历史的滚滚长河以来，中国经历了太多的过往。中国是那个曾建成了万里长城，建造了数座 ...
                        </p>
                      </div>
                      <div class="card-footer">
                        <a href="#" class="link">
                          <i class="f7-icons size-18">heart_fill</i>1,421 喜欢</a>
                        <a href="#" class="link">
                          5,857人批注过，共计51,582条批注
                        </a>
                      </div>
                    </div>

                    <div class="card demo-card-header-pic">
                      <div style="background-image:url(images/speech.jpg)" class="card-header align-items-flex-end">为您推荐：加利福尼亚大学克服公众演讲焦虑课程</div>
                      <div class="card-content card-content-padding">
                        <p class="date index">
                          <span>[广告]</span> 可免费试听 5 分钟</p>
                        <p>本课程旨在帮助研究生和博士后们做好在各种听众面前进行优秀的演讲的准备。本课涉及的公众演讲技巧适用于各领域的学者和研究人员。</p>
                      </div>
                    </div>

                    <div class="card">
                      <div class="card-header">台湾作家林清玄散文精选摘抄</div>
                      <div class="card-content card-content-padding">
                        <p class="date index">摘记 · 5小时前</p>
                        <p>无论是少年、青年还是已经步入中年，对于林清玄这个名字都并不陌生。这个台湾作家的智慧确实渗透了他的每一篇散文，感染了每一颗灯前捧读的心。正是林清玄，教会了 ...
                        </p>
                      </div>
                      <div class="card-footer">
                        <a href="#" class="link">
                          <i class="f7-icons size-18">heart_fill</i>1,014 喜欢</a>
                        <a href="#" class="link">
                          5,857人批注过，共计51,582条批注
                        </a>
                      </div>
                    </div>

                    <div class="card demo-card-header-pic">
                      <div style="background-image:url(images/jobs.jpg)" class="card-header align-items-flex-end">乔布斯在斯坦福大学毕业典礼上的演讲</div>
                      <div class="card-content card-content-padding">
                        <p class="date index">演讲 · 3 小时前</p>
                        <p>今天，我很荣幸和大家在一起，参加这个世界上最好的大学之一的毕业典礼。我从没有大学毕业。说实话，这是迄 ...</p>
                      </div>
                      <div class="card-footer">
                        <a href="#" class="link">
                          <i class="f7-icons size-18">heart_fill</i>1,421 喜欢</a>
                        <a href="#" class="link">
                          5,857人批注过，共计51,582条批注
                        </a>
                      </div>
                    </div>

                    <div class="card demo-card-header-pic">
                      <div style="background-image:url(images/dianying.jpg)" class="card-header align-items-flex-end">你要高雅 ——由“烂片”所想到的
                      </div>
                      <div class="card-content card-content-padding">
                        <p class="date index">随笔 · 3 小时前</p>
                        <p>一直想就电影这个话题写点儿东西，可作为外行，一直没有提笔的勇气。 文题借用郭德纲“你”字系列相声。要说我 ...
                        </p>
                      </div>
                      <div class="card-footer">
                        <a href="#" class="link">
                          <i class="f7-icons size-18">heart_fill</i>2,514 喜欢</a>
                        <a href="#" class="link">
                          5,857人批注过，共计51,582条批注
                        </a>
                      </div>
                    </div>

                    <div class="card demo-card-header-pic">
                      <div style="background-image:url(images/zzq.jpg)" class="card-header align-items-flex-end">为您推荐：中国现代散文瑰宝——《朱自清散文集》</div>
                      <div class="card-content card-content-padding">
                        <p class="date index">
                          <span>[电子书]</span> 可免费试读</p>
                        <p>作为一位散文大家，朱自清以他独特的美文艺术风格，为中国现代散文增添了瑰丽的色彩，为建立中国现代散文全新的审美特征，树立了“白话美文的模范”。</p>
                      </div>
                    </div>

                    <div class="card">
                      <div class="card-header">一场花期一段梦</div>
                      <div class="card-content card-content-padding">
                        <p class="date index">散文 · 1天前</p>
                        <p>一朵小小的木樨花在寂静中绽放，怀念的果子便要在光阴里结实。青春韶华无情流逝，承载了太多苦涩又甘甜的往昔。花瓣曼妙飞扬的时候，牵念起心中清落的记忆，曾记得 ...
                        </p>
                      </div>
                      <div class="card-footer">
                        <a href="#" class="link">
                          <i class="f7-icons size-18">heart_fill</i>6,054 喜欢</a>
                        <a href="#" class="link">
                          5,857人批注过，共计51,582条批注
                        </a>
                      </div>
                    </div>

                    <div class="card">
                      <div class="card-header">无目的美好生活</div>
                      <div class="card-content card-content-padding">
                        <p class="date index">散文 · 1天前</p>
                        <p>一我曾经有一个朋友，其老公是加州一汉学家，这两口子深深地在中国文人身上投入了好几回，把他们一个个弄去加州，好吃好喝，认真投入友情，有时候还搭上点爱情和 ...
                        </p>
                      </div>
                      <div class="card-footer">
                        <a href="#" class="link">
                          <i class="f7-icons size-18">heart_fill</i>1,054 喜欢</a>
                        <a href="#" class="link">
                          5,857人批注过，共计51,582条批注
                        </a>
                      </div>
                    </div>
                  </ul>
                </div>
              </div>
              <div class="block searchbar-not-found">
                <div class="block-inner">无结果</div>
              </div>
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