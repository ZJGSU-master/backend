<%--
  Created by IntelliJ IDEA.
  User: chenh
  Date: 2020/6/13
  Time: 16:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>echarts测试</title>
    <!-- 1.引入 echarts.js -->
    <script type="text/javascript" src="static/js/echarts.js"></script>
    <!-- 引入jquery.js -->
    <script type="text/javascript" src="static/js/jquery.js"></script>
</head>
<body style="margin: 5% 26% 0% 29%;">
<div style="text-align: center;">
    <h2>欢迎访问火灾预警系统</h2>
</div>
<!-- 2.为ECharts准备一个具备大小（宽高）的Dom -->
<div id="main" style="width: 600px; height: 400px;"></div>


<script type="text/javascript">
    var myChart = echarts.init(document.getElementById("main"));

    function drawLine(xData, seriesName, seriesData) {
        //  xData
        //指定图表的配置项和数据
        var option = {
            //标题
            title: {
                text: 'MQ4检测值',
                textStyle: {
                    color: 'white',
                },
                left: 'center'
            },
            //工具箱
            //保存图片
            toolbox: {
                show: true,
                feature: {
                    saveAsImage: {
                        show: true
                    }
                }
            },
            tooltip: {
                trigger: 'axis',
                position: 'top',
                axisPointer: {
                    type: 'cross',
                    label: {
                        backgroundColor: '#6a7985'
                    }
                }
            },
            //图例-每一条数据的名字叫销量
            legend: {
                data: ['mq4值']
            },
            //x轴
            xAxis: {
                data: xData
            },
            //y轴没有显式设置，根据值自动生成y轴
            yAxis: {},
            //数据-data是最终要显示的数据
            series: [{
                name: seriesName,
                type: 'line',
                data: seriesData,
                smooth: true,
                symbol: 'circle',
                symbolSize: 6,
                //线条样式
                lineStyle: {
                    color: {
                        type: 'linear',
                        x: 0,
                        y: 0,
                        x2: 0,
                        y2: 1,
                        colorStops: [{
                            offset: 0,
                            // 0% 处的颜色
                            color: '#6ae6dd'
                        }, {
                            offset: 1,
                            // 100% 处的颜色
                            color: 'red'
                        }],
                        globalCoord: false
                    },
                    width: 2,
                    type: 'solid',
                },
                //折线连接点样式
                itemStyle: {
                    color: '#00E5DE'
                },
                // //折线堆积区域样式
                // areaStyle: {
                //     color: '#004c5E'
                // },
            }]
        };
        //使用刚刚指定的配置项和数据项显示图表
        myChart.setOption(option);
    }

    function timestampToTime(timestamp) {
        var date = new Date(timestamp);//时间戳为10位需*1000，时间戳为13位的话不需乘1000
        // var Y = date.getFullYear() + '-';
        // var M = (date.getMonth() + 1 < 10 ? '0' + (date.getMonth() + 1) : date.getMonth() + 1) + '-';
        var D = date.getDate() + '日';
        var h = date.getHours() + ':';
        var m = date.getMinutes() + ':';
        var s = date.getSeconds();
        return D + h + m + s;
    }

    function getData() {
        $.ajax({
            type: "get",
            async: true, //异步请求（同步请求将会锁住浏览器，其他操作须等请求完成才可执行）
            // url: "http://localhost:8080/Embedded_background_war_exploded/show_data", //请求发送到TestServlet
            url: "http://localhost:9999/Embedded_background/show_data", //请求发送到TestServlet
            data: {},
            dataType: "json", //返回数据形式为json

            //7.请求成功后接收数据name+num两组数据
            success: function (result) {
                //result为服务器返回的json对象
                console.log(result)
                if (result) {
                    //8.取出数据存入数组
                    names = []
                    nums = []
                    for (var i = 0; i < result.length; i++) {
                        names.push(timestampToTime(result[i].recordTime)); //迭代取出类别数据并填入类别数组
                    }
                    for (var i = 0; i < result.length; i++) {
                        nums.push(result[i].mq4A); //迭代取出销量并填入销量数组
                    }

                    drawLine(names, 'mq4值', nums)
                }

            },
            error: function (errorMsg) {
                //请求失败时执行该函数
                alert("图表请求数据失败!");
                myChart.hideLoading();
            }
        })
    }

    var int = self.setInterval("getData()", 1000);

    //6.ajax发起数据请求


</script>
</body>
</html>
