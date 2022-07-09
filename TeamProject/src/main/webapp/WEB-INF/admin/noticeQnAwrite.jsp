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
.updel{
    
	float:right;
	margin:10px;
    color: #fff;
    background-color: black;
    border-color: black;
    padding-left:20px;
    padding-right:20px;
	text-align:center;
	padding: 0.25rem 0.5rem;
    font-size: .875rem;
    line-height: 1.5;
    border-radius: 0.2rem;
    cursor:pointer;
}
</style>
</head>
<body id="body1">
	<article>	
		<div class="container" role="main">
			<div class="gongji" width="300" style="clear: both; margin-bottom: 15px;"><h3>QnA 작성</h3></div>
			<hr id="hr">
				<form name="form" id="form" role="form" method="post" action="">
					<div class="mb-3">
						<label for="category">카테고리</label>
							<br>
							<select class="form-control" name="category" id="category" style="width:100%;">
									<option value="" disabled selected>카테고리를 선택하세요</option>
									<option value="이용정책">이 용 정 책</option>
									<option value="공통">공    통</option>
									<option value="구매">구    매</option>
									<option value="판매">판    매</option>
							</select>
					</div>					
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
    
let editor;

ClassicEditor
.create( document.querySelector( '#content' ))
.then( newEditor => {
        editor = newEditor;
    } )

.then( editor => {
	window.editor = editor;

} )
.catch( error => {
	console.error( 'Oops, something went wrong!' );
	console.error( 'Please, report the following error on https://github.com/ckeditor/ckeditor5/issues with the build id and the error stack trace:' );
	console.warn( 'Build id: g64ljk55ssvc-goqlohse75uw' );
	console.error( error );
} );

$('#btnSave').click(function(){
	const editorData = editor.getData();

	$.ajax({
		url:'/TeamProject/admin/getnoticeQnAWrite',
		type: 'post',
		data: {
			'category': $('#category').val(),
			'title': $('#title').val(),
			'content': editorData,
			'registrant': $('#reg_id').val(),
		},
		success: function(){
			alert('작성하신 글을 저장하였습니다.');
			location.href='/TeamProject/admin/noticeQnA';
		},
		error: function(err){
		console.log(err);
		}
	});
});
$('#btnList').click(function(){
	location.href="/TeamProject/admin/noticeQnA";
})
</script>