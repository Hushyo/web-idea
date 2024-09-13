
<%@ page pageEncoding="UTF-8" language="java" %>
<jsp:useBean id="news" scope="request" type="java.util.List<com.entity.New>"/>
<c:url var="base" value="/"></c:url>
<base href="${base}">
<meta charset="UTF-8">
<title>test</title>

<style>
    #main{
        background: #e2e1e4;
        margin:20px 0 0 0;
        display: flex;
        flex-wrap: nowrap;
        flex-direction: row;
        width:100%;
        min-width: 1440px;
        min-height: 90vh;
        position: relative;

    }
    #main .aside-left,
    .aside-right {
        width:10%;
        flex-shrink: 0;
        content:"";
        z-index: -2;
    }
    #main #content{
        display: flex;
        flex-direction: row;
        width:80%;
        flex-shrink:0;
        flex-wrap: wrap;
        z-index: 1;
    }
    #article{
        background: #FFFFFF;
        margin:10px 0 0 0;
        padding:10px;
        width: 100%;
        border: 1px solid black;
        border-radius: 5px;
        z-index: 1;
    }
    #article p{
        text-indent: 2em;
        font-size:24px;
        font-family:"华文楷体";
    }
    h1{
        padding-left: 2px;
        color:#29b7cb;
    }
    #info{/*右侧新闻栏*/
        width: 100%;
        display: flex;
        flex-direction: row;
    }
    #info div.infoContainer{
        /*分为新闻和公告两个容器*/
        background:#ffffff;
        width: 50%;
        display: flex;
        flex-direction: column;
        height: 480px;
        border:1px solid gray;
        border-radius: 4px;
        margin:10px 10px;
        padding:5px;
        /*各占一半儿*/
    }
    #info div.infoContainer div.title{
        /*两个栏目的标题*/
        display: flex;
        align-items: end;
        font-size:2em;
        border-bottom: 1px solid #3f3f3f;
        padding:0 0 10px 10px;
        height: 20%;
    }
    #info div.infoContainer div.title img{
        vertical-align: bottom;
        height: 60%;
        width: auto;
        margin:0 20px 0 0;
    }
    #info div.infoContainer div.things{
        /*具体事项*/
        box-shadow: 1px 1px 1px lightslategrey;
        border-radius: 3px;
        margin: 3px 0;
        width:100%;
        flex-basis:160px;
        display: flex;
        flex-direction: row;
        overflow: hidden;
    }
    #info div.infoContainer div.things .card{
        /*时间卡片*/
        border-radius: 8px;
        background: #1491a8;
        width:100px;
        height:80%;
        margin:10px;
        text-align: center;
        color:white;
        flex-shrink: 0;
    }
    #info div.infoContainer div.things .card .d{
        /*日*/
        display: flex;
        align-items: center;
        justify-content: center;
        font-size:2em;
        width:100%;
        height: 60%;
    }
    #info div.infoContainer div.things .card .ym{
        /*年月*/
        display: flex;
        align-items: center;
        justify-content: center;
        background: #e8b49a;
        width:100%;
        height: 40%;
    }
    #info div.infoContainer div.things .press{
        word-wrap: break-word;
        background: #93b5cf;
        border-radius: 5px;
        flex-grow: 1;
        height: 80%;
        margin:10px;
        overflow: hidden;
        text-decoration: none;
        text-overflow: ellipsis;
    }
    #info div.infoContainer div.things div.press p.theme{
        /*标题*/
        white-space: nowrap;
        font-size:1.5em;
        margin:10px;
        height: 40%;
        border-bottom:1px solid grey;

    }
    #info div.infoContainer div.things div.press p.content{
        /*内容*/
        text-overflow: ellipsis;
        white-space: nowrap;
        margin:10px;
        height: 60%;
    }
    #info div.infoContainer div.things div.press p.theme a{
        color:black;
    }
</style>
<div id="main">
    <div class="aside-left"></div>
    <div id="content">
        <div id="info">
            <div class="infoContainer">
                <div class="title"><img src="resource/img/iconnews.png">新闻</div>
                <c:forEach items="${news}" var="n">
                <div class="things">

                    <div class="card">
                        <!-- 时间卡 -->
                        <div class="d">${n.day}</div>
                        <div class="ym">${n.year}-${n.month}</div>
                    </div>

                    <div class="press">
                        <!-- 新闻 -->
                        <p class="theme"><a href="announciation?type=news&nid=${n.id}">${n.title}</a></p>
                        <p class="content">${n.content}</p>
                    </div>

                </div>
                </c:forEach>
            </div>
            <div class="infoContainer">
                <div class="title"> <img src="resource/img/iconnews.png">公告</div>
                <c:forEach items="${notices}" var="n">
                    <div class="things">
                        <div class="card">
                            <!-- 时间卡 -->
                            <div class="d">${n.day}</div>
                            <div class="ym">${n.year}-${n.month}</div>
                        </div>
                        <div class="press">
                            <!-- 新闻 -->
                            <p class="theme"><a href="announciation?type=notices&nid=${n.id}">${n.title}</a></p>
                            <p class="content">${n.content}</p>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>

        <div id="article">
            <p>东北林业大学是一所以林科为优势、林业工程为特色的多学科协调发展的高等学校，地处我国最大国有林区的中心——哈尔滨市，校园占地136公顷，并拥有帽儿山实验林场（帽儿山森林公园）和凉水实验林场（凉水国家级自然保护区）等教学、科研、实习基地，总面积达3.3万公顷。</p>
            <p>学校创建于1952年7月，原名东北林学院，是在浙江大学农学院森林系和东北农学院森林系基础上建立的，由原国家林业部直属管理。1985年8月更名为东北林业大学。2000年2月，由原国家林业局划归教育部直属管理。2005年10月，经国家发改委、财政部和教育部批准，成为国家“211工程”重点建设高校。2010年11月，教育部和原国家林业局签署合作共建协议。2011年6月，成为国家“优势学科创新平台”项目重点建设高校。2012年3月，教育部与黑龙江省人民政府签署合作共建协议。2017年9月，经国务院批准列为“双一流”建设高校。2022年2月，入选国家第二轮“双一流”建设高校。</p>
            <p>学校现设有研究生院、19个学院和1个教学部，有68个本科专业、26个国家级一流本科专业建设点，9个一级学科博士点、1个专业学位博士点，17个一级学科硕士点，19个类别的专业学位硕士点，10个博士后科研流动站，1个博士后科研工作站。拥有林业工程、林学2个世界一流建设学科，生物学、生态学、风景园林学、农林经济管理4个国内一流建设学科，3个一级学科国家重点学科、11个二级学科国家重点学科、8个国家林草局重点学科、2个国家林草局重点（培育）学科、1个黑龙江省重点学科群、7个黑龙江省重点一级学科。有国家发改委和教育部联合批准的国家生命科学与技术人才培养基地、教育部批准的国家理科基础科学研究和教学人才培养基地（生物学），是国家教育体制改革试点学校，国家级卓越工程师和卓越农林人才教育培养计划项目试点学校，教育部深化创新创业教育示范高校，全国高校实践育人创新创业基地。</p>
        </div>
    </div>
    <div class="aside-right"></div>
</div>