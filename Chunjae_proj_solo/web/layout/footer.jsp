<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Author" content="õ�米�� ������ ������">
    <meta http-equiv="Publisher" content="õ�米�� �����">
    <meta http-equiv="Copyright" content="copyright@chunjae.co.kr">
    <title>õ�米��</title>

    <!-- �˻����� ����ȭ(SEO) -->
    <meta name="Subject" content="õ�米��, õ��IT��������">
    <meta name="Keywords" content="õ�米��, õ�� IT, ���� ����, ������, ����Ʈ ����">
    <meta name="Description" content="õ�米���� ������ ����, ���� ���� ����, �ʵ�, �ߵ�, ��� ������ ���� ����� ������ �ǽ��ϴ� ����Դϴ�.">
    <!-- <meta name="Robots" content="noindex, nofllow"> -->
    <meta name="robots" content="index,follow">

    <!-- ���� �׷���(Open graph)-->
    <meta property="og:type" content="website">
    <meta property="og:title" content="õ�米��">
    <meta property="og:description" content="�ռ� �������� �� ū �̷��� ������ �غ��ϴ� ���">
    <meta property="og:image" content="https://kktlove.github.io/web01/images/chunjae_logo.png">
    <meta property="og:url" content="https://kktlove.github.io/web01">
    
    <!-- Ʈ���� -->
    <meta name="twitter:card" content="picture">
    <meta name="twitter:title" content="õ�米��">
    <meta name="twitter:description" content="�ռ� �������� �� ū �̷��� ������ �غ��ϴ� ���">
    <meta name="twitter:image" content="https://kktlove.github.io/web01/images/chunjae_logo.png">
    <!-- ǥ�� �ĺ��� -->
    <link rel="shortcut icon" href="./images/logo.ico">    
    <!-- ���� �迭 ����� -->
    <link rel="apple-touch-icon-precomposed" href="./images/logo_64.png">
    <!-- IE �迭 ������ -->
    <meta name="msapplication-TileColor" content="#FFFFFF">
    <meta name="msapplication-TileImage" content="./images/logo_48.png">
    <!-- ���̾�����, �����, �Ǵ� ���� ũ��/���ĸ� -->
    <link rel="icon" href="./images/logo_16.png" sizes="16x16">
    <link rel="icon" href="./images/logo_32.png" sizes="32x32">
    <link rel="icon" href="./images/logo_48.png" sizes="48x48">
    <link rel="icon" href="./images/logo_64.png" sizes="64x64">

    <!-- ��Ÿ�� �ʱ�ȭ : reset.css �Ǵ� normalize.css -->
    <link href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" rel="stylesheet">

    <!-- �ʿ��� ��Ʈ�� �ε� : ���� �� ��Ʈ���� ��Ʈ�� �����Ͽ� �ش� ������ �ٿ� �ֱ� -->
    <link rel="stylesheet" href="google.css">
    <link rel="stylesheet" href="fonts.css">

    <!-- �ʿ��� �÷����� ���� -->
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
                        <li><a href="">���� ����</a></li>
                        <li><a href="">�̸��� ���� ���� �ź�</a></li>
                    </ul>
                    <ul class="snb">
                        <li class="item1"><a href="">�Ҽ�1</a></li>
                        <li class="item2"><a href="">�Ҽ�2</a></li>
                        <li class="item3"><a href="">�Ҽ�3</a></li>
                        <li class="item4"><a href="">�Ҽ�4</a></li>
                        <li class="item5"><a href="">�Ҽ�5</a></li>
                        <li class="locate">
                            <select name="sel" id="sel" onchange="loc()">
                                <option value="">FAMILY LINK</option>
                                <option value="https://chunjaetext.co.kr/">õ�米����</option>
                                <option value="http://www.milkt.co.kr/Main/Main_new">��ũT</option>
                                <option value="http://www.prinpia.co.kr/">�����Ǿ�</option>
                                <option value="http://www.edumon.co.kr/intro/index.asp">�����</option>
                            </select>
                        </li>
                    </ul>
                </nav>
                <script>
                function loc(){
                    var url = document.getElementById("sel").value;
                    //location.href = url;  //���� â��
                    if(url!="") {
                        var win = window.open(url); //��â��
                    }
                }
                </script>
            </div>
            <div class="ft_wrap2">
                <p class="copyright">
                    <span>(��)õ�米��</span>
                    <span>����� ��õ�� �����9�� 54</span>
                    <span>��ǥ�� ����ö</span>
                    <span>����ڵ�Ϲ�ȣ 119-81-19350</span>
                    <span>����ǸŽŰ��ȣ ��18-439ȣ</span>
                    <span class="end">�ΰ���Ż���Ű� 016712</span>
                </p>
                <p class="copyright">
                    <span>õ�米�� 1577-0902</span>
                    <span>��Ʋõ�� 1577-0218</span>
                    <span>���������н� 1577-6226</span>
                    <span>��ũT�ʵ� 1577-1533</span>
                    <span>��ũT���� 1522-5533</span>
                    <span class="end">��ũT��� 1522-5533</span>
                </p>
                <p class="cp">COPYRIGHT 1981-2023 CHUNJAE EDUCATION INC. ALL RIGHTS RESERVED.</p>
            </div>
        </footer>
</body>
</html>