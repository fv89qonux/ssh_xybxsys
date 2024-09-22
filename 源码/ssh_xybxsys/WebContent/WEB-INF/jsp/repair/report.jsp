<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title></title>  
    <link rel="stylesheet" href="${ctx}/resource/css/pintuer.css">
    <link rel="stylesheet" href="${ctx}/resource/css/admin.css">
    <script src="${ctx}/resource/js/jquery.js"></script>
    <script src="${ctx}/resource/js/pintuer.js"></script>  
    <script src="http://d3js.org/d3.v3.min.js" charset="utf-8"></script>
<style>
   .container {
    margin: 30px 0x;
    width: 600px;
    height: 300px;
    border: 1px solid #000;
   }
    .axis path,
            .axis line {
                stroke: #000;
                fill: none;
            }
  </style>
<title>个人信息</title>
</head>
<body>
<form method="post" action="${ctx}/repair_repair.do" id="listform">
  <div class="panel admin-panel">
    <div class="panel-head"><strong class="icon-reorder">统计</strong></div>
    <div class="padding border-bottom">
      <ul class="search">
      </ul>
    </div>
    	<!-- Map<String,Object> alias1 = new HashMap<String,Object>();
		String hql1="from Repair where 1=1 and status =2 and bm = :bm1";
		alias1.put("bm1", "后勤部");
		List<Worker> listByAlias1 = workerService.listByAlias(hql1, alias1);
		
		Map<String,Object> alias2 = new HashMap<String,Object>();
		String hql2="from Repair where 1=1 and status =2 and bm = :bm2";
		alias2.put("bm2", "教务处");
		List<Worker> listByAlias2 = workerService.listByAlias(hql2, alias2);
		
		Map<String,Object> alias3 = new HashMap<String,Object>();
		String hql3="from Repair where 1=1 and status =2 and bm = :bm3";
		alias3.put("bm3", "校长办公室");
		List<Worker> listByAlias3 = workerService.listByAlias(hql3, alias3);
		
		Map<String,Object> alias4 = new HashMap<String,Object>();
		String hql4="from Repair where 1=1 and status =2 and bm = :bm4";
		alias4.put("bm4", "宿管部"); -->
    <table class="table table-hover text-center">
      <tr>
        <th width="">后勤部</th>
        <th>教务处</th>
        <th>校长办公室</th>
        <th>宿管部</th>
      </tr>
        <tr>
           <td>${a1}</td>
          <td>${a2}</td>
           <td>${a3}</td>
            <td>${a4}</td>
        </tr>
    </table>
  </div>
</form>
       <div class="container">
            <svg width="100%" height="100%"></svg>
        </div>
        
        <div id="heatmap" style="width:600px; height:400px;border: 1px solid;border-color: grey;margin:  30px auto;"></div>  
        <script src="${ctx}/resource/js/heatmap.min.js"></script>
<!-- <script type="text/javascript"> 
$(function(){
	//确定画布的大小
	var width = 400;
	var height = 400;
	//在 body 里添加一个 SVG 画布	
	var svg = d3.select("body")
	        .append("svg")
	        .attr("width", width)
	        .attr("height", height);
	//定义画布周围空白的地方
	var padding = {left: 30, right: 30, top: 20, bottom: 20};
	//定义一个数组
	 var dataset = [${a1}, ${a2}, ${a3}, ${a4}];
	 /* var dataset = {
			 x: ["后勤部","教务处","校长办公室","宿管部"],
			 y: [${a1}, ${a2}, ${a3}, ${a4}]
			}; */
	//x轴的比例尺
	var xScale = d3.scale.ordinal()
	        .domain(d3.range(dataset.length))
	        .rangeRoundBands([0, width - padding.left - padding.right]);
	//y轴的比例尺
	var yScale = d3.scale.linear()
	        .domain([0, d3.max(dataset)])
	        .range([height - padding.top - padding.bottom, 0]);
	//定义x轴
	var xAxis = d3.svg.axis()
	        .scale(xScale)
	        .orient("bottom");
	//定义y轴
	var yAxis = d3.svg.axis()
	        .scale(yScale)
	        .orient("left");
	//矩形之间的空白
	var rectPadding = 4;
	//添加矩形元素
	var rects = svg.selectAll(".MyRect")
	        .data(dataset)
	        .enter()
	        .append("rect")
	        .attr("class", "MyRect")
	        .attr("fill", "#ea394c")
	        .attr("transform", "translate(" + padding.left + "," + padding.top + ")")
	        .attr("x", function (d, i) {
	            return xScale(i) + rectPadding / 2;
	        })
	        .attr("y", function (d) {
	            return yScale(d);
	        })
	        .attr("width", xScale.rangeBand() - rectPadding)
	        .attr("height", function (d) {
	            return height - padding.top - padding.bottom - yScale(d);
	        });
	//添加文字元素
	var texts = svg.selectAll(".MyText")
	        .data(dataset)
	        .enter()
	        .append("text")
	        .attr("class", "MyText")
	        .attr("fill", "white")
	        .attr("text-anchor", "middle")
	        .attr("transform", "translate(" + padding.left + "," + padding.top + ")")
	        .attr("x", function (d, i) {
	            return xScale(i) + rectPadding / 2;
	        })
	        .attr("y", function (d) {
	            return yScale(d);
	        })
	        .attr("dx", function () {
	            return (xScale.rangeBand() - rectPadding) / 2;
	        })
	        .attr("dy", function (d) {
	            return 20;
	        })
	        .text(function (d) {
	            return d;
	        });
	//添加x轴
	svg.append("g")
	        .attr("class", "axis")
	        .attr("transform", "translate(" + padding.left + "," + (height - padding.bottom) + ")")
	        .call(xAxis);
	//添加y轴
	svg.append("g")
	        .attr("class", "axis")
	        .attr("transform", "translate(" + padding.left + "," + padding.top + ")")
	        .call(yAxis);

});

