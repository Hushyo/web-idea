<%--
  Created by IntelliJ IDEA.
  User: 13480
  Date: 2024/7/10
  Time: 12:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <c:url var="base" value="/"></c:url>
    <base href="${base}">
    <meta charset="UTF-8">
    <title>专业介绍</title>
    <style>
         *{
             padding: 0;
             margin:0;
             box-sizing: border-box;
             list-style: none;
             text-decoration: none;
         }
        .container{
            display: flex;
            flex-wrap: wrap;
            flex-direction: column;
            width: 100%;
        }
        #main{
            background: #FFFFFF;
            margin:83px 0 0 0;
            display: flex;
            flex-wrap: nowrap;
            flex-direction: row;
            width:100%;
            min-width: 1440px;
            min-height: 90vh;
            position: relative;
        }
         #main::after{
             position: absolute;
             content:"";
             z-index:0;
             background-image: url("resource/img/software.jpg");
             width: 100%;
             height: 100%;
         }
        #main .aside-left,
        .aside-right {
            width:20%;
            flex-shrink: 0;
            content:"";
        }
        #main #content{
            box-shadow: 1px 0px 5px lightslategrey;
            z-index: 1;
            display: flex;
            width:60%;
            flex-shrink:0;
            flex-direction: column;
            align-items: center;
            background:linear-gradient(to top, rgb(219, 234, 254), rgb(147, 197, 253), rgb(59, 130, 246));
            z-index: 1;
        }
         #article{
             padding:10px;
             width: 100%;
             border: 1px solid black;
             border-radius: 5px;
             display: flex;
             flex-direction: column;
         }
         #article p{
             border-radius: 5px;
             font-size:18px;
             padding:10px;
             text-indent: 2em;
         }
         #article div{
             display: flex;
             align-items: center;
             flex-direction: row;
             width: 100%;
             overflow: hidden;
         }
         #article img{
             box-shadow: 1px 1px 1px gray;
             border-radius: 10px;
             width:auto;
             max-width: 200px;
             height:200px;
             margin:10px;
             flex-shrink: 0;
             background: #FFFFFF;
         }
    </style>
</head>
<body>

