<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE HTML>
<html>
   <head>
      <title>회원수정하기+회원추가</title>
      <!-- 제이쿼리 최신 -->
      <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
      <link rel="stylesheet" href="../css/main_yang.css" />
      <script>
	     function writeClubBtn(){
	    	 alert("test");
	    	 writeClubFrm.submit(); //전송
	    	 
	     }
	  </script>
   </head>
   <body class="is-preload">

      <!-- Wrapper -->
         <div id="wrapper">

            <!-- Main -->
               <div id="main">
                  <div class="inner">

                     <!-- Header -->
                        <%@ include file="../top.jsp" %>

                     <!-- Banner -->
                        <!-- <section id="banner">
                           <div class="content">
                              <header style="text-align: center;">
                                 <h1>전체 게시글에서 수정버튼 누르면 댄다!</h1>
                                 <p> 수정이랑 삭제가 가능하지!!!</p>
                              </header>
                           </div>
                        </section> -->
					 
					 
					 <!-- 회원관리 리스트 나오게! -->
						 <div class="Wrap">
					        <!--content-->
					        <div class="content_St">
					        	<div class="content_Area">
					        		<!--card 이거다!!!!!!!!!!!!!!!!!!!-->
					        		<div class="card card_border">
					        		
					        			<!--card 맨 위 이름-->
					        			<div class="card_title bottomline">
					                        <h3>모임 생성하기
					                    	</h3>
					                    </div>
					        			<!--card_title-->
					        			
					        			
					        			
					        			
									  <div class="container body">
									    <div class="main_container">
									      <div class="right_col" role="main" style="min-height: 100%;">
									        <div class="">
									          <div class="clearfix"></div>
									          <div class="row">
									            <div class="col-md-12 col-sm-12">
									              <div class="x_panel">

									                <div class="x_content">
									                  <form class="" action="/admin/totalWriteWrite" method="post" name="writeClubFrm" enctype="multipart/form-data"
									                    novalidate="">
									                    
									                    <!-- <span class="section">Personal Info</span> -->
									                    <!-- <div class="field item form-group">
									                      <label class="col-form-label col-md-3 col-sm-3  label-align">no<span
									                          class="required">*</span></label>
									                      <div class="col-md-6 col-sm-6">
									                        <input class="form-control" placeholder="1" name="occupation" data-validate-length-range="5,15" type="text">
									                      </div>
									                    </div> -->
									                    
									                    <div class="field item form-group">
									                      <label class="col-form-label col-md-3 col-sm-3  label-align">no<span
									                          class="required">*</span></label>
									                      <div class="col-md-6 col-sm-6">
									                        <input class="form-control" name="cno" type="number">
									                      </div>
									                    </div>
									                    
									                    <div class="field item form-group">
									                      <label class="col-form-label col-md-3 col-sm-3  label-align">작성자<span
									                          class="required">*</span></label>
									                      <div class="col-md-6 col-sm-6">
									                        <input class="form-control" type="id" name="id" >  <!-- data-validate-linked="email" -->
									                      </div>
									                    </div>
									                    <div class="field item form-group">
									                      <label class="col-form-label col-md-3 col-sm-3  label-align">모임 이름<span
									                          class="required">*</span></label>
									                      <div class="col-md-6 col-sm-6">
									                        <input class="form-control" type="text" name="cnm" >
									                      </div>
									                    </div>
									                    <div class="field item form-group">
									                      <label class="col-form-label col-md-3 col-sm-3  label-align">글 작성일<span
									                          class="required">*</span></label>
									                      <div class="col-md-6 col-sm-6">
									                        <input class="form-control" name="cwrdate"  type="date">  <!-- required="required" -->
									                      </div>
									                    </div>
									                    <div class="field item form-group">
									                      <label class="col-form-label col-md-3 col-sm-3  label-align">사진<span
									                          class="required">*</span></label>
									                      <div class="col-md-6 col-sm-6">
									                        <input class="form-control" name="file" type="file">
									                      </div>
									                    </div>
									                    <div class="field item form-group">
									                      <label class="col-form-label col-md-3 col-sm-3  label-align">시설 번호<span
									                          class="required">*</span></label>
									                      <div class="col-md-6 col-sm-6">
									                        <input class="form-control" type="number" name="sfno" >
									                      </div>
									                    </div>
									                    <div class="field item form-group">
									                      <label class="col-form-label col-md-3 col-sm-3  label-align">모임 지역<span
									                          class="required">*</span></label>
									                      <div class="col-md-6 col-sm-6">
									                        <input class="form-control" type="text" name="dongcate" >
									                      </div>
									                    </div>
									                    <div class="field item form-group">
									                      <label class="col-form-label col-md-3 col-sm-3  label-align">상세지역<span
									                          class="required">*</span></label>
									                      <div class="col-md-6 col-sm-6">
									                        <input class="form-control" type="text" name="cloc"  >
									                      </div>
									                    </div>
									                    <div class="field item form-group">
									                      <label class="col-form-label col-md-3 col-sm-3  label-align">모임 날짜<span
									                          class="required">*</span></label>
									                      <div class="col-md-6 col-sm-6">
									                        <input class="form-control" type="date" name="cdodate">
									                      </div>
									                    </div>
									                    <div class="field item form-group">
									                      <label class="col-form-label col-md-3 col-sm-3  label-align">운동종목<span
									                          class="required">*</span></label>
									                      <div class="col-md-6 col-sm-6">
									                        <input class="form-control" type="text" name="scate">
									                      </div>
									                    </div>
									                    <div class="field item form-group">
									                      <label class="col-form-label col-md-3 col-sm-3  label-align">내용<span
									                          class="required">*</span></label>
									                      <div class="col-md-6 col-sm-6">
									                        <textarea  name="ccontent"></textarea>
									                      </div>
									                    </div>
									                    <!-- <div class="field item form-group">
									                      <label class="col-form-label col-md-3 col-sm-3  label-align">가입일자<span
									                          class="required">*</span></label>
									                      <div class="col-md-6 col-sm-6">
									                        <input class="form-control" type="date" name="joindate" >
									                      </div>
									                    </div>  -->
									                    <!-- <div class="field item form-group">
									                      <label class="col-form-label col-md-3 col-sm-3  label-align">프로필 사진<span
									                          class="required">*</span></label>
									                      <div class="col-md-6 col-sm-6">
									                        <input type="file" class="form-control" name="file">
									                      </div>
									                    </div> -->
									                    
									                    <!-- <div class="field item form-group">
									                      <label class="col-form-label col-md-3 col-sm-3  label-align">Time<span
									                          class="required">*</span></label>
									                      <div class="col-md-6 col-sm-6">
									                        <input class="form-control" type="time" name="time" required="required">
									                      </div>
									                    </div>
									                    <div class="field item form-group">
									                      <label class="col-form-label col-md-3 col-sm-3  label-align">Repeat password<span
									                          class="required">*</span></label>
									                      <div class="col-md-6 col-sm-6">
									                        <input class="form-control" type="password" name="password2" data-validate-linked="password"
									                          required="required">
									                      </div>
									                    </div>
									                    <div class="field item form-group">
									                      <label class="col-form-label col-md-3 col-sm-3  label-align">Telephone<span
									                          class="required">*</span></label>
									                      <div class="col-md-6 col-sm-6">
									                        <input class="form-control" type="tel" name="phone" required="required"
									                          data-validate-length-range="8,20">
									                      </div>
									                    </div>
									                   <div class="field item form-group">
									                      <label class="col-form-label col-md-3 col-sm-3  label-align">관심온도<span
									                          class="required">*</span></label>
									                      <div class="col-md-6 col-sm-6">
									                        <input class="form-control" type="number" name="number" data-validate-minmax="10,100"
									                          required="required">
									                      </div>
									                    </div> -->
									                    <div class="ln_solid">
									                      <div class="form-group">
									                        <div class="col-md-6 offset-md-3">
									                          <button type="button" onclick="writeClubBtn()" class="btn btn-primary" style="margin: 0 auto;">Submit</button>
									                          <button type="reset" class="btn btn-success">Reset</button>
									                        </div>
									                      </div>
									                    </div>
									                  </form>
									                </div>
									              </div>
									            </div>
									          </div>
									        </div>
									      </div>
									    </div>
									  </div>
					        			
					        			
					        			
					        			
					        			
										
					        		</div>
					        		<!--card-->
					        	</div>
					        </div>
					        <!--//content-->
						</div>
										 
					 
					 
                  </div>
               </div>

            <!-- Sidebar -->
               <div id="sidebar">
                  <div class="inner">

                     <!-- Search -->
                        <section id="search" class="alt">
                           <form method="post" action="#">
                              <input type="text" name="query" id="query" placeholder="Search" />
                           </form>
                        </section>

                     <!-- Menu -->
                        <nav id="menu">
                           <header class="major">
                              <h2>Menu</h2>
                           </header>
                           <ul>
                              <li><a href="/admin_static">통계</a></li>
                              <!-- opener 옵션 1,2,3 -->
                              <li>
                                 <span class="opener">회원관리</span>
                                 <ul>
                                    <li><a href="/total_user">전체 회원 리스트</a></li>
                                 </ul>
                              </li>
                              <li>
                                 <span class="opener">게시글 관리</span>
                                 <ul>
                                    <li><a href="/total_write">전체 게시글 리스트</a></li>
                                    <li>가능하면 게시글 / 후기 두개로 탭 나눠서 해보기</li>
                                 </ul>
                              </li>
                              <li>
                                 <span class="opener">마이페이지</span>
                                 <ul>
                                    <li><a href="/index">내 프로필</a></li>
                                    <li><a href="/index">내 운동모임</a></li>
                                    <li><a href="/index">내 체육시설</a></li>
                                 </ul>
                              </li>
                              <li>
                                 <span class="opener">고객센터</span>
                                 <ul>
                                    <li><a href="/index">공지사항</a></li>
                                    <li><a href="/index">FAQ / Q&A</a></li>
                                 </ul>
                              </li>
                           </ul>
                        </nav>


                     <!-- Footer -->
                        <footer id="footer">
                           <p class="copyright">&copy; Untitled. All rights reserved. Demo Images: <a href="https://unsplash.com">Unsplash</a>. Design: <a href="https://html5up.net">HTML5 UP</a>.</p>
                        </footer>

                  </div>
               </div>

         </div>
         <!-- Scripts -->
         <script src="../js/jquery.min.js"></script>
         <script src="../js/browser.min.js"></script>
         <script src="../js/breakpoints.min.js"></script>
         <script src="../js/util.js"></script>
         <script src="../js/main.js"></script>
         <script type="text/javascript" src="./Admin Template - Light_files/dataTables.checkboxes.min.js.다운로드"></script>
         
         <!-- 회원수정 페이지 -->
           <script src="../Gentelella Alela! __files/jquery.min.js.다운로드"></script>
 		   <script src="../Gentelella Alela! __files/multifield.js.다운로드"></script>
     	   <script src="../Gentelella Alela! __files/validator.js.다운로드"></script>
     	   <script src="../Gentelella Alela! __files/jquery.min.js(1).다운로드"></script>
 		   <script src="../Gentelella Alela! __files/bootstrap.bundle.min.js.다운로드"></script>
  		   <script src="../Gentelella Alela! __files/fastclick.js.다운로드"></script>
  		   <script src="../Gentelella Alela! __files/nprogress.js.다운로드"></script>

  		   <script src="../Gentelella Alela! __files/custom.min.js.다운로드"></script>
  		   <script defer="" src="../Gentelella Alela! __files/v2cb3a2ab87c5498db5ce7e6608cf55231689030342039"
            integrity="sha512-DI3rPuZDcpH/mSGyN22erN5QFnhl760f50/te7FTIYxodEF8jJnSFnfnmG/c+osmIQemvUrnBtxnMpNdzvx1/g=="
            data-cf-beacon="{&quot;rayId&quot;:&quot;7e682d96cce7afc9&quot;,&quot;token&quot;:&quot;cd0b4b3a733644fc843ef0b185f98241&quot;,&quot;version&quot;:&quot;2023.4.0&quot;,&quot;si&quot;:100}"
            crossorigin="anonymous"></script>

   </body>
</html>