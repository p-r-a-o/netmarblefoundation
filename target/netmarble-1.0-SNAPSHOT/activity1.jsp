<%@ page contentType = "text/html; charset=UTF-8" pageEncoding = "UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <title>넷마블문화재단</title>
    
    <meta name="og:description" content="netmarblefoundation">
    <meta name="og:type" content="website">
    <meta name="keywords" content="netmarblefoundation, CloneCoding">
    <meta http-equiv="X-UA-Compatible" content="IE-edge">
    <!-- 아래 두 메타태그는 캐쉬를 가져오지 않게하여 실시간으로 업데이트된 페이지를 볼 수 있게 해줌 -->
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Pragma" content="no-chche">
    <!-- 아래 메타태그는 이미지 호버를 했을때 관련된 툴바가 작동하지 않게 하는 태그 -->
    <meta http-equiv="imagetoolbar" content="no">
    <!-- css -->
    <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css"/>
    <link rel="stylesheet" href="./css/default.css">
    <link rel="stylesheet" href="./css/activity.css"/>
</head>

<body>
<%
  String userID = null;
  if (session.getAttribute("userID") != null) {
    userID = (String) session.getAttribute("userID");
  }
%>
<div id= "_nm">
    <div id="app" class="pc">
        <div id="skip-navigation">
            <a href="#container">Skip Navigation</a>
        </div>
        <div id="wrapper">
            <header class="header header_on">
                <div class="gnb">
                    <div class="logo_white"><a href="./index.html"><img src="./image/logo_white.png" alt="netmable"></a>
                    </div>
                    <div class="logo on"><a href="main.jsp"><img src="./image/logo.png" alt="netmable"></a></div>
                    <div class="gnb_back">
                        <ul class="gnb_ul flx">
                            <li>
                                <a href="#" class="lnb_title on">재단소개</a>
                                <ul class="lnb">
                                    <li><a href="information.jsp">넷마블문화재단</a></li>
                                    <li><a href="intro.jsp">오시는 길</a></li>
                                </ul>
                            </li>
                            <li class="yellow_line">
                                <a href="#" class="lnb_title on">재단활동</a>
                                <ul class="lnb">
                                    <li><a href="activity1.jsp">문화 만들기</a></li>
                                    <li><a href="activity2.jsp">인재 키우기</a></li>
                                    <li><a href="activity3.jsp">마음 나누기</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#" class="lnb_title on">재단소식</a>
                                <ul class="lnb">
                                    <li><a href="announcement.jsp">공지사항</a></li>
                                    <li><a href="notice.jsp">뉴스룸</a></li>
                                    <li><a href="notice.jsp">소셜 미디어</a></li>
                                </ul>
                            </li>
				           <%
				            if (userID == null) {
				          %>
				          	<li>
                                <a href="#" class="lnb_title on">재단회원</a>
                                <ul class="lnb">
                                    <li><a href="login.jsp">로그인</a></li>
                                    <li><a href="join.jsp">회원가입</a></li>
                                </ul>
                            </li>
				          <%
				            }
				          %>
				          <%
				            if (userID != null) {
				          %>
				          	<li>
                                <a href="#" class="lnb_title on">회원관리</a>
                                <ul class="lnb">
                                    <li><a href="logoutAction.jsp">로그아웃</a></li>
                                </ul>
                            </li>
				          <%
				            }
				          %>
                        </ul>
                    </div>
                </div>
            </header>
            <main id="container">
                <div class="page activity1">
                    <section class="activity01-title intersect">
                        <div class="cont">
                            <div class="tit-area">
                                <div data-aos="fade-up" data-aos-delay="200" data-aos-duration="1500"
                                     data-aos-mirror="true"
                                     data-aos-once="false">
                                    <p class="title">
                                        <span class="top-txt">재단활동</span>
                                        <span class="tit">문화 만들기</span>
                                    </p>
                                    <p class="desc">
                                        게임을 기반으로 다양한 문화적 가치를 공유하고
                                        <br>
                                        누구나 즐겁게 참여할 수 있는 교육 및 여가 문화를
                                        <br>
                                        만들어 가기 위해 다양한 활동을 전개하고 있습니다.
                                    </p>
                                </div>
                                <div data-aos="fade-in" data-aos-delay="100" data-aos-duration="1500"
                                     data-aos-mirror="true"
                                     data-aos-once="false">
                                    <img src="./image/banner1.jpg" alt="banner1" class="banner1">
                                </div>
                            </div>
                        </div>
                    </section>
                    <section class="activity-cont1">
                        <div class="cont">
                            <div class="sub-area">
                                <div data-aos="fade-up" data-aos-delay="300" data-aos-duration="1500"
                                     data-aos-mirror="true"
                                     data-aos-once="false">
                                    <p class="title">게임문화체험관</p>
                                    <p class="desc">놀이와 교육이 만나는 특별한 게임 공간</p>
                                    <hr class="custom-hr-black">
                                </div>
                            </div>
                            <div class="list-cts">
                                <div class="list01" data-aos="fade-up" data-aos-delay="400" data-aos-duration="1500"
                                     data-aos-mirror="true" data-aos-once="false">
                                    <h3>
                                        특수학교/유관기관
                                        <br>
                                        내 체험관 개설
                                    </h3>
                                    <p>장애학생들의 여가 문화 및 교육 활성화 위해 게임문화체험관 개설</p>
                                </div>
                                <div class="list02" data-aos="fade-up" data-aos-delay="500" data-aos-duration="1500"
                                     data-aos-mirror="true" data-aos-once="false">
                                    <h3>
                                        놀이/교육 프로그램
                                        <br>
                                        개발 및 보급
                                    </h3>
                                    <p>체험관에 비치된 PC, 모바일, VR 장비를 활용할 수 있는 프로그램 개발 및 보급</p>
                                </div>
                                <div class="list03" data-aos="fade-up" data-aos-delay="600" data-aos-duration="1500"
                                     data-aos-mirror="true" data-aos-once="false">
                                    <h3>
                                        체험관 활용 사례 연구
                                        <br>
                                        및 컨퍼런스 개최
                                    </h3>
                                    <p>체험관 이용 학생을 중심으로 게임 연계 놀이/교육의 효과 연구 및 결과 공유</p>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
                <section class="activity01-cont2">
                    <div class="cont">
                        <div class="half-area">
                            <div class="half1">
                                <div data-aos="fade-right" data-aos-delay="100" data-aos-duration="1500"
                                     data-aos-mirror="true" data-aos-once="false">
                                    <img src="./image/banner2.jpg" alt="banner2" class="banner2">
                                </div>
                            </div>
                            <div class="half02">
                                <div class="sub-area">
                                    <div data-aos="fade-left" data-aos-delay="100" data-aos-duration="1500"
                                         data-aos-mirror="true" data-aos-once="false">
                                        <p class="title">게임소통학교</p>
                                        <p class="desc">게임으로 소통하고 가까워지는 가족</p>
                                        <hr class="custom-hr-yellow">
                                    </div>
                                </div>
                                <div class="list-cts type-vertical">
                                    <div class="list01" data-aos="fade-left" data-aos-delay="200"
                                         data-aos-duration="1500"
                                         data-aos-mirror="true" data-aos-once="false">
                                        <h3>찾아가는 게임소통학교 진행</h3>
                                        <p>
                                            전국 초등학교를 방문하여 학생 및 학부모를 대상으로 게임소통 학교, 게임의 특성 및 활용방법 이해 통해 가정 내 올바른
                                            <br>
                                            게임 문화 방향성 제시
                                        </p>
                                    </div>
                                    <div class="list02" data-aos="fade-left" data-aos-delay="300"
                                         data-aos-duration="1500"
                                         data-aos-mirror="true" data-aos-once="false">
                                        <h3>함께 하는 게임소통캠프 개최</h3>
                                        <p>
                                            초등학생과 학부모가 함께 참여하는 온/오프라인 가족캠프 개최, 게임을 매개로 가족 간 견해 차이 극복 및 긍정적인 관계 구축
                                        </p>
                                    </div>
                                    <div class="list03" data-aos="fade-left" data-aos-delay="400"
                                         data-aos-duration="1500"
                                         data-aos-mirror="true" data-aos-once="false">
                                        <h3>지속적 정보 공유 및 사례 연구/조사</h3>
                                        <p>
                                            교육 콘텐츠 배포, 학부모 간담회, 게임소통학교 사례 연구/조사 통해 가정 내 건강한 게임 문화 조성 기반 구축 지원
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <section class="activity01-cont3">
                    <div class="cont">
                        <div class="cts01 half-area">
                            <div class="half01">
                                <div class="sub-area">
                                    <div data-aos="fade-right" data-aos-delay="100" data-aos-duration="1500"
                                         data-aos-mirror="true"
                                         data-aos-once="false">
                                        <p class="title">전국 장애학생 e페스티벌</p>
                                        <p class="desc">게임 안에서 하나되는 모두의 축제</p>
                                        <hr class="custom-hr-yellow">
                                    </div>
                                </div>
                                <div class="list-cts type-vertical">
                                    <div class="list01" data-aos="fade-right" data-aos-delay="200"
                                         data-aos-duration="1500"
                                         data-aos-mirror="true"
                                         data-aos-once="false">
                                        <h3>장애학생 e스포츠 및 정보화대회 개최</h3>
                                        <p>
                                            국립특수교육원, 한국콘텐츠진흥원과 공동으로 전국 최대 규모 장애학생 e스포츠대회 및 정보화대회 개최
                                        </p>
                                    </div>
                                    <div class="list02" data-aos="fade-right" data-aos-delay="300"
                                         data-aos-duration="1500"
                                         data-aos-mirror="true"
                                         data-aos-once="false">
                                        <h3>우수 학생 시상 및 사례 공유</h3>
                                        <p>
                                            e스포츠대회 및 정보화대회 우수 학생 시상 및 사례 전파 통해 자존감과 성취감 고양
                                        </p>
                                    </div>
                                    <div class="list03" data-aos="fade-right" data-aos-delay="400"
                                         data-aos-duration="1500"
                                         data-aos-mirror="true"
                                         data-aos-once="false">
                                        <h3>최신 정보통신기술 공유</h3>
                                        <p>
                                            특수교육 정보화 컨퍼런스, e페스티벌 문화행사 통해 최신 정보기술 체험 기회 지원
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="half02">
                                <div data-aos="fade-up" data-aos-delay="100" data-aos-duration="1500"
                                     data-aos-mirror="true"
                                     data-aos-once="false">
                                    <img src="./image/banner3.jpg" alt="banner3" class="banner3">
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <section class="activity01-cont4 intersect">
                    <div class="cont">
                        <div class="sub-area">
                            <div data-aos="fade-up" data-aos-delay="100" data-aos-duration="1500" data-aos-mirror="true"
                                 data-aos-once="false">
                                <p class="title">게임콘서트</p>
                                <p class="desc">게임산업 및 문화에 대한 오픈 포럼</p>
                                <hr class="custom-hr-yellow">
                            </div>

                        </div>
                        <div class="list-cts">
                            <div class="list01" data-aos="fade-up" data-aos-delay="200" data-aos-duration="1500"
                                 data-aos-mirror="true"
                                 data-aos-once="false">
                                <h3>
                                    게임 산업 및 문화
                                    <br>
                                    오픈 포럼 개최
                                </h3>
                                <p>
                                    다양한 분야의 전문가들과 게임 산업 및 문화를 다각도로 조망하고 미래 비전을 제시
                                </p>
                            </div>
                            <div class="list02" data-aos="fade-up" data-aos-delay="300" data-aos-duration="1500"
                                 data-aos-mirror="true"
                                 data-aos-once="false">
                                <h3>
                                    대중 소통
                                    <br>
                                    채널 운영
                                </h3>
                                <p>
                                    게임 산업 및 문화에 관심 있는 대중이 전문가 및 현업자와 소통할 수 있는 온/오프라인 채널 마련
                                </p>
                            </div>
                            <div class="list03" data-aos="fade-up" data-aos-delay="400" data-aos-duration="1500"
                                 data-aos-mirror="true"
                                 data-aos-once="false">
                                <h3>
                                    게임 산업/문화
                                    <br>
                                    관련 아카이빙
                                </h3>
                                <p>
                                    게임 산업 및 문화와 관련된 다양한 지식, 정보, 인사이트, 해석을 망리하여 지속 축적 및 공유
                                </p>
                            </div>
                        </div>
                    </div>
                    <img src="./image/banner4.jpg" alt="banner4" class="banner4">
                </section>
            </main>
        </div>
    </div>
</div>
<footer>
    <div class="footer-inner">
        <div class="ci">
            <a href="#"><img src="./image/logo_white.png" alt="CI"></a>
        </div>
        <p class="copyright">
            서울특별시 구로구 디지털로26길 38, G-Tower 넷마블<br>
            Copyright © Netmarble Corp. All Rights Reserved.
        </p>
        <div class="policy">
            <a href="#" class="">개인정보처리방침</a><span>|</span>
            <a href="#" class="">SNS 저작물 이용 동의서</a><span>|</span>
            <a href="#">이메일 문의</a><span>|</span>
            <a href="https://www.mcst.go.kr/" target="_blank">주무관청</a><span>|</span>
            <a href="https://www.nts.go.kr/" target="_blank">국세청</a>
        </div>
        <div class="sns">
            <a href="#" class="facebook"><img src="./image/facebook.png" alt="페이스북"></a>
            <a href="#" class="youtube"><img src="./image/youtube.png" alt="유튜브"></a>
            <a href="#" class="instagram"><img src="./image/instagram.png" alt="인스타그램"></a>
        </div>
    </div>
</footer>
<!--         js         -->
<script src="https://unpkg.com/aos@next/dist/aos.js"></script>
<script>AOS.init();</script>
</body>

</html>