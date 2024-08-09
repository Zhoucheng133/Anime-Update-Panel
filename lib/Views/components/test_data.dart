class TestData{
var html=r'''
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta name="robots" content="index, follow">

        <title>本季番 - 番组表 - 爱恋动漫BT下载</title>
        <meta name="keywords" content="动画 漫画 Galgame 游戏 动漫音乐 片源 RAW BT下载站 BT分享页 BT发布页 字幕组 下载 Torrent"/>
            <meta name="description" content="爱恋BT分享站，动画～漫画～游戏～动漫音乐～片源（RAW）～各类ACG资源聚集地～欢迎各大佬发布入住！"/>

        <meta name="google-site-verification" content="9oE319zPT/MuHSCI0KtEwWQbPWvLFdLMZAGiM1inx3JS0E445omFpCQMj9g8uccCacI2ktrozA2mmdVkXp87sSZ/j8vpATTiG9mqOaVhvaRagoFLPD3aQlm2bgFHmmoN9YDnD7iDyvi/fpUWNsxb8XLdH5+ACUpoZtW3Gql6ZuKMg7BmsUAIaKh3JMmwyLtu1VHiGzZ5sKdI+TO/1aAF2i3tl9tbiHzf0zDcYGFWRaE6FJQRwiGjJJ0xs1iVRAl/GGgL+x6CC+cpzP1bGM+8ZZAA0HmWOYHVosa7WkPeGuh4v0NxrXa84udBCen+ImkF"/>

    <link rel="search" title="爱恋动漫BT下载" type="application/opensearchdescription+xml" href="addon.php?r=opensearch.xml"/>

        <link rel="alternate" type="application/rss+xml" title="爱恋动漫BT下载[RSS订阅]" href="rss.xml"/>
            <link rel="shortcut icon" href="images/favicon/kisssub.ico" type="image/x-icon"/>
        <link rel="stylesheet" href="addon/assets/node_modules/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="addon/assets/node_modules/balloon-css/balloon.min.css">
    <link type="text/css" rel="stylesheet" href="css/btmaster.css?v20081216"/>
    <link type="text/css" rel="stylesheet" href="css/common.css?20210905.1"/>
    <link type="text/css" rel="stylesheet" href="css/style_base.css?v20170813"/>
        <link type="text/css" rel="stylesheet" href="css/gg_base.css?v20081216"/>
                <style type="text/css">/*
@import url("/css/style_red1_rounded.css?20210210");
*/
@import url("/css/style_pink1_rounded.css?20190322");</style>
            <!-- <link type="text/css" rel="stylesheet" href="css/random/r2.css?v20081216" /> -->
            <script type="text/javascript" src="addon/assets/bower_components/jquery/jquery.min.js?2021"></script>
    <script type="text/javascript">jQuery.noConflict();</script>
    <script type="text/javascript" src="javascripts/mt-core.js?v20081130"></script>
    <script type="text/javascript" src="javascripts/btmaster.js?v20081130"></script>
    <script src="addon/assets/node_modules/jquery.cookie/jquery.cookie.js"></script>
    <script src="addon/assets/common/ads.js?20190526.2"></script>
    <script src="addon/assets/common/gg.js?20231203"></script>
    <script type="text/javascript">
        Config['url_rewrite'] = true;
        Config['in_script'] = "";
        Config['link_board'] = {"datasets":{"gg_link_board":{"data_src":"text_vars","sections":{"gg_header_link_board":{"enabled":true,"columns":6,"text_align":"left"}}},"gg_link_board_placeholder":{"data_src":"api_data","sections":{"gg_header_link_board":{"enabled":true,"columns":6,"text_align":"left"}}},"gg_side_board":{"data_src":"api_data","sections":{"gg_side_board_games":{"enabled":true,"limit":6,"more_link":["https:\/\/galgame.ero-labs.online\/"]}}},"gg_banner_board":{"data_src":"api_data","sections":{"gg_banner_board_games":{"enabled":true,"limit":12}}}}};
        Config['mika_mode'] = {
            'enabled': true        };
        Config['user_script'] = {
            'enabled': true,
            'revision': '20181120.2',
            'platform': 'desktop'
        };
        if (typeof Config['gg_blocked'] === 'undefined') {
            Config['gg_blocked'] = true;
        }
    </script>
    <script type="text/javascript">
        // No-Opener-No-Phishers
        jQuery('[target="_blank"]').attr("rel", "noopener noreferrer");
    </script>

</head>

<body>

<script type="text/javascript">
    Config['search_tip'] = "（/＞_＜)/";

    function doSearch() {
        var a = $F("topsearch");
        if (!a || Config['search_tip'] == a) {
            Window.alert(Config['search_tip']);
            return false;
        }
        window.location.href = "search.php?keyword=" + encodeURI(a);
    }

    function searchTip(a) {
        if (a == 1) {
            if (!$F("topsearch")) {
                $("topsearch").value = Config['search_tip'];
            }
        } else {
            if ($F("topsearch") == Config['search_tip']) {
                $("topsearch").value = "";
            }
            $("topsearch").onblur = function () {
                searchTip(1);
            };
        }
    }
</script>

<div id="btm" style="min-width:1230px; max-width: 80%;">
<div class="header">
    <div class="top_nav">
        <p class="left">
            <a href="./" style="display: none;">爱恋动漫BT下载</a>
            <a href="addon.php?r=god_mode/console">路人模式</a>        </p>

        <p class="right">
            <!--<a href="./">茵蒂克丝</a> |-->
            <a href="./"            target="_blank">
            茵蒂克丝</a> | <a href="addon.php?r=document/view&page=kisssub/app"            target="_blank">
            爱恋APP</a> | <a href="addon.php?r=document/view&page=kisssub/community"            target="_blank">
            社区日常</a> | <a href="addon.php?r=document/view&page=ui-preference"            target="_blank">
            页面选项</a> | <a href="addon.php?r=bangumi/table"            target="_blank">
            番组表</a> | <a href="addon.php?r=bgmlist"            target="_blank">
            动画库</a> | <a href="addon.php?r=sublist/group"            target="_blank">
            字幕组</a> | <a href="addon.php?r=tagcloud"            target="_blank">
            标签云</a> | <a href="addon.php?r=document/view&page=group-application"            target="_blank">
            开通联萌</a> | <a href="addon.php?r=document/view&page=abuse"            target="_blank">
            滥用举报</a> |
            <script type="text/javascript" src="javascripts/locale.js?v20150715"></script> |
                        <a href="user.php">会员面板</a> |            <!--<a href="search.php">高级搜索</a> | --><a href="user.php?o=upload" style="font-weight: bold;" target="_blank">我要发布</a>                                    </p>  
    </div>
    <div class="func">
        <div class="topsearch"><input type="text" id="topsearch" onkeypress="doSearchEvent(event);" value="（/＞_＜)/" onfocus="searchTip(0);" /><a href="javascript:void(0);" onclick="doSearch();return false;">搜索</a></div>
        <script type="text/javascript">var kcount=0, kheight=18, kst=0;</script>
        <div class="hotsearch" style="display: none;">
            <span class="left">人气搜索:</span>
            <div id="searchkey">
                <div id="searchkeybody">
                                </div>
            </div>
        </div>
    </div>
</div>

<div class="nav" id="smenu">
    <ul>
        <li><a href="./">全部</a></li>
                <li><a href="sort-1-1.html">动画</a></li>
                <li><a href="sort-2-1.html">漫画</a></li>
                <li><a href="sort-3-1.html">音乐</a></li>
                <li><a href="sort-4-1.html">周边</a></li>
                <li><a href="sort-5-1.html">其它</a></li>
                <li><a href="sort-6-1.html">Raw</a></li>

        <li><a href="animovie-1.html">Ova</a></li>
        <li><a href="complete-1.html">合集</a></li>
        <li><a href="discuss-1.html">讨论</a></li>
                <li><a href="cloudfile-1.html">网盘</a></li>
        <li><a href="addon.php?r=bgmlist">片库</a></li>
        <li><a href="addon.php?r=tagcloud">更多</a></li>
            </ul>
</div>

<script type="text/javascript">btmenu.init('smenu', 'auto');</script>





<div class="main">


<style type="text/css">
    .bgm-wrap {
        position: relative
    }

    #bgm-table {
        width: 75%;
        margin: 0;
        line-height: 2.5em;
        padding: 20px;
        display: inline-block;
    }

    #bgm-table dl {
        margin: 0;
        border: 0;
    }

    #bgm-table dt {
        display: block;
        font-weight: bold;
        color: #000000;
        background-color: #E8E8E8;
        padding: 0.5em 0 0.5em 1em;
        border-radius: 10px;
        margin: 10px 0 10px 0;
        text-shadow: 1px 1px 8px rgba(150, 150, 150, 1);
    }

    #bgm-table dd {
        display: inline-block;
        margin: 0 0 0 40px;
        padding: 0;
        border: 0;
        width: 20%;
        word-break: keep-all;
        text-overflow: ellipsis;
        white-space: nowrap;
        /*line-height: 4em;*/
    }

    #bgm-list {
        position: absolute;
        width: 18%;
        margin: 70px 0;
        line-height: 2.5em;
        padding: 20px;
        top: 0;
        right: 0;
    }

    #bgm-nav {
        position: absolute;
        z-index: 100;
        width: 85%;
    }

    #bgm-nav .module {
        background-color: #F5F5F5;
        border-radius: 10px;
    }

    #bgm-nav #bgm-notice {
        /*height: 120px;*/
        padding: 10px 10px;
        background-color: #f2dede;
    }

    #bgm-list ul {
        list-style: none;
        height: 400px;
        width: 100%;
        overflow-y: scroll;
        text-align: center;
        padding: 10px 0;
    }

    #bgm-list li {
        margin: 10px;
    }

    #bgm-list li a {
        display: block;
        border-style: solid;
        border-width: 1px;
        text-decoration: none;
        padding: 5px;
        margin: 10px 10px 10px 10px;
        text-align: center;
        border-radius: 10px;
        border-color: #333333;
    }

    #bgm-list a:hover {
        background-color: #dff0d8;
    }

    #bgm-list a:focus {
        outline: 0;
    }

    #bgm-list .selected {
        border-color: mediumvioletred;
        font-weight: bold;
        background-color: #dff0d8;
    }
</style>

<div class="main">
    <div class="box clear bgm-wrap">
        <h2 class="title">
            <span class="left">首页番组表</span>
            <span class="right">＋<a href="addon.php?r=bangumi/table&bgm_id=9999q1&layout=frame">侧栏模式</a></span>
        </h2>

        <div id="bgm-table">
                                    <dl>
                <dt>
                    星期日（日）                                                                                                                                                                                                             
           </dt>

                                <dd>
                    <a target="_blank" href="search.php?keyword=%E6%B5%B7%E8%B4%BC%E7%8E%8B" class="bgm_score3">
                    海贼王</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=7%E6%9C%88%E6%96%B0%E7%95%AA%E2%86%92" class="bgm_score">
                    7月新番→</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E5%B0%8F%E5%B8%82%E6%B0%91" class="bgm_score"                    data-balloon-length="medium" data-balloon="推理/日常/甜点→2024年7月7日起 每周日0:30(2季/分割)" data-balloon-pos="up">
                    小市民系列</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E9%AD%94%E5%89%91%E8%B0%AD" class="bgm_score0"                    data-balloon-length="medium" data-balloon="魔法学园/战斗【集数：12】→2024年7月7日起 每周日15:30" data-balloon-pos="up">
                    杖与剑的魔剑谭</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E4%BA%A6%E5%8F%B6%E4%BA%A6%E8%8A%B1" class="bgm_score"                    data-balloon-length="medium" data-balloon="啦啦队/竞技/贴贴【集数：12】→2024年7月7日起 每周日22:45" data-balloon-pos="up">
                    亦叶亦花</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=FAIRY+TAIL" class="bgm_score"                    data-balloon-length="medium" data-balloon="冒险/战斗/热血→2024年7月7日起 每周日16:30(2季度)" data-balloon-pos="up">
                    妖精的尾巴 百年任务</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E7%A5%9E%E4%B9%8B%E5%A1%94" class="bgm_score0"                    data-balloon-length="medium" data-balloon="冒险/爬塔/战斗【集数：24】→2024年7月7日起 每周日22:00" data-balloon-pos="up">
                    神之塔 第2季</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E5%AE%8C%E7%BE%8E%E8%B6%85%E4%BA%BA%E5%A7%8B%E7%A5%96%E7%AF%87" class="bgm_score"                    data-balloon-length="medium" data-balloon="超级英雄/战斗→2024年7月7日起 每周日22:30(4季度)" data-balloon-pos="up">
                    筋肉人 完美超人始祖篇</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E7%B2%BE%E7%81%B5%E5%B0%8F%E5%A7%90" class="bgm_score"                    data-balloon-length="medium" data-balloon="逆穿越/减肥/涩涩→2024年7月7日起 每周日0:00" data-balloon-pos="up">
                    精灵小姐瘦不了</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E8%BA%AB%E4%B8%BAVtuber" class="bgm_score"                    data-balloon-length="medium" data-balloon="VTB/反差/贴贴→2024年7月7日起 每周日23:00" data-balloon-pos="up">   
                    身为VTuber的我因为忘记关台而成了传说</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E7%8E%B0%E4%BB%A3%E8%AF%AF%E8%AF%91" class="bgm_score"                    data-balloon-length="medium" data-balloon="名言/错译/短剧→2024年7月7日起 每周日0:00声优短剧衍生动 画(泡面番)" data-balloon-pos="up">
                    现代误译</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E2%86%907%E6%9C%88%E6%96%B0%E7%95%AA" class="bgm_score">
                    ←7月新番</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E5%A4%9C%E6%A8%B1%E5%AE%B6" class="bgm_score"                    data-balloon-length="medium" data-balloon="间谍/异能/动作/恋爱喜剧/家族【集数：27】→2024年4月7日起每周日16:00" data-balloon-pos="up">
                    夜樱家的大作战</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=Sasayaku" class="bgm_score"                    data-balloon-length="medium" data-balloon="音乐/恋爱/贴贴→2024年4月14日起每周日0:30" data-balloon-pos="up">
                    恋语轻唱</a></dd>

            </dl>
                                                <dl>
                <dt>
                                        星期一（月）                                                                                                                                                                                         
           </dt>

                                <dd>
                    <a target="_blank" href="search.php?keyword=7%E6%9C%88%E6%96%B0%E7%95%AA%E2%86%92" class="bgm_score">
                    7月新番→</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=Mayonaka+Punch" class="bgm_score"                    data-balloon-length="medium" data-balloon="视频创作/贴贴【集数：12】→2024年7月8日起 每周一21:30" data-balloon-pos="up"> 
                    深夜重拳</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E8%BE%B9%E5%85%BB%E5%A8%83%E8%BE%B9%E5%BD%93%E5%86%92%E9%99%A9%E8%80%85" class="bgm_score"                    data-balloon-length="medium" data-balloon="转生/冒险/带娃【集 数：12】→2024年7月8日起 每周一0:50" data-balloon-pos="up">
                    异世界悠闲纪行～边养娃边当冒险者～</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=SHY" class="bgm_score0"                    data-balloon-length="medium" data-balloon="超级英雄/战斗【集数：12】→2024年7月1日起 每周一23:00" data-balloon-pos="up">
                    SHY 腼腆英雄 第2季</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E5%A4%9C%E6%B8%B8%E7%94%9F%E6%B4%BB" class="bgm_score"                    data-balloon-length="medium" data-balloon="涩涩→2024年7月8日起 每周一0:00本季度僧侣党" data-balloon-pos="up">
                    夜游生活</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E6%9A%97%E8%8A%9D%E5%B1%85" class="bgm_score0"                    data-balloon-length="medium" data-balloon="怪谈/都市传说→2024年7月15日起 每周一1:50(泡面番)" data-balloon-pos="up">
                    暗芝居 13期</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E2%86%907%E6%9C%88%E6%96%B0%E7%95%AA" class="bgm_score">
                    ←7月新番</a></dd>

            </dl>
                                                <dl>
                <dt>
                                                            星期二（火）                                                                                                                                                                     
           </dt>

                                <dd>
                    <a target="_blank" href="search.php?keyword=7%E6%9C%88%E6%96%B0%E7%95%AA%E2%86%92" class="bgm_score">
                    7月新番→</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E5%BC%82%E4%B8%96%E7%95%8C%E5%A4%B1%E6%A0%BC" class="bgm_score"                    data-balloon-length="medium" data-balloon="穿越/奇妙冒险【集数：12】→2024年7月9日起 每周 二22:30" data-balloon-pos="up">
                    异世界失格</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E9%AD%94%E6%B3%95%E5%B0%91%E5%A5%B3" class="bgm_score0"                    data-balloon-length="medium" data-balloon="敌对恋/狗粮/宠溺【集数：12】→2024年7月9日起 每周二21:45每话12min±泡面番" data-balloon-pos="up">
                    魔法少女与恶曾是敌人</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E5%86%92%E9%99%A9%E8%80%85+%E8%A2%AB%E6%9C%80%E5%BC%BA" class="bgm_score"                    data-balloon-length="medium" data-balloon="冒险/战斗/喜剧【集数：12】→2024年7月2日起 每周二1:00" data-balloon-pos="up">
                    大叔新人冒险者，被最强小队往死里锻炼后变无敌了</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E5%93%8E%E5%92%95%E5%B2%9B%E6%B6%88%E5%A4%B1%E7%9A%84%E8%88%94%E7%94%9C%E6%AD%8C%E5%A7%AC" class="bgm_score"                    data-balloon-length="medium" data-balloon=" 本季度最抽象的动画→2024年7月9日起 每周二21:30" data-balloon-pos="up">
                    哎咕岛消失的舔甜歌姬</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E2%86%907%E6%9C%88%E6%96%B0%E7%95%AA" class="bgm_score">
                    ←7月新番</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E7%8B%BC%E4%B8%8E%E9%A6%99%E8%BE%9B%E6%96%99" class="bgm_score0"                    data-balloon-length="medium" data-balloon="重制/行商/公路【集数：25】→2024年4月2日起每周二0:30" data-balloon-pos="up">
                    新 狼与香辛料</a></dd>

            </dl>
                                                <dl>
                <dt>
                                                                                星期三（水）                                                                                                                                                 
           </dt>

                                <dd>
                    <a target="_blank" href="search.php?keyword=7%E6%9C%88%E6%96%B0%E7%95%AA%E2%86%92" class="bgm_score">
                    7月新番→</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E9%82%BB%E5%BA%A7%E8%89%BE%E8%8E%89%E5%90%8C%E5%AD%A6" class="bgm_score0"                    data-balloon-length="medium" data-balloon="校园/恋爱喜剧【集数：12】→2024年7月3日起 每周三22:30" data-balloon-pos="up">
                    不时轻声地以俄语遮羞的邻座艾莉同学</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E6%88%91%E6%8E%A8%E7%9A%84%E5%AD%A9%E5%AD%90" class="bgm_score0"                    data-balloon-length="medium" data-balloon="演艺界/扭曲/兄妹【集数：12】→2024年7月3日起  每周三22:00" data-balloon-pos="up">
                    我推的孩子 第2季</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E5%A4%9A%E6%95%B0%E6%AC%A0" class="bgm_score"                    data-balloon-length="medium" data-balloon="死亡游戏/智斗→2024年7月3日起 每周三0:59(2季度/连续)" data-balloon-pos="up">
                    多数欠</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E5%8F%8C%E8%83%9E%E8%83%8E" class="bgm_score"                    data-balloon-length="medium" data-balloon="双子三角恋/胃疼【集数：12】→2024年7月10日起 每周三22:30" data-balloon-pos="up">
                    无法割舍恋情的双胞胎</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E6%88%98%E5%9B%BD%E5%A6%96%E7%8B%90" class="bgm_score0"                    data-balloon-length="medium" data-balloon="妖魔/冒险/战斗【集数：24】→2024年7月17日起 每周三23:00" data-balloon-pos="up">
                    战国妖狐 千魔混沌篇</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E6%9C%80%E5%90%8E+%E6%88%98%E5%9C%BA" class="bgm_score"                    data-balloon-length="medium" data-balloon="魔法科技/敌对恋【集数：12】→2024年7月10日起 每周三21:30" data-balloon-pos="up">
                    你与我最后的战场 亦或是世界起始的圣战 第2季</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E9%AD%94%E7%8E%8B%E5%86%9B" class="bgm_score"                    data-balloon-length="medium" data-balloon="转生/魔法/战争【集数：12】→2024年6月26日起 每周三22:00" data-balloon-pos="up">
                    魔王军最强的魔术师是人类</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=Delicos+Nursery" class="bgm_score"                    data-balloon-length="medium" data-balloon="吸血鬼/悬疑/带娃→2024年8月7日起 每周三23:30(泡面番)" data-balloon-pos="up"> 
                    Delicos Nursery</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E2%86%907%E6%9C%88%E6%96%B0%E7%95%AA" class="bgm_score">
                    ←7月新番</a></dd>

            </dl>
                                                <dl>
                <dt>
                                                                                                    星期四（木）                                                                                                                             
           </dt>

                                <dd>
                    <a target="_blank" href="search.php?keyword=7%E6%9C%88%E6%96%B0%E7%95%AA%E2%86%92" class="bgm_score">
                    7月新番→</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=Giji+Harem" class="bgm_score"                    data-balloon-length="medium" data-balloon="校园/恋爱喜剧【集数：12】→2024年7月4日起 每周四23:30" data-balloon-pos="up">     
                    模拟后宫体验</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E4%B9%89%E5%A6%B9%E7%94%9F%E6%B4%BB" class="bgm_score0"                    data-balloon-length="medium" data-balloon="兄妹/家庭/恋爱【集数：12】→2024年7月4日起 每周四20:00" data-balloon-pos="up">
                    义妹生活</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E5%BC%82%E4%B8%96%E7%95%8C%E8%87%AA%E6%9D%80" class="bgm_score"                    data-balloon-length="medium" data-balloon="穿越/奇幻/暴力【集数：10】→2024年7月5日起 每周五23:30，2024年6月27日第1~3话先行配信，第4话以后于2024年7月4日起每周四先行配信" data-balloon-pos="up">
                    异世界自杀小队</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E6%8B%9B%E6%9E%B6" class="bgm_score"                    data-balloon-length="medium" data-balloon="冒险/战斗/喜剧【集数：12】→2024年7月4日起 每周四23:00" data-balloon-pos="up">
                    我要【招架】一切 ～反误解的世界最强想成为冒险者～</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E7%8A%B6%E6%80%81%E5%BC%82%E5%B8%B8" class="bgm_score0"                    data-balloon-length="medium" data-balloon="穿越/冒险/复仇【集数：12】→2024年7月4日起 每周四23:59" data-balloon-pos="up">
                    靠废材技能【状态异常】成为最强的我将蹂躏一切</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=Senpai+wa+Otokonoko" class="bgm_score"                    data-balloon-length="medium" data-balloon="女装/恋爱/友情【集数：12】→2024年7月4日起 每周四23:55" data-balloon-pos="up">
                    前辈是伪娘</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E5%A5%B3%E7%A5%9E%E5%92%96%E5%95%A1%E5%8E%85" class="bgm_score"                    data-balloon-length="medium" data-balloon="恋爱/喜剧/后宫→2024年7月4日起 每周四23:26" data-balloon-pos="up">
                    女神咖啡厅 第2季</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E8%B5%A4%E7%8C%AB" class="bgm_score"                    data-balloon-length="medium" data-balloon="喵星人/美食/日常→2024年7月4日起 每周四22:56" data-balloon-pos="up">      
                    拉面赤猫</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E9%BB%84%E6%98%8F%E5%85%89%E5%BD%B1" class="bgm_score"                    data-balloon-length="medium" data-balloon="社团/摄影/BL→2024年7月4日起 每周四22:30" data-balloon-pos="up">
                    黄昏光影</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E2%86%907%E6%9C%88%E6%96%B0%E7%95%AA" class="bgm_score">
                    ←7月新番</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E9%9B%80%E9%AD%82" class="bgm_score"                    data-balloon-length="medium" data-balloon="麻将/Q版/日常/喜剧(泡面番)2024年4月25日起每周四21:00" data-balloon-pos="up">
                    雀魂 杠！！</a></dd>

            </dl>
                                                <dl>
                <dt>
                                                                                                                        星期五（金）                                                                                                         
           </dt>

                                <dd>
                    <a target="_blank" href="search.php?keyword=7%E6%9C%88%E6%96%B0%E7%95%AA%E2%86%92" class="bgm_score">
                    7月新番→</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E6%AC%A1%E5%85%83%E7%9A%84%E8%AF%B1%E6%83%91" class="bgm_score"                    data-balloon-length="medium" data-balloon="Cos/热血/涩涩→2024年7月5日起 每周五21:30(2季度/连续)" data-balloon-pos="up">
                    2.5次元的诱惑</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E9%B9%BF%E4%B9%83%E5%AD%90" class="bgm_score"                    data-balloon-length="medium" data-balloon="校园/抽象/无厘头【集数：12】→2023年7月7日起 每周五22:30" data-balloon-pos="up">
                    鹿乃子乃子虎视眈眈</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E6%81%B6%E9%AD%94%E7%9A%84%E7%A0%B4%E5%9D%8F" class="bgm_score"                    data-balloon-length="medium" data-balloon="2024年5月23日起在Crunchyroll配信，每周1话，全18话。" data-balloon-pos="up">
                    恶魔的破坏</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E5%B0%BC%E5%B0%94" class="bgm_score0"                    data-balloon-length="medium" data-balloon="科幻/末世/战争→2024年7月5日起 每周五22:30" data-balloon-pos="up">       
                    尼尔：自动人形 Ver1.1a 第2季</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E5%86%8D%E8%A7%81%EF%BC%8C%E5%9C%B0%E7%90%83" class="bgm_score"                    data-balloon-length="medium" data-balloon="奇幻/冒险/战斗【集数：20】→2024年7月12日起 每 周五21:30" data-balloon-pos="up">
                    再见，地球</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E2%86%907%E6%9C%88%E6%96%B0%E7%95%AA" class="bgm_score">
                    ←7月新番</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E5%8F%B2%E8%8E%B1%E5%A7%86%E8%BF%99%E6%A1%A3%E4%BA%8B" class="bgm_score0"                    data-balloon-length="medium" data-balloon="转生/奇幻冒险/群像/傲天【集数：26】→2024年4月5日起每周五22:00" data-balloon-pos="up">
                    关于我转生变成史莱姆这档事 第3季</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E9%AD%94%E7%8E%8B%E5%AD%A6%E9%99%A2" class="bgm_score0"                    data-balloon-length="medium" data-balloon="转世/傲天/校园→2024年4月12日起每周五21:00" data-balloon-pos="up">
                    魔王学院的不适合者 第2季 Part.2</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E5%AE%9D%E5%8F%AF%E6%A2%A6+%E5%9C%B0%E5%B9%B3%E7%BA%BF" class="bgm_score"                    data-balloon-length="medium" data-balloon="宠物/竞技/冒险 →2023年4月14日起每周 五17:55" data-balloon-pos="up">
                    宝可梦 地平线</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=Doraemon" class="bgm_score1">
                    哆啦A梦</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E8%9C%A1%E7%AC%94%E5%B0%8F%E6%96%B0" class="bgm_score0">
                    蜡笔小新</a></dd>

            </dl>
                                                <dl>
                <dt>
                                                                                                                                            星期六（土）                                                                                     
           </dt>

                                <dd>
                    <a target="_blank" href="search.php?keyword=7%E6%9C%88%E6%96%B0%E7%95%AA%E2%86%92" class="bgm_score">
                    7月新番→</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E7%89%A9%E8%AF%AD%E7%B3%BB%E5%88%97" class="bgm_score0"                    data-balloon-length="medium" data-balloon="怪异/群像/外传→2024年7月6日起 每周六21:00物语系列 OFF & MONSTER SEASON" data-balloon-pos="up">
                    物语系列 第外季＆第怪季</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=Make+Heroine+ga+Oosugiru" class="bgm_score"                    data-balloon-length="medium" data-balloon="另类恋爱喜剧【集数：12】→2024年7月13日起 每周六23:30" data-balloon-pos="up">
                    败犬女主太多了</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=ATRI" class="bgm_score"                    data-balloon-length="medium" data-balloon="仿生机器人/恋爱【集数：13】→2024年7月13日起 每周六23:00" data-balloon-pos="up">        
                    亚托莉 -我挚爱的时光-</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E6%93%85%E9%95%BF%E9%80%83%E8%B7%91%E7%9A%84%E6%AE%BF%E4%B8%8B" class="bgm_score"                    data-balloon-length="medium" data-balloon="历史/逃亡/复仇/→2024年7月6日起 每周六22:30(2季度/分割)" data-balloon-pos="up">
                    擅长逃跑的殿下</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E4%B8%BA%E4%BD%95%E6%97%A0%E4%BA%BA%E8%AE%B0%E5%BE%97%E6%88%91%E7%9A%84%E4%B8%96%E7%95%8C" class="bgm_score"                    data-balloon-length="medium" data-balloon=" 奇幻/战斗/恋爱【集数：12】→2024年7月13日起 每周六21:30" data-balloon-pos="up">
                    为何无人记得我的世界</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E6%88%91%E7%9A%84%E5%A6%BB%E5%AD%90" class="bgm_score"                    data-balloon-length="medium" data-balloon="人机恋/日常/温馨【集数：12】→2024年6月29日起 每周六22:00" data-balloon-pos="up">
                    我的妻子没有感情</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E5%8F%A4%E8%BF%9E%E6%B3%B0%E6%B2%99" class="bgm_score"                    data-balloon-length="medium" data-balloon="科幻/机战/超级系【集数：13】→2024年7月6日起 每周六0:23" data-balloon-pos="up">
                    古连泰沙U</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E5%A4%A9%E7%A9%97%E4%B9%8B%E5%92%B2%E7%A8%BB%E5%A7%AC" class="bgm_score"                    data-balloon-length="medium" data-balloon="神魔/种田/冒险→2024年7月6日起 每周六22:00" data-balloon-pos="up">
                    天穗之咲稻姬</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E4%BA%9A%E5%88%BB%E5%A5%A5%E7%89%B9%E6%9B%BC" class="bgm_score"                    data-balloon-length="medium" data-balloon="台译：超人力霸王雅克→2024年7月6日起 每周六9:00" data-balloon-pos="up">
                    亚刻奥特曼</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E5%9C%B0%E4%B8%8B%E5%9F%8E%E4%B8%AD%E7%9A%84%E4%BA%BA" class="bgm_score"                    data-balloon-length="medium" data-balloon="职场/奇妙日常【集数：12】→2024年7月6 日起 每周六0:53" data-balloon-pos="up">
                    地下城中的人</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E8%BF%99%E4%B8%AA%E4%B8%96%E7%95%8C%E6%BC%8F%E6%B4%9E%E7%99%BE%E5%87%BA" class="bgm_score"                    data-balloon-length="medium" data-balloon="游戏世界/debug【集 数：13】→2024年7月6日起 每周六1:23" data-balloon-pos="up">
                    这个世界漏洞百出</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E6%8E%A2%E7%B4%A2%E8%8B%B1%E9%9B%84%E8%B0%AD" class="bgm_score"                    data-balloon-length="medium" data-balloon="现代奇幻/战斗→2024年7月6日起 每周六21:00" data-balloon-pos="up">
                    从路人开始的探索英雄谭</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E9%AD%94%E5%AF%BC%E5%85%B7%E5%B8%88%E5%A6%B2%E8%8E%89%E4%BA%9A" class="bgm_score"                    data-balloon-length="medium" data-balloon="转生/大女主/奋斗【集数：12】→2024年7月6日起 每周六20:00" data-balloon-pos="up">
                    魔导具师妲莉亚永不妥协</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E5%8D%A1%E7%89%87%E6%88%98%E6%96%97" class="bgm_score"                    data-balloon-length="medium" data-balloon="TCG/对战/竞技【集数：15】→2024年7月6日起 每周六7:00" data-balloon-pos="up">
                    卡片战斗先导者 DivineZ 第2季</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E2%86%907%E6%9C%88%E6%96%B0%E7%95%AA" class="bgm_score">
                    ←7月新番</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E6%9D%80%E6%89%8B%E5%AF%93%E8%A8%80" class="bgm_score0"                    data-balloon-length="medium" data-balloon="杀手/日常/喜剧→2024年4月6日起每周六23:55(半年/连续)" data-balloon-pos="up">
                    杀手寓言</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E4%B9%8C%E9%B8%A6%E4%B8%8D%E6%8B%A9%E4%B8%BB" class="bgm_score"                    data-balloon-length="medium" data-balloon="和风奇幻/架空→2024年4月6日起每周六22:45" data-balloon-pos="up">
                    乌鸦不择主</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E5%BD%B1%E4%B9%8B%E8%AF%97" class="bgm_score0"                    data-balloon-length="medium" data-balloon="TCG/竞技→2024年4月13日起每周六8:30" data-balloon-pos="up">     
                    影之诗FLAME 方舟篇</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E5%90%8D%E4%BE%A6%E6%8E%A2%E6%9F%AF%E5%8D%97" class="bgm_score2"                    data-balloon-length="medium" data-balloon="日本人口还够吗？" data-balloon-pos="up">     
                    名侦探柯南</a></dd>

            </dl>
                                                <dl>
                <dt>
                                                                                                                                                                                                        <span style="font-weight: bold;">剧场版动画</span>                                    </dt>

                                <dd>
                    <a target="_blank" href="search.php?keyword=%E5%89%A7%E5%9C%BA%E7%89%88" class="bgm_score9">
                    已配信→</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E9%9D%92%E6%98%A5%E7%8C%AA%E5%A4%B4%E5%B0%91%E5%B9%B4%E4%B8%8D%E4%BC%9A%E6%A2%A6%E5%88%B0%E7%BA%A2%E4%B9%A6%E5%8C%85%E5%A5%B3%E5%AD%A9" class="bgm_score"                   
 data-balloon-length="medium" data-balloon=" BD发售时间24.06.26" data-balloon-pos="up">
                    青春猪头少年不会梦到红书包女孩</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=Code+Geass" class="bgm_score"                    data-balloon-length="medium" data-balloon=" 已上线Disney+流媒体，故事设定在《CODE GEASS反叛的鲁路修》主线剧情结束的四年之后 。剧情将围绕两名以高超武艺著称的佣兵——亚修和罗瑟展开。" data-balloon-pos="up">
                    Code Geass 夺还的罗塞 第1幕及第2幕</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E4%BD%A0%E6%83%B3%E6%B4%BB%E5%87%BA" class="bgm_score"                    data-balloon-length="medium" data-balloon=" BD发售时间24.07.03" data-balloon-pos="up">
                    你想活出怎样的人生</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E5%89%A7%E5%9C%BA%E7%89%88" class="bgm_score9">
                    即将配信→</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=SPY+FAMILY" class="bgm_score"                    data-balloon-length="medium" data-balloon=" BD发售时间24.07.31" data-balloon-pos="up">
                    间谍过家家 代号：白</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E5%9F%8E%E5%B8%82%E7%8C%8E%E4%BA%BA+%E5%A4%A9%E4%BD%BF%E4%B9%8B%E6%B3%AA" class="bgm_score"                    data-balloon-length="medium" data-balloon="BD发售时间24.07.31" data-balloon-pos="up">
                    城市猎人 天使之泪</a></dd>

            </dl>
                                                <dl>
                <dt>
                                                                                                                                                                                                                            <span style="font-weight: bold;">特殊放送番</span>                </dt>

                                <dd>
                    <a target="_blank" href="search.php?keyword=%E9%AB%98%E5%B0%94%E5%A4%AB%E7%89%A9%E8%AF%AD" class="bgm_score"                    data-balloon-length="medium" data-balloon="高尔夫/校园/成长→第1季 6月22日 Netflix全话配信 第2季 8月6日 Netflix全话配信" data-balloon-pos="up">
                    一击冲天 / 高尔夫物语</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E6%97%B6%E5%85%89%E5%B7%A1%E9%80%BB%E9%98%9F" class="bgm_score"                    data-balloon-length="medium" data-balloon="科幻/时空穿梭→2024年7月17日（第2季）Netflix（ 全集一举放送）" data-balloon-pos="up">
                    时光巡逻队</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E7%94%9C%E7%94%9C%E7%A7%81%E6%88%BF%E7%8C%AB" class="bgm_score"                    data-balloon-length="medium" data-balloon="喵星人/日常/治愈→2024年7月19日Netflix全话配信" data-balloon-pos="up">
                    甜甜私房猫 第5季</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E5%A5%BD%E6%83%B3%E5%91%8A%E8%AF%89%E4%BD%A0" class="bgm_score0"                    data-balloon-length="medium" data-balloon="校园/恋爱/急/好想急死你→2024年8月Netflix全话 配信" data-balloon-pos="up">
                    好想告诉你 第3季</a></dd>
                                <dd>
                    <a target="_blank" href="search.php?keyword=%E6%8B%B3%E6%84%BF%E9%98%BF%E4%BF%AE%E7%BD%97" class="bgm_score0"                    data-balloon-length="medium" data-balloon="战斗/暴力→2024年8月Netflix全话配信" data-balloon-pos="up">
                    拳愿阿修罗 第2季 Part2</a></dd>

            </dl>

        </div>

        <div id="bgm-list">
            <div id="bgm-nav">
                <div id="bgm-notice" class="module" style="text-align: center;">
                    <p><span style="font-weight: bold; font-size: 1.1em; border-bottom: solid 1px">～番组表编辑小提示～</span></p>

                    <p>对番组表不满意？请一起来完善喵</p>

                    <p>
                        <a style="border-bottom: solid 1px; text-decoration: none; background-color: transparent" href="addon.php?r=document/view&page=guestbook/bgm-feedback" target="_blank">番组报错入口</a> 、
                        <a style="border-bottom: solid 1px; text-decoration: none; background-color: transparent" href="addon.php?r=document/view&page=guestbook/bgm-hitokoto" target="_blank">短评投稿入口</a>
                    </p>

                    <p>
                        或者尝试亲自动手 <a style="border-bottom: solid 1px; text-decoration: none; background-color: transparent" href="addon.php?r=bangumi/table&bgm_id=9999q1&layout=frame">编辑番组表</a>
                    </p>
                </div>
                <ul class="module">
                                        <li>
                        <a id="9999q1" href="addon.php?r=bangumi/table&bgm_id=9999q1#9999q1"                        class="selected">首页番组表
                        </a></li>
                                        <li>
                        <a id="2024q2" href="addon.php?r=bangumi/table&bgm_id=2024q2#2024q2">2024年04月 春季番
                        </a></li>
                                        <li>
                        <a id="2024q1" href="addon.php?r=bangumi/table&bgm_id=2024q1#2024q1">2024年01月
                        冬季番</a></li>
                                        <li>
                        <a id="2023q4" href="addon.php?r=bangumi/table&bgm_id=2023q4#2023q4">2023年10月 秋季番</a></li>
                                        <li>
                        <a id="2023q3" href="addon.php?r=bangumi/table&bgm_id=2023q3#2023q3">2023年07月 夏季番
                        </a></li>
                                        <li>
                        <a id="2023q2" href="addon.php?r=bangumi/table&bgm_id=2023q2#2023q2">2023年04月 春季番
                        </a></li>
                                        <li>
                        <a id="2023q1" href="addon.php?r=bangumi/table&bgm_id=2023q1#2023q1">2023年01月
                        冬季番</a></li>
                                        <li>
                        <a id="2022q4" href="addon.php?r=bangumi/table&bgm_id=2022q4#2022q4">2022年10月 秋季番</a></li>
                                        <li>
                        <a id="2022q3" href="addon.php?r=bangumi/table&bgm_id=2022q3#2022q3">2022年07月 夏季番
                        </a></li>
                                        <li>
                        <a id="2022q2" href="addon.php?r=bangumi/table&bgm_id=2022q2#2022q2">2022年04月 春季番
                        </a></li>
                                        <li>
                        <a id="2022q1" href="addon.php?r=bangumi/table&bgm_id=2022q1#2022q1">2022年01月
                        冬季番</a></li>
                                        <li>
                        <a id="2021q4" href="addon.php?r=bangumi/table&bgm_id=2021q4#2021q4">2021年10月 秋季番</a></li>
                                        <li>
                        <a id="2021q3" href="addon.php?r=bangumi/table&bgm_id=2021q3#2021q3">2021年07月 夏季番
                        </a></li>
                                        <li>
                        <a id="2021q2" href="addon.php?r=bangumi/table&bgm_id=2021q2#2021q2">2021年04月 春季番
                        </a></li>
                                        <li>
                        <a id="2021q1" href="addon.php?r=bangumi/table&bgm_id=2021q1#2021q1">2021年01月
                        冬季番</a></li>
                                        <li>
                        <a id="2020q4" href="addon.php?r=bangumi/table&bgm_id=2020q4#2020q4">2020年10月 秋季番</a></li>
                                        <li>
                        <a id="2020q3" href="addon.php?r=bangumi/table&bgm_id=2020q3#2020q3">2020年07月 夏季番
                        </a></li>
                                        <li>
                        <a id="2020q2" href="addon.php?r=bangumi/table&bgm_id=2020q2#2020q2">2020年04月 春季番
                        </a></li>
                                        <li>
                        <a id="2020q1" href="addon.php?r=bangumi/table&bgm_id=2020q1#2020q1">2020年01月
                        冬季番</a></li>
                                        <li>
                        <a id="2019q4" href="addon.php?r=bangumi/table&bgm_id=2019q4#2019q4">2019年10月 秋季番</a></li>
                                        <li>
                        <a id="2019q3" href="addon.php?r=bangumi/table&bgm_id=2019q3#2019q3">2019年07月 夏季番
                        </a></li>
                                        <li>
                        <a id="2019q2" href="addon.php?r=bangumi/table&bgm_id=2019q2#2019q2">2019年04月 春季番
                        </a></li>
                                        <li>
                        <a id="2019q1" href="addon.php?r=bangumi/table&bgm_id=2019q1#2019q1">2019年01月
                        冬季番</a></li>
                                        <li>
                        <a id="2018q4" href="addon.php?r=bangumi/table&bgm_id=2018q4#2018q4">2018年10月 秋季番</a></li>
                                        <li>
                        <a id="2018q3" href="addon.php?r=bangumi/table&bgm_id=2018q3#2018q3">2018年07月 夏季番
                        </a></li>
                                        <li>
                        <a id="2018q2" href="addon.php?r=bangumi/table&bgm_id=2018q2#2018q2">2018年04月 春季番
                        </a></li>
                                        <li>
                        <a id="2018q1" href="addon.php?r=bangumi/table&bgm_id=2018q1#2018q1">2018年01月
                        冬季番</a></li>
                                        <li>
                        <a id="2017q4" href="addon.php?r=bangumi/table&bgm_id=2017q4#2017q4">2017年10月 秋季番</a></li>
                                        <li>
                        <a id="2017q3" href="addon.php?r=bangumi/table&bgm_id=2017q3#2017q3">2017年07月 夏季番
                        </a></li>
                                        <li>
                        <a id="2017q2" href="addon.php?r=bangumi/table&bgm_id=2017q2#2017q2">2017年04月 春季番
                        </a></li>
                                        <li>
                        <a id="2017q1" href="addon.php?r=bangumi/table&bgm_id=2017q1#2017q1">2017年01月
                        冬季番</a></li>
                                        <li>
                        <a id="2016q4" href="addon.php?r=bangumi/table&bgm_id=2016q4#2016q4">2016年10月 秋季番</a></li>
                                        <li>
                        <a id="2016q3" href="addon.php?r=bangumi/table&bgm_id=2016q3#2016q3">2016年07月 夏季番
                        </a></li>
                                        <li>
                        <a id="2016q2" href="addon.php?r=bangumi/table&bgm_id=2016q2#2016q2">2016年04月 春季番
                        </a></li>
                                        <li>
                        <a id="2016q1" href="addon.php?r=bangumi/table&bgm_id=2016q1#2016q1">2016年01月
                        冬季番</a></li>
                                        <li>
                        <a id="2015q4" href="addon.php?r=bangumi/table&bgm_id=2015q4#2015q4">2015年10月 秋季番</a></li>
                                        <li>
                        <a id="2015q3" href="addon.php?r=bangumi/table&bgm_id=2015q3#2015q3">2015年07月 夏季番
                        </a></li>
                                        <li>
                        <a id="2015q2" href="addon.php?r=bangumi/table&bgm_id=2015q2#2015q2">2015年04月 春季番
                        </a></li>
                                        <li>
                        <a id="2015q1" href="addon.php?r=bangumi/table&bgm_id=2015q1#2015q1">2015年01月
                        冬季番</a></li>
                                        <li>
                        <a id="2014q4" href="addon.php?r=bangumi/table&bgm_id=2014q4#2014q4">2014年10月 秋季番</a></li>
                                        <li>
                        <a id="2014q3" href="addon.php?r=bangumi/table&bgm_id=2014q3#2014q3">2014年07月 夏季番
                        </a></li>
                                        <li>
                        <a id="2014q2" href="addon.php?r=bangumi/table&bgm_id=2014q2#2014q2">2014年04月 春季番
                        </a></li>
                                        <li>
                        <a id="2014q1" href="addon.php?r=bangumi/table&bgm_id=2014q1#2014q1">2014年01月
                        冬季番</a></li>

                </ul>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
    (function ($) {
        $(document).ready(function () {
            var list_table = $('#bgm-nav').eq(0);
            $(window).scroll(function () {
                list_table.css('top', $(window).scrollTop());
            }).trigger('scroll');
        });
    })(jQuery);
</script>

</div>



<div class="footer">
    <div class="left" style="font-weight: bold;">
        <p>联系邮箱：<a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="7b10120808080e195514091c3b1c161a121755181416">[email&#160;protected]</a>（站务、合作）</p>
        <p>爱恋动漫 | BT发布页</p>
    </div>
    <div class="right">
        <p>

            <!--技术支持: <a href="http://www.miobt.com/addon.php?r=document/view&page=miobt-introduction" target="_blank">MioBT</a> |-->
            <!--技术支持: MioBT |-->
            技术支持: MioBT |
            <a href="javascript:void(0);" onclick="window.scroll(0,0);return false;">已到页末↑</a>
        </p>

                    <p>Copyright &copy;2024&nbsp;<span style="font-weight: bold;"><a href="https://kisssub.org/" target="_blank" class="copyright">KISSSUB.ORG</a></span>. All rights reserved.</p>


        <!-- Back to top start -->
        <script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script type="text/javascript">
            (function ($) {
                var max_width = 1420;
                var min_top = 300;
                var layer_hidden = true;
                var update_layer = function () {
                    if (($(window).width() >= max_width) && ($(window).scrollTop() > min_top)) {
//                        layer_hidden && $('#backTop').fadeIn(1000);
                        layer_hidden && $('#backTop').show();
                        layer_hidden = false;
                    }
                    else {
//                        layer_hidden || $('#backTop').fadeOut(1000);
                        layer_hidden || $('#backTop').hide();
                        layer_hidden = true;
                    }
                };

                $(window).resize(function () {
                    update_layer();
                });

                $(window).scroll(function () {
                    update_layer();
                });

                $(document).ready(function () {
                    update_layer();

                    $("#backTop").click(function () {
                        $("body,html").animate({scrollTop: 0}, 1000);
                        return false;
                    });
                });
            })(jQuery)
        </script>

        <style type="text/css">
            #backTop { opacity: 1;filter: alpha(opacity=100);position: fixed; _position:absolute; z-index:9999; bottom:0; right:0; display:none; height: 278px;width: 130px;background: url("images/back2top/back2top7.png") no-repeat; cursor:pointer}
            #backTop a { display:block; overflow:hidden}
            #backTop:hover {opacity: 1;filter: alpha(opacity=100)}
            #scrolltop {display:none!important}
        </style>
        <div id="backTop"><a href="javascript:;"></a></div>
        <!-- Back to top end -->
    </div>
</div>


</div>

<script type="text/javascript">
    (function ($) {
        $(".gg_canvas a[gg_url]").each(function () {
            $(this).attr({
                'target': '_blank',
                'rel': 'nofollow',
                'href': $(this).attr('gg_url')
            });
        });

        $(".gg_canvas-hidden").show();
    })(jQuery);
</script>

<script type="text/javascript">
    (function ($) {
        if (window.location.hash === '#disable_new_tab') {
            $.cookie('disable_new_tab', 1, {expires: 365, path: '/'});
        }

        $(document).ready(function () {
            if ($.cookie('disable_new_tab')) {
                $('a[target="_blank"]').removeAttr('target');
            }
        });
    })(jQuery);
</script>


<!-- stats --></body>
</html>
''';
}