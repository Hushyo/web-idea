<%--
  Created by IntelliJ IDEA.
  User: 13480
  Date: 2024/7/7
  Time: 22:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <c:url var="base" value="/"></c:url>
    <base href="">
    <meta charset="UTF-8">
    <title>就业指南</title>
    <style>
        *{
            padding: 0;
            margin:0;
            box-sizing: border-box;
            list-style: none;
            text-decoration: none;
        }
        body{
            background: #FFFFFF;
        }
        .container{
            display: flex;
            flex-wrap: wrap;
            flex-direction: column;
            width: 100%;
        }
        #main{
            background: linear-gradient(to top, rgb(219, 234, 254), rgb(147, 197, 253), rgb(59, 130, 246));
            margin:83px 0 0 0;
            display: flex;
            flex-wrap: nowrap;
            flex-direction: row;
            width:100%;
            min-width: 1440px;
            min-height: 90vh;
        }
        #main .aside-left,
        .aside-right {
            width:20%;
            flex-shrink: 0;
            background-color: #FFFFFF;
            content:"";
            z-index: -1;
        }
        #main #content{
            display: flex;
            width:60%;
            flex-shrink:0;
            flex-direction: column;
            gap:10px;
            align-items: center;
        }
        #article{
            width: 100%;
        }
        #article div{
            padding:10px;
            margin:10px 0;
            border-radius:5px;
        }
        #article p{
            text-indent: 2em;
            font-size:20px;
        }
        #main #content div.img img{
            width: 100%;
            height: 100%;
            object-fit: fill;
            border-radius: 10px;
            box-shadow: 2px 2px 5px grey;
        }
        ol li{
            margin:10px;
        }
    </style>
</head>
<body>
<div class="container">
    <!-- header -->
    <%@include file="../jsp/header.jsp"%>
    <div id="main">
        <div class="aside-left"></div>
        <div id="content">
            <div id="article">
                <c:if test="${id==1}">
                <div>
                    <h1>测试工程师</h1>
                    <p>测试工程师主要负责软件产品的测试工作，确保其功能、性能和安全性达到预期标准。在软件开发完成后，测试工程师需根据需求文档编写测试用例，对产品的性能和功能进行全面检查，确保没有BUG存在。此外，他们还需测试软件的稳定性、兼容性等。就业方向上，测试工程师可以选择在软件外包与服务企业、信息产品与服务企业等多个领域发展，担任程序员、软件测试员或项目经理等岗位。</p>
                </div>
                    <div>
                        <h1>软件开发工程师</h1>
                        <p>软件开发工程师是软件工程专业的核心就业方向。他们主要负责编码、测试等工作，确保软件的质量和功能。此外，软件开发工程师还可以进一步细分为前端开发、后端开发、移动端开发和游戏开发等不同领域。随着技术的进步，软件开发工程师在智能家居、物联网等领域有着广泛的应用前景，可以在各大IT企业和家电企业如华为、中兴、美的等找到合适的工作机会。</p>
                    </div>
                    <div>
                        <h1>算法工程师</h1>
                        <p>算法工程师是软件工程领域中的一个重要岗位，主要负责数据开发和数据挖掘算法。他们可以分为不同的子类，如图像算法工程师、通信算法工程师以及数据挖掘/机器学习的算法工程师。由于大数据市场的巨大需求，算法工程师的工作涉及到很多算法匹配的功能开发。</p>
                    </div>

                    <div>
                        <h1>软件架构师</h1>
                        <p>软件架构师是软件工程专业的核心就业方向之一。他们负责设计、规划和管理软件系统的整体结构，确保系统能够高效、稳定地运行。软件工程专业的学生在此方向上具有天然的优势，因为他们接受了系统的专业训练，掌握了相关的算法、设计模式和开发工具。这使得他们在成为软件架构师时，能够更快地适应和胜任复杂的工作任务。</p>
                    </div>

                    <div>
                        <h1>移动终端开发</h1>
                        <p>移动终端开发是近年来互联网发展的产物，主要涉及手机等移动设备上的应用软件和游戏开发。随着移动互联网的普及和5G网络的快速发展，移动终端开发行业的前景越来越广阔。毕业生们主要选择从事iOS和Android系统的软件开发。为了适应行业的变化，技术人员需要不断丰富自己的知识结构，例如与物联网的深度结合等新技术应用。</p>
                    </div>

                    <div>
                        <h1>Web开发</h1>
                        <p>Web开发是软件工程中的一个重要就业方向，主要分为前端开发和后端开发两大岗位。前端开发主要负责利用HTML、CSS和JavaScript等技术进行客户端产品的开发，完成浏览器端的功能和界面设计。而后端开发则使用Java、Python、PHP、C#等语言来实现系统功能、数据存取以及维护平台的稳定性和性能。近年来，随着技术的发展和市场需求的变化，选择前端开发作为主要方向的毕业生也逐渐增多。总体来说，Web开发在IT行业内拥有大量的就业岗位，且未来发展前景十分乐观。</p>
                    </div>
                </c:if>
                <c:if test="${id==2}">

                    <h1>软件工程是一个不断发展的领域，充满了各种机会!</h1>
                       <ol>
                           <li><h2>1.教育背景</h2>
                               <p>大多数软件工程师职位要求至少拥有计算机科学、软件工程或相关领域的学士学位。高级职位可能需要硕士或博士学位。</p>
                               <p>参加像Coursera、edX等平台上的在线课程可以提升你的技能并获得认证。</p>
                           </li>
                           <li>
                               <h2> 2. 技能发展</h2>
                               <p> 掌握至少一种编程语言，如Python、Java、C++、JavaScript等。根据你感兴趣的领域选择合适的语言。 </p>
                               <p> 数据结构与算法是编程面试中的常见考察内容，掌握它们可以提高你的解决问题的能力。</p>
                               <p>熟悉Git和GitHub，能够有效管理和协作代码。</p>
                               <p>了解常用的开发工具和环境，如IDE、调试工具、CI/CD工具等。</p>
                           </li>
                           <li>
                               <h2>3. 实践经验</h2>
                               <p>寻找软件工程相关的实习机会，获得实际工作经验。</p>
                               <p>创建并维护个人项目，展示你的技能和兴趣。</p>
                               <p>参与开源项目，通过贡献代码来提高自己的技术水平，同时扩展人脉。</p>
                           </li>
                           <li>
                               <h2>4. 找工作</h2>
                               <p>确保你的简历简洁明了，突出你的技能、教育背景和项目经验。</p>
                               <p>使用LinkedIn、Indeed、Glassdoor等求职网站寻找工作机会。</p>
                               <p>参加行业会议、研讨会和编程比赛，建立专业网络。</p>
                           </li>
                           <li>
                               <h2>5. 面试准备</h2>
                               <p>参加模拟面试，熟悉面试流程和常见问题。</p>
                               <p>准备好回答数据结构、算法、系统设计等方面的问题。</p>
                               <p>准备好讨论你的工作经验、团队合作和解决问题的能力。</p>
                           </li>
                           <li>
                               <h2>6. 继续学习</h2>
                               <p>保持对新兴技术的关注，如人工智能、区块链、云计算等。</p>
                               <p>考虑长期职业目标，是否需要获取更多认证、学习新技能或升职。</p>
                           </li>
                       </ol>

                    <h1>好好干，生活会越来越好的！</h1>
                </c:if>
            </div>
        </div>
        <div class="aside-right"></div>

    </div>
    <%@include file="../jsp/footer.jsp"%>



</div>
</body>
</html>
