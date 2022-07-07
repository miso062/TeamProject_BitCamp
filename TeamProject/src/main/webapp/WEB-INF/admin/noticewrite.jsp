<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous">
</script>
<!-- Bootstrap CSS --><link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
<style>
body {
    margin: 0;
    font-family: -apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,"Noto Sans",sans-serif,"Apple Color Emoji","Segoe UI Emoji","Segoe UI Symbol","Noto Color Emoji";
    font-size: 1rem;
    font-weight: 400;
    line-height: 1; 
    color: #212529;
    text-align: left;
    background-color: #fff;
}
.h_header .h_top_inner {
    height:34px;
}
.btn-primary {
	margin:10px;
    color: #fff;
    background-color: black;
    border-color: black;
    padding-left:20px;
    padding-right:20px;
}
#savelist{
	text-align:center;

}
#hr{	
	background-color: black;
	border:0;
	height:3px;
	margin: 0 0;
}
#form{
	margin-top:10px;
}
.ck{
	height: 350px;
}
#gogeck{
	text-decoration: none;
}
h1 {
    display: block;
    font-size: 2em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    margin-block-start: 0px;
    margin-block-end: 0px;
    font-weight: bold;
}
h3 {
    display: block;
    font-size: 24px;
    margin-block-start: 0px;
    margin-block-end: 0px;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
}
.container {
    width: 100%;
    padding-right: 15px;
    padding-left: 0;
    margin-right: auto;
    margin-left: auto;
}
</style>
</head>
<body id="body1">
	<article>	
		<div class="container" role="main">
			<div class="gongji" width="300" style="clear: both; margin-bottom: 15px;"><h3>공지사항 작성</h3></div>
			<hr id="hr">
				<form name="form" id="form" role="form" method="post" action="">
					<div class="mb-3">
						<label for="title">제목</label>
							<input type="text" class="form-control" name="title" id="title" placeholder="제목을 입력해 주세요">
					</div>
					<div class="mb-3">
						<label for="reg_id">관리자명</label>
							<input type="text" class="form-control" name="registrant" id="reg_id" placeholder="이름을 입력해 주세요">
					</div>								
					<div class="mb-3">					
						<label for="content">내용</label>					
							<textarea class="form-control" rows="5" name="content" id="content" placeholder="내용을 입력해 주세요" ></textarea>
					</div>					
				</form>			
				<div id="savelist">				
				<button type="button" class="btn btn-sm btn-primary" id="btnSave">저장</button>
				<button type="button" class="btn btn-sm btn-primary" id="btnList">목록</button>
				</div>		
		</div>	
	</article>
</body>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.ckeditor.com/ckeditor5/34.2.0/classic/ckeditor.js"></script>
<script>
ClassicEditor 
    .create( document.querySelector('#content')) 
    .then( editor => { 
        console.log( editor ); 
    } ) 
    .catch( error => { 
        console.error( error ); 
    } );
$('#btnSave').click(function(){
		$.ajax({
			url:'/TeamProject/admin/getnoticeWrite',
			type: 'post',
			data: {
				'title': $('#title').val(),
				'content': $('.ck-editor__editable_inline').html(),
				'registrant': $('#reg_id').val()
			},
			success: function(){
				alert('작성하신 글을 저장하였습니다.');
				location.href='/TeamProject/admin/notice';
			},
			error: function(err){
			console.log(err);
			}
		});
	});
</script>
