<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
    	#content_wrap {
    		margin-top: 100px;
    	}
    	#sub_area	{
			float: left;
			width: 160px;
			margin-right: 40px;
			
    	}
    	
    	#sub_area h2	{
    		font-weight: bold;
    		padding-bottom: 25px;
    		font-size: 32px;
    		letter-spacing: -.48px;
    		color: #000;
    		text-transform: uppercase;
    	}
    	
    	#content_area	{
    		float: left;
		
    	}
    	#content_area:after {
    		clear: both;
    		display: block;
    		content: '';
    	}
    	
        #currentPaging   {
            color: red;
            text-decoration: underline;
            
        }
        #paging   {
            color:black;
            text-decoration: none;
            cursor:pointer;
        }
        
        td   {
            background: #FFFFFF;
            padding: 20px;
            width: 300px;
        }
        
        #round1   { 
            border-radius: 30px; border: 1px solid #d3d3d3;
        }    /* 둥근모서리 태그 */
        #round2   { 
            border-radius: 30px; border: 1px solid #d3d3d3;
        }
        #round3   { 
            border-radius: 30px;border: 1px solid #d3d3d3;
        } 
        #round4   { 
            border-radius: 30px;border: 1px solid #d3d3d3;
        } 
        #round5   { 
            border-radius: 30px;border: 1px solid #d3d3d3;
        } 
        .round {
            float: left;
            width: 72px;
            height: 40px;
            font-size: 13px;
            letter-spacing: -.07px;
            color: rgba(34,34,34,.5);
            text-align: center;
            line-height: 38px;
            background-color: #fff;
            border-radius: 30px;
            margin-bottom: 12px;
            margin-right: 8px;
            border: 1px solid #d3d3d3;
            cursor: pointer;
        }
        .round a {
            text-decoration: none; color:inherit;
        }
        
        .selected	{
        	color: white;
        	background-color: #222;
        	border-color: #222;
        }
        
        a	{
        	text-decoration: none;
        	color: gray;
        	cursor: pointer;
        	font-size: 15px;
        	line-height: 18px;
        }
        
        .aselected	{
        	color: #222;
        	font-weight: bold;

        }
        
        #sub_area li	{
        	margin-top: 12px;
        }
        
</style>
</head>
<body>
 <div id="content_wrap">
               <div id="sub_area">
               <a href=""><h2>고객센터</h2></a>
              	 <ul style="list-style: none;">
					<li><a href="#">공지사항</a></li>
				  	<li><a href="#">자주묻는질문</a></li> 
				  	<li><a href="#">검수기준</a></li>            
               	</ul>
               </div> 
                
      		<div id="content_area">
                <div width="300" style="clear: both; border-bottom: 3px solid #222;"><h3>자주묻는질문</h3></div>
            		<div id="category_list" style= "padding: 15px 0 4px; border-bottom: 1px solid #ebebeb">
		                <div id="round1" class="round"><a href="#">전체</a></div>
		                <div id="round2"class="round"><a href="#">이용정책</a></div>
		                <div id="round3"class="round"><a href="#">공통</a></div>
		                <div id="round4"class="round"><a href="#">구매</a></div>
		                <div id="round5"class="round"><a href="#">판매</a></div>
	                </div>
           </div>
    	</div>        
  	
        
        
        <div id="questionPagingDiv" style=" width: 750px; float: left; text-align: center; "></div>
        
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
$(function(){
	$('.round').each(function(){
		$(this).click(function(){
			$(this).addClass('selected');
			$(this).siblings().removeClass('selected');
		});
	});
	
	$('#sub_area > ul > li ').each(function(){
		$(this).click(function(){
			$(this).addClass('aselected');
			$(this).siblings().removeClass('aselected');
		});
	});
	
	
});
</script>
</body>
</html> 

