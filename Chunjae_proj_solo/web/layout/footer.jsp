<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Author" content="천재교육 콘텐츠 제작팀">
    <meta http-equiv="Publisher" content="천재교육 김기태">
    <meta http-equiv="Copyright" content="copyright@chunjae.co.kr">
    <title>천재교육</title>

    <!-- 검색엔진 최적화(SEO) -->
    <meta name="Subject" content="천재교육, 천재IT교육센터">
    <meta name="Keywords" content="천재교육, 천재 IT, 교육 교재, 교과서, 스마트 교육">
    <meta name="Description" content="천재교육은 교과서 제작, 교육 교재 제작, 초등, 중등, 고등 교육에 대한 교재와 교육을 실시하는 기관입니다.">
    <!-- <meta name="Robots" content="noindex, nofllow"> -->
    <meta name="robots" content="index,follow">

    <!-- 오픈 그래프(Open graph)-->
    <meta property="og:type" content="website">
    <meta property="og:title" content="천재교육">
    <meta property="og:description" content="앞선 생각으로 더 큰 미래의 교육을 준비하는 기업">
    <meta property="og:image" content="https://kktlove.github.io/web01/images/chunjae_logo.png">
    <meta property="og:url" content="https://kktlove.github.io/web01">
    
    <!-- 트위터 -->
    <meta name="twitter:card" content="picture">
    <meta name="twitter:title" content="천재교육">
    <meta name="twitter:description" content="앞선 생각으로 더 큰 미래의 교육을 준비하는 기업">
    <meta name="twitter:image" content="https://kktlove.github.io/web01/images/chunjae_logo.png">
    <!-- 표준 파비콘 -->
    <link rel="shortcut icon" href="./images/logo.ico">    
    <!-- 애플 계열 모바일 -->
    <link rel="apple-touch-icon-precomposed" href="./images/logo_64.png">
    <!-- IE 계열 브라우저 -->
    <meta name="msapplication-TileColor" content="#FFFFFF">
    <meta name="msapplication-TileImage" content="./images/logo_48.png">
    <!-- 파이어폭스, 오페라, 또는 구형 크롬/사파리 -->
    <link rel="icon" href="./images/logo_16.png" sizes="16x16">
    <link rel="icon" href="./images/logo_32.png" sizes="32x32">
    <link rel="icon" href="./images/logo_48.png" sizes="48x48">
    <link rel="icon" href="./images/logo_64.png" sizes="64x64">

    <!-- 스타일 초기화 : reset.css 또는 normalize.css -->
    <link href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" rel="stylesheet">

    <!-- 필요한 폰트를 로딩 : 구글 웹 폰트에서 폰트를 선택하여 해당 내용을 붙여 넣기 -->
    <link rel="stylesheet" href="google.css">
    <link rel="stylesheet" href="fonts.css">

    <!-- 필요한 플러그인 연결 -->
    <script src="https://code.jquery.com/jquery-latest.js"></script>
	<link rel="stylesheet" href="../css/common.css" />
    <link rel="stylesheet" href="../css/hd.css" />
	<link rel="stylesheet" href="../css/body.css" />
    <link rel="stylesheet" href="../css/ft.css" />
</head>
<body>
    <div class="wrap">
		        <footer class="ft">
            <div class="ft_wrap">
                <nav class="ft_link">
                    <ul class="fnb">
                        <li class="ft_logo"></li>
                        <li><a href="">제휴 문의</a></li>
                        <li><a href="">이메일 무단 수집 거부</a></li>
                    </ul>
                    <ul class="snb">
                        <li class="item1"><a href="">소셜1</a></li>
                        <li class="item2"><a href="">소셜2</a></li>
                        <li class="item3"><a href="">소셜3</a></li>
                        <li class="item4"><a href="">소셜4</a></li>
                        <li class="item5"><a href="">소셜5</a></li>
                        <li class="locate">
                            <select name="sel" id="sel" onchange="loc()">
                                <option value="">FAMILY LINK</option>
                                <option value="https://chunjaetext.co.kr/">천재교과서</option>
                                <option value="http://www.milkt.co.kr/Main/Main_new">밀크T</option>
                                <option value="http://www.prinpia.co.kr/">프린피아</option>
                                <option value="http://www.edumon.co.kr/intro/index.asp">에듀몬</option>
                            </select>
                        </li>
                    </ul>
                </nav>
                <script>
                function loc(){
                    var url = document.getElementById("sel").value;
                    //location.href = url;  //현재 창에
                    if(url!="") {
                        var win = window.open(url); //새창에
                    }
                }
                </script>
            </div>
            <div class="ft_wrap2">
                <p class="copyright">
                    <span>(주)천재교육</span>
                    <span>서울시 금천구 가산로9길 54</span>
                    <span>대표자 강희철</span>
                    <span>사업자등록번호 119-81-19350</span>
                    <span>통신판매신고번호 제18-439호</span>
                    <span class="end">부가통신사업신고 016712</span>
                </p>
                <p class="copyright">
                    <span>천재교육 1577-0902</span>
                    <span>리틀천재 1577-0218</span>
                    <span>월간우등생학습 1577-6226</span>
                    <span>밀크T초등 1577-1533</span>
                    <span>밀크T중학 1522-5533</span>
                    <span class="end">밀크T고등 1522-5533</span>
                </p>
                <p class="cp">COPYRIGHT 1981-2023 CHUNJAE EDUCATION INC. ALL RIGHTS RESERVED.</p>
            </div>
        </footer>
</body>
</html>