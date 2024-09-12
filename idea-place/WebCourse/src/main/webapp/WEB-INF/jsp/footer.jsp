<%@ page pageEncoding="UTF-8" language="java" %>
<c:url var="base" value="/" />
<base href="${base}">
<style>
    footer{
        flex-shrink: 0;
        display: flex;
        flex-direction: row;
        flex-wrap: wrap;
        height:250px;
        min-width: 100%;
    }
    footer div.school{
        flex-shrink: 0;
        width: 100%;
        display: flex;
        justify-content: space-around;
        align-items: center;
        height: 82%;
        position: relative;
    }
    img{
        width: 100%;
        height: 100%;
        object-fit: contain;
    }
    footer div.school::after{
        content: '';
        position: absolute; /* 绝对定位 */
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-image: url("resource/img/foot.jpg"); /* 背景图片路径 */
        background-repeat: no-repeat;
        background-size: cover; /* 背景图片铺满整个容器 */
        z-index: -1; /* 将背景图层置于内容下面 */
        opacity: 0.5; /* 背景图片透明度 */
        background-position: 0 -320px;
    }

    footer div.school div{
        flex-shrink: 0;
        height: 60%;
        width:20%;
        display: flex;
        align-items: center;
        line-height: 25px;
    }
    footer div.school div.message{
        border:none;
    }
    footer div.foot{
        flex-shrink: 0;
        height: 18%;
        width: 100%;
        background-color: #333;
        text-align: center;
        font-size: 12px;
        color: white;
        display: flex;
        align-items: center;
        justify-content: center;
    }
</style>
<footer>
    <div class="school">
        <div>
            <img src="resource/img/logo.png">
        </div>
        <div class="message">
            <p>地址： 中国 黑龙江 哈尔滨 香坊区和兴路26号 <br>
            邮编： 150040 <br>
            </p>
        </div>
    </div>
    <div class="foot">
    <p>庞宇豪 <br>
    东北林业大学<br> 软件工程专业 2024&copy;
    </p>
    </div>
</footer>
<script>
</script>