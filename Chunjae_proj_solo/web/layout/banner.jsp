<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<div class="contents">
	<figure class="vs">
		<ul class="img_box">
			<li class="item1 active"><input type="radio" name="vs_ra"
				id="vs_ra1" class="vs_ra" checked>
				<div class="bg_box"></div>
				<h2 class="vs_tit">
					������ ���� ���Ӿ��� ����<br> <strong>�ູ�� ������ �Բ� �մϴ�</strong>
				</h2></li>
			<li class="item2"><input type="radio" name="vs_ra" id="vs_ra2"
				class="vs_ra">
				<div class="bg_box"></div>
				<h2 class="vs_tit">
					�������� ��! ��õ�� ��!��<br> <strong>���� ���������� ������ <br>�ٲߴϴ�
					</strong>
				</h2></li>
		</ul>
		<ul class="btn_box">
			<li class="item1 active"><label for="vs_ra1" class="vs_btn"></label></li>
			<li class="item2"><label for="vs_ra2" class="vs_btn"></label></li>
		</ul>
		<button type="button" class="play_btn"></button>
	</figure>
	<script>
            $(function(){
                $(".btn_box li .vs_btn").click(function(){
                    var par = $(this).parents("li").index();
                    $(".img_box li").removeClass("active");
                    $(".img_box li").eq(par).addClass("active");
                    $(".btn_box li").removeClass("active");
                    $(".btn_box li").eq(par).addClass("active");
                });
                var sw = 1;
                var int1 = setInterval(function(){
                    if(sw==1){
                        autoplay(1);
                        sw = 0;
                    } else {
                        autoplay(0);
                        sw = 1;
                    }
                }, 3500);

                function autoplay(n){
                    $(".img_box li").removeClass("active");
                    $(".img_box li").eq(n).addClass("active");
                    $(".btn_box li").removeClass("active");
                    $(".btn_box li").eq(n).addClass("active");
                }

                $(".play_btn").click(function(){
                    if($(this).hasClass("active")){
                        $(this).removeClass("active");
                        sw = 1;
                        int1 = setInterval(function(){
                            if(sw==1){
                                autoplay(1);
                                sw = 0;
                            } else {
                                autoplay(0);
                                sw = 1;
                            }
                        }, 3500);
                    } else {
                        $(this).addClass("active");
                        sw = 0;
                        clearInterval(int1);
                    }
                });
            });    
            </script>
	<section class="page" id="page1">
		<div class="page_wrap">
			<h2 class="page_tit">������ ����1</h2>
			<ul class="pic_lst">
				<li class="item1"><a href="">
						<p class="pic_com">����</p>
						<h3 class="pic_tit">����</h3> <span class="pic_arrow"></span>
				</a></li>
				<li class="item2"><a href="">
						<p class="pic_com">����</p>
						<h3 class="pic_tit">����</h3> <span class="pic_arrow"></span>
				</a></li>
				<li class="item3"><a href="">
						<p class="pic_com">����</p>
						<h3 class="pic_tit">����</h3> <span class="pic_arrow"></span>
				</a></li>
				<li class="item4"><a href="">
						<p class="pic_com">����</p>
						<h3 class="pic_tit">����</h3> <span class="pic_arrow"></span>
				</a></li>
			</ul>
		</div>
	</section>
	<section class="page" id="page2">
		<div class="page_wrap">
			<h2 class="page_tit">�̵��</h2>
			<p class="page_com">õ�米���� �����ڷ�� SNS �������� �Ұ��մϴ�.</p>
			<div class="sl-btn-box">
				<button type="button" class="btn next">&gt;</button>
				<button type="button" class="btn prev">&lt;</button>
			</div>
			<!-- div.slide_box>ul.card_lst>li.item$*7>a>div.thumb_box+p.thumb_tit{���������$}+(div.ico_box>span.ico_item+span{������$}.thumb_date{2023-07-18}) -->
			<div class="slide_box">
				<ul class="card_lst">
					<li class="item1">
						<h3 class="cate_tit">��к���</h3>
						<ul class="cate_lst">
							<li><a href="">
									<p class="bd_content">���ʷ� Ű��� �ѱ� �۾���, �����н����� â�Ƿ°� ǥ������ �⸥��.</p>
									<p class="bd_date">2023-07-17</p>
							</a></li>
							<li><a href="">
									<p class="bd_content">õ�米����, ����Ʈ�ع�-��ũT �¡��������� ���� ��ǰ �����ɾ�
										õ���н� ���</p>
									<p class="bd_date">2023-07-17</p>
							</a></li>
						</ul>
					</li>
					<li class="item2"><a href="">
							<div class="thumb_box"></div>
							<p class="thumb_tit">���������2 ���������2 ���������2 ���������2 ���������2
								���������2 ���������2���������2 ���������2 ���������2 ���������2���������2���������2 ���������2</p>
							<div class="ico_box">
								<span class="ico item1"></span><span class="thumb_date">2023-07-18</span>
							</div>
					</a></li>
					<li class="item3"><a href="">
							<div class="thumb_box"></div>
							<p class="thumb_tit">���������3</p>
							<div class="ico_box">
								<span class="ico item1"></span><span class="thumb_date">2023-07-18</span>
							</div>
					</a></li>
					<li class="item4"><a href="">
							<div class="thumb_box"></div>
							<p class="thumb_tit">���������4</p>
							<div class="ico_box">
								<span class="ico item2"></span><span class="thumb_date">2023-07-18</span>
							</div>
					</a></li>
					<li class="item5"><a href="">
							<div class="thumb_box"></div>
							<p class="thumb_tit">���������5</p>
							<div class="ico_box">
								<span class="ico item1"></span><span class="thumb_date">2023-07-18</span>
							</div>
					</a></li>
					<li class="item6"><a href="">
							<div class="thumb_box"></div>
							<p class="thumb_tit">���������6</p>
							<div class="ico_box">
								<span class="ico item2"></span><span class="thumb_date">2023-07-18</span>
							</div>
					</a></li>
					<li class="item7"><a href="">
							<div class="thumb_box"></div>
							<p class="thumb_tit">���������7</p>
							<div class="ico_box">
								<span class="ico item1"></span><span class="thumb_date">2023-07-18</span>
							</div>
					</a></li>
				</ul>
			</div>
		</div>
	</section>
	<script>
            $(function(){
                $(".sl-btn-box .btn.next").click(function(){
                    var ln = parseInt($(".card_lst").css("margin-left"));
                    if(ln>-1110) {
                        var mv = ln - 370;
                        $(".card_lst").not(":animated").animate({"margin-left":mv+"px"});
                    }
                });
                $(".sl-btn-box .btn.prev").click(function(){
                    var ln = parseInt($(".card_lst").css("margin-left"));
                    if(ln<0){
                        var mv = ln + 370;
                        $(".card_lst").not(":animated").animate({"margin-left":mv+"px"});
                    }
                });
            });    
            </script>
</div>