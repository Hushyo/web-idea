<%@ page pageEncoding="UTF-8" language="java" %>
<style>
    *{
        margin: 0;
        padding: 0;
        list-style: none;
    }
    .lunbo{
        display: flex;
        width:100%;
        min-width: 1440px;
        height: 80vh;
    }
    .content{
        flex-shrink: 0;
        width: 100%;
        height: 100%;
        position: relative;
        overflow: hidden;
    }
    #item{
        width: 100%;
        height: 100%;
    }
    li.item{
        width:100%;
        height: auto;
    }
    .item{
        /* <!--全部图片都设置透明 -->*/
        position: absolute;
        opacity: 0;
        transition: all 1s;
    }
    .item.active{
        opacity:1;
    }

    img{
        width: 100%;
        height: 100%;
        object-fit: contain;
    }
    #circle{
        height: 20px;
        display: flex;
        position: absolute;
        bottom:4px;
        left: 50%;
        transform: translateX(-50%);
    }
    .circle{
        width: 30px;
        height: 5px;
        border: 1px solid white;
        background: rgba(0,0,0,0.4);
        cursor: pointer;
        margin :3px;
    }
    .white{
        background-color: #FFFFFF;
    }
</style>
<div class="lunbo">
    <div class="content">
        <ul id="item">
            <li class="item">
                <a href="#"><img src="https://ik.imagekit.io/hushimg/school/foot.jpg?updatedAt=1719918669748" alt="楼"></a>
            </li>
            <li class="item">
                <a href="#"><img src="https://ik.imagekit.io/hushimg/school/stone.jpg?updatedAt=1719918597314" alt="石头"></a>
            </li>
            <li class="item">
                <a href="#"><img src="https://ik.imagekit.io/hushimg/school/hat.jpg?updatedAt=1719918531732" alt="帽儿山"></a>
            </li>
            <li class="item">
                <a href="#"><img src="https://ik.imagekit.io/hushimg/school/garden2.jpg?updatedAt=1719918420042" alt="知园"></a>
            </li>
            <li class="item">
                <a href="#"><img src="https://ik.imagekit.io/hushimg/school/playground.jpg?updatedAt=1719918891232" alt="校友广场"></a>
            </li>
        </ul>
        <button id="btn-right" hidden></button>
        <button id="btn-left" hidden></button>
        <ul id="circle">
            <li class="circle"></li>
            <li class="circle"></li>
            <li class="circle"></li>
            <li class="circle"></li>
            <li class="circle"></li>
        </ul>
    </div>
</div>

<script>
    window.onload=function(){
        var items=document.getElementsByClassName("item");
        var circles=document.getElementsByClassName("circle");
        var content=document.querySelector('.content');
        var leftBtn=document.getElementById("btn-left");
        var rightBtn=document.getElementById("btn-right");
        var index=0;
        var timer=null;
        //清除class
        var clearclass=function(){
            for(let i=0;i<items.length;i++){
                items[i].className="item";
                circles[i].className="circle";
                circles[i].setAttribute("num",i);
            }
        }
        /*只显示一个class*/
        function move(){
            clearclass();
            items[index].className="item active";
            circles[index].className="circle white";
        }
        rightBtn.onclick = function () {
            index = (index + 1) % items.length;
            move();
        };
        //点击左边按钮切换上一张图片
        leftBtn.onclick = function () {
            index = (index - 1 + items.length) % items.length;
            move();
        };
//开始定时器，点击右边按钮，实现轮播
        timer=setInterval(function(){
            rightBtn.onclick();
        },1500)
//点击圆点时，跳转到对应图片
        for(var i=0;i<circles.length;i++){
            circles[i].addEventListener("click",function(){
                var point_index=this.getAttribute("num");
                index=point_index;
                move();
            })
        }
//鼠标移入清除定时器，并开启一个三秒的定时器，使慢慢转动
        content.onmouseover=function(){
            clearInterval(timer);
            timer=setInterval(function(){
                rightBtn.onclick();
            },3000)
        }
//鼠标移出又开启定时器
        content.onmouseleave=function(){
            clearInterval(timer);
            timer=setInterval(function(){
                rightBtn.onclick();
            },1500)
        }
//初始化轮播图，使页面加载完成后立即显示第一张图片和对应的圆点状态
        move()
    }
</script>