</script>
-->
<script>
<script src="http://d3js.org/d3.v3.min.js" charset="utf-8"></script>
<script>
window.onload = function() {
    var width = 600, height = 300;
    // SVG画布边缘与图表内容的距离
    var padding = { top: 50, right: 50, bottom: 50, left: 50 };
    // 创建一个分组用来组合要画的图表元素
    var main = d3.select('.container svg').append('g')
            .classed('main', true)
            .attr('transform', "translate(" + padding.top + ',' + padding.left + ')');
    // 模拟数据
   /*  var dataset = {
        x: ["赵","钱","孙","李","周","吴","郑","王"],
        y: [40, 30, 50, 70, 90, 20, 10, 40]
    }; */
    var dataset = {
	 x: ["后勤部","教务处","校长办公室","宿管部"],
	 y: [${a1}, ${a2}, ${a3}, ${a4}]
	}; 
    // 定义x轴的比例尺(序数比例尺)
    var xScale = d3.scale.ordinal()
            .domain(dataset.x)
            .rangeRoundBands([0, width - padding.left - padding.right],0,0);
    // 定义y轴的比例尺(线性比例尺)
    var yScale = d3.scale.linear()
            .domain([0, d3.max(dataset.y)])
            .range([height - padding.top - padding.bottom, 0]);
    // 定义x轴和y轴
    var xAxis = d3.svg.axis()
            .scale(xScale)
            .orient('bottom');
    var yAxis = d3.svg.axis()
            .scale(yScale)
            .orient('left');
    // 添加坐标轴元素
    main.append('g')
            .attr('class', 'axis')
            .attr('transform', 'translate(0,' + (height - padding.bottom - padding.top) + ')')
            .call(xAxis)
            .append("text")
            .text("部门")
           // .attr("transform","rotate(-90)")//text旋转-90°
			//.attr("text-anchor","end")//字体尾部对齐
			.attr("dy","1em");//沿y轴平移一个字体的大小
			
			
			
    main.append('g')
            .attr('class', 'axis')
            .call(yAxis)
    .append("text")
    .text("数量")
   // .attr("transform","rotate(-90)")//text旋转-90°
	//.attr("text-anchor","end")//字体尾部对齐
	.attr("dy","1em");//沿y轴平移一个字体的大小

    // 矩形之间的间距
    var rectMargin = 10;
    // 添加矩形
    main.selectAll('.bar')
            .data(dataset.y)
            .enter()
            .append('rect')
            .attr('class', 'bar')
            .attr('x', function(d, i) {
                return xScale(dataset.x[i]) + rectMargin;
            })
            .attr('y', function(d, i) {
                return yScale(d);
            })
            .attr('width', xScale.rangeBand() - 2*rectMargin)
            .attr('height', function(d, i) {
                return height - padding.top - padding.bottom - yScale(d);
            })
            .attr('fill', function(d, i) {
                return getColor(i);
            });
    // 添加文字标签
    main.selectAll('.text')
            .data(dataset.y)
            .enter()
            .append('text')
            
            .attr('class', 'text')
            .attr('x', function(d, i) {
                return xScale(dataset.x[i]);
            })
            .attr('y', function(d, i) {
                return yScale(d);
            })
            .attr('dx', (xScale.rangeBand() - 14)/2)
            .attr('dy', '20')
            .text(function(d) {
                return d;
            });
};
function getColor(idx) {
    var palette = [
        '#2ec7c9', '#b6a2de', '#5ab1ef', '#ffb980', '#d87a80',
        '#8d98b3', '#e5cf0d', '#97b552', '#95706d', '#dc69aa',
        '#07a2a4', '#9a7fd1', '#588dd5', '#f5994e', '#c05050',
        '#59678c', '#c9ab00', '#7eb00a', '#6f5553', '#c14089'
    ]
    return palette[idx % palette.length];
}
</script>



<script type="text/javascript">  
// 创建一个heatmap实例对象  
// “h337” 是heatmap.js全局对象的名称。可以使用它来创建热点图实例  
var heatmapInstance = h337.create({  
  //这里直接指定热点图渲染的div了。  
  //heatmap支持自定义的样式方案，具体可看官网api  
  container: document.querySelector('#heatmap')  
});  
   
//构建一些随机数据点，这里替换成你的业务数据  
var points = [];  
var max = 0;  
var width = 600;  
var height = 400;  
var len = 5;  
   
<c:forEach items="${list}" var="data" varStatus="l">
var val = 1;
max = 10;
var point = {  
	    x: ${data.id*5},  
	    y: ${data.worker.id*10},  
	    value: 20  
	  };  
     points.push(point);  
</c:forEach>   
 
var data = {  
  max: max,  
  data: points  
};  
  
//因为data是一组数据，所以直接setData  
heatmapInstance.setData(data);  
  
//数据绑定还可以使用 addData(object|array) 方法  
/**  
//单个数据点的添加方式   
var dataPoint = {   
  x: 5,  
  y: 15,  
  value: 100  
};  
heatmapInstance.addData(dataPoint);  
  
//多个数据点的添加方式  
var dataPoints = [dataPoint1, dataPoint2, dataPoint3, dataPoint4];  
heatmapInstance.addData(dataPoints);  
**/  
  
</script>          
        
        
</body>
</html>