<div class="container">
    <!-- header -->
    <%@include file="../jsp/header.jsp"%>
    <!-- main -->
    <dic id="main">
        <div class="aside-left"></div>
        <div id="content">
            <div id="article">
                <c:if test="${id==1}">
            <h1>软件工程</h1><br>
                    <div>
                        <img src="resource/img/Varolant.jpg" alt="">
                        <p>软件工程专业以IT业需求为导向，培养具有良好综合素质和职业道德，掌握扎实的基础理论和专业知识，具有软件分析、设计、开发、测试与管理能力，
                            具备较强工程实践能力、技术创新能力和团队精神，能快速适应软件工程新技术发展并具有国际视野和国际竞争力的高级软件工程师。专业实施灵活的“211”人才培养模式（其中,2年基础教育,1年面向企业的专业教育,1年企业顶岗实习），在教学上着力推动基于问题、基于项目和基于案例的学习，对于实践性强的课程，采取校企联合“双师制”培养，同时以大学生创新实践活动、科技大赛为补充，突出工程化培养。
                        </p>
                    </div>
                    <div>
                        <p>教师队伍采用专兼结合的用人机制，现有专职教师12人，其中高级职称7人，讲师5人，博士8人，硕士4人，其中6人具有国外留学或访学经历，
                            此外,专业还从国内外知名软件企业、高校聘请兼职教师承担部分教学工作作为补充。专业教师主持或参加了多项国家、省、部、市及学校的纵向、横向科研和教研项目。获得省优秀教育科研成果奖一等奖、省优秀高等教育科学研究成果二等奖、省科技进步二等奖、三等奖、省高等学校优秀多媒体教学软件三等奖、市科技进步一等奖、省高等教育学会十一五规划课题三等奖等奖项。取得发明专利和实用新型专利10余项，软件著作权10余项。
                            专业教师累计主编和参编出版教材13部，发表论文70余篇，其中EI及ISTP检索论文40余篇。</p>
                        <img src="resource/img/Varolant.jpg" alt="">
                    </div>
                    <div>
                        <img src="resource/img/Varolant.jpg" alt="">
                        <p>软件工程专业综合实验室，服务于专业的课程实验和创新创业项目，培养学生获得软件项目管理和开发经验，完成系统开发的实习、实训。
                            软件工程专业综合实验室下设软件工程实验室（系统开发实训基地）、嵌入式技术实验室、移动开发实验室和IOS开发实验室。主要完成基于行业标准和技术的Rational统一过程和测试、软件体系结构、面向对象技术与UML、软件需求与分析、软件测试和质量保证、移动开发和IOS开发等课程的实验。同时，依托国家级大型软件企业，建立了校企合作的实习、实训基地。结合企业项目、师资、环境等对学生进行有针对性的工程能力训练，使学生具备综合运用所学知识解决复杂工程问题的能力。</p>
                    </div>
                    <p>专业目前已经建立了华为、亿阳安全、东软、华信、北京思特奇、博彦集智、江苏乐建、华宇（大连）、青软、微洋科技等实习基地。</p>
                    <div>
                        <img src="resource/img/hw.png" alt="">
                        <img src="resource/img/dr.png" alt="">
                        <img src="resource/img/stq.png" alt="">
                        <img src="resource/img/xhx.png" alt="">
                        <img src="resource/img/jgsk.png" alt="">
                    </div>
                </c:if>
                <c:if test="${id==2}">
            <h1>方向简介</h1>
                    <div>
                        <img src="resource/img/Varolant.jpg" alt="">
                        <p>软件工程专业是一个以信息技术（IT）行业需求为引领的现代化学科，它致力于培养具备全面发展的素质和职业道德的毕业生。这些毕业生不仅需要拥有坚实的计算机科学基础理论和专业知识，还必须掌握软件工程的核心技能，包括软件需求分析、系统设计、编码实现、测试验证以及项目管理的全过程。</p>
                    </div>
                    <div>
                        <p>在软件分析方面，学生将学习如何理解用户需求，如何将需求转化为具体的软件规格说明，以及如何选择合适的技术和工具来实现这些需求。在设计阶段，学生将掌握如何构建可扩展、可维护的软件架构，如何设计用户友好的界面，以及如何确保软件的安全性和可靠性。 在软件的开发和测试环节，学生将熟悉各种编程语言和开发环境，掌握高效的编码技巧和良好的编程习惯。同时，他们还将学习如何编写和执行测试用例，如何使用自动化测试工具来确保软件的质量，以及如何修复软件中出现的缺陷和问题。</p>
                        <img src="resource/img/Varolant.jpg" alt="">
                    </div>
                    <div>
                        <img src="resource/img/Varolant.jpg" alt="">
                        <p>除了技术技能，软件工程专业的学生还将培养工程实践能力，这意味着他们能够将理论知识应用于实际的软件开发项目中，能够面对复杂的问题提出创新的解决方案，并在团队环境中有效地沟通和协作。学生还将通过参与团队项目和模拟企业环境的实践活动来培养团队精神，学习如何在多学科团队中发挥自己的作用，共同推动项目的成功实施。</p>
                    </div>
                    <div>
                        <p>随着软件技术的迅速发展，软件工程专业的学生还将培养快速适应新技术的能力，他们将通过学习最新的软件工程方法和工具来保持自己的竞争力。此外，为了适应全球化的趋势，学生还将被鼓励拓宽国际视野，通过国际交流项目、外语能力提升等方式，为将来在国际舞台上工作做好准备。 综上所述，软件工程专业不仅提供给学生深厚的专业知识，还注重培养他们的工程实践能力、技术创新能力、团队协作能力和国际竞争力，旨在为IT行业培养出既懂技术又具备软技能的高级软件工程师，以满足社会对高质量软件人才的需求。</p>
                        <img src="resource/img/Varolant.jpg" alt="">
                    </div>

                </c:if>
            </div>
        </div>
        <div class="aside-right"></div>
    </dic>
    <!-- footer -->
    <%@include file="../jsp/footer.jsp"%>
</div>
</body>
</html>
