<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@include file="/common/taglib.jsp"%>
<security:authorize access="isAnonymous()">
	<c:redirect url="/dang-nhap?message=notlogin" />
</security:authorize>
	<div class="container">
      <div class="yoo-uikits-heading">
        <nav aria-label="breadcrumb" style="background-color: #d300ff5c;">
		  <ol class="breadcrumb">
		    <li class="breadcrumb-item active" aria-current="page" style="color: white;">Trang chủ</li>
		  </ol>
		</nav>
      </div>
    </div>
    <div class="yoo-height-b30 yoo-height-lg-b30"></div>
    <div class="container-fluid">
      <div class="row">
        <div class="col-xl-3 col-sm-6">
          <div class="yoo-iconbox yoo-style1 yoo-type1 yoo-color2 yoo-border">
            <div class="yoo-iconbox-in">
              <div class="yoo-iconbox-title">TOTAL TRAFFIC</div>
              <div class="yoo-iconbox-number">350,897</div>
              <div class="yoo-iconbox-chart">
                <div id="yooChart4-1"></div>
              </div>
              <div class="yoo-iconbox-footer"><span class="yoo-iconbox-percentage yoo-green-color"><ion-icon name="caret-up"></ion-icon>17%</span>Since last week</div>
              <div class="yoo-iconbox-icon"><ion-icon name="albums"></ion-icon></div>
            </div>
          </div>
          <div class="yoo-height-b30 yoo-height-lg-b30"></div>
        </div><!-- .col -->
        <div class="col-xl-3 col-sm-6">
		<div class="yoo-iconbox yoo-style1 yoo-type1 yoo-color2 yoo-border">
            <div class="yoo-iconbox-in">
              <div class="yoo-iconbox-title">NEW USERS</div>
              <div class="yoo-iconbox-number">5,508</div>
              <div class="yoo-iconbox-chart">
                <div id="yooChart4-2"></div>
              </div>
              <div class="yoo-iconbox-footer"><span class="yoo-iconbox-percentage yoo-red-color"><ion-icon name="caret-down"></ion-icon>5%</span>Since last week</div>
              <div class="yoo-iconbox-icon"><ion-icon name="people"></ion-icon></div>
            </div>
          </div>
          <div class="yoo-height-b30 yoo-height-lg-b30"></div>
        </div><!-- .col -->
        <div class="col-xl-3 col-sm-6">
          <div class="yoo-iconbox yoo-style1 yoo-type1 yoo-color2 yoo-border">
            <div class="yoo-iconbox-in">
              <div class="yoo-iconbox-title">PAGE VIEWS</div>
              <div class="yoo-iconbox-number">45,089</div>
              <div class="yoo-iconbox-chart">
                <div id="yooChart4-3"></div>
              </div>
              <div class="yoo-iconbox-footer"><span class="yoo-iconbox-percentage yoo-green-color"><ion-icon name="caret-up"></ion-icon>8%</span>Since last week</div>
              <div class="yoo-iconbox-icon"><ion-icon name="layers"></ion-icon></div>
            </div>
          </div>
          <div class="yoo-height-b30 yoo-height-lg-b30"></div>
        </div><!-- .col -->
        <div class="col-xl-3 col-sm-6">
          <div class="yoo-iconbox yoo-style1 yoo-type1 yoo-color2 yoo-border">
            <div class="yoo-iconbox-in">
              <div class="yoo-iconbox-title">Total Sell</div>
              <div class="yoo-iconbox-number">529</div>
              <div class="yoo-iconbox-chart">
                <div id="yooChart4-4"></div>
              </div>
              <div class="yoo-iconbox-footer"><span class="yoo-iconbox-percentage yoo-green-color"><ion-icon name="caret-up"></ion-icon>8%</span>Since last week</div>
              <div class="yoo-iconbox-icon"><ion-icon name="file-tray"></ion-icon></div>
            </div>
          </div>
          <div class="yoo-height-b30 yoo-height-lg-b30"></div>
        </div><!-- .col -->
      </div>
      <div class="row">
        <div class="col-lg-8">
          <div class="yoo-card yoo-style1">
            <div class="yoo-card-heading">
              <div class="yoo-card-heading-left">
                <h2 class="yoo-card-title"><span class="yoo-card-title-icon yoo-indigo-bg"><ion-icon name="cloudy"></ion-icon></span>ANALYTICS</h2>
              </div>
              <div class="yoo-card-heading-right">
                <ul class="nav nav-tabs">
                <li class="nav-item">
                    <a class="nav-link active" data-toggle="tab" href="#day">Day</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link active" data-toggle="tab" href="#AreaCharts">Area Charts</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" data-toggle="tab" href="#BarChart">Bar Chart</a>
                  </li>
                </ul>
              </div>
            </div>
            <div class="yoo-card-body">
              <div class="yoo-padd-lr-20">
                <div class="yoo-height-b20 yoo-height-lg-b20"></div>
                <div class="tab-content">
                  <div class="tab-pane fade show active" id="day">
                    <ul class="yoo-list-group yoo-style2 yoo-mp0">
                      <li>
                        <div class="yoo-card-meta yoo-style1">
                          <div class="yoo-card-meta-title yoo-blue-color yoo-font-semi-bold">Move</div>
                          <div class="yoo-card-meta-number">1,467 <span>kcal</span></div>
                          <div class="yoo-groth-percentage yoo-red-color yoo-font-semi-bold"><ion-icon name="caret-down"></ion-icon>12%</div>
                        </div>
                      </li>
                      <li>
                        <div class="yoo-card-meta yoo-style1">
                          <div class="yoo-card-meta-title yoo-light-blue-color yoo-font-semi-bold">Exercise</div>
                          <div class="yoo-card-meta-number">1,467 <span>kcal</span></div>
                          <div class="yoo-groth-percentage yoo-green-color yoo-font-semi-bold"><ion-icon name="caret-up"></ion-icon>16%</div>
                        </div>
                      </li>
                    </ul>
                    <div id="yooChart1"></div>
                    <div class="yoo-height-b20 yoo-height-lg-b20"></div>
                  </div>
                  <div class="tab-pane fade" id="AreaCharts">
                    <div id="yooChart4"></div>
                    <div class="yoo-height-b5 yoo-height-lg-b5"></div>
                  </div>
                  <div class="tab-pane fade" id="BarChart">
                    <div id="yooChart1-4"></div>
                    <div class="yoo-height-b20 yoo-height-lg-b20"></div>
                  </div>
                </div>
                <div class="yoo-height-b0 yoo-height-lg-b0"></div>
              </div>
            </div>
          </div><!-- .yoo-card -->
          <div class="yoo-height-b30 yoo-height-lg-b30"></div>
        </div><!-- .col -->
        <div class="col-lg-4">
          <div class="yoo-card yoo-style1">
            <div class="yoo-card-heading">
              <div class="yoo-card-heading-left">
                <h2 class="yoo-card-title"><span class="yoo-card-title-icon yoo-purple-bg"><ion-icon name="flask" role="img" class="md hydrated" aria-label="flask"></ion-icon></span>New Users</h2>
              </div>
            </div>
            <div class="yoo-card-body">
              <div class="yoo-padd-lr-20">
                <div class="yoo-height-b20 yoo-height-lg-b20"></div>
                <ul class="yoo-list-group yoo-style1 yoo-type1 yoo-mp0">
                  <li>
                    <div class="yoo-medias yoo-style1 yoo-type1">
                      <div class="yoo-media-img">
                        <div class="yoo-box-md yoo-radious10 yoo-img-box yoo-purple-box"><img src="<c:url value='/template/admin/assets/img/user/9.png' />" alt=""></div>
                      </div>
                      <div class="yoo-media-meta">
                        <div class="yoo-height-b5 yoo-height-lg-b5"></div>
                        <h2 class="yoo-media-title yoo-margin-bottom-0 yoo-margin-top-2">Deborah Clarke</h2>
                        <div class="yoo-media-subtitle">dc@gmail.com</div>
                      </div>
                      <span class="badge badge-success">SignUp</span>
                    </div>
                  </li>
                  <li>
                    <div class="yoo-medias yoo-style1 yoo-type1">
                      <div class="yoo-media-img">
                        <div class="yoo-box-md yoo-radious10 yoo-img-box yoo-purple-box"><img src="<c:url value='/template/admin/assets/img/user/10.png' />" alt=""></div>
                      </div>
                      <div class="yoo-media-meta">
                        <div class="yoo-height-b5 yoo-height-lg-b5"></div>
                        <h2 class="yoo-media-title yoo-margin-bottom-0 yoo-margin-top-2">Jay Bryant</h2>
                        <div class="yoo-media-subtitle">jb@gmail.com</div>
                      </div>
                      <span class="badge badge-success">SignUp</span>
                    </div>
                  </li>
                  <li>
                    <div class="yoo-medias yoo-style1 yoo-type1">
                      <div class="yoo-media-img">
                        <div class="yoo-box-md yoo-radious10 yoo-img-box yoo-purple-box"><img src="<c:url value='/template/admin/assets/img/user/11.png' />" alt=""></div>
                      </div>
                      <div class="yoo-media-meta">
                        <div class="yoo-height-b5 yoo-height-lg-b5"></div>
                        <h2 class="yoo-media-title yoo-margin-bottom-0 yoo-margin-top-2">Rita Parks</h2>
                        <div class="yoo-media-subtitle">rp@gmail.com</div>
                      </div>
                      <span class="badge badge-primary">Subscribe</span>
                    </div>
                  </li>
                  <li>
                    <div class="yoo-medias yoo-style1 yoo-type1">
                      <div class="yoo-media-img">
                        <div class="yoo-box-md yoo-radious10 yoo-img-box yoo-purple-box"><img src="<c:url value='/template/admin/assets/img/user/12.png' />" alt=""></div>
                      </div>
                      <div class="yoo-media-meta">
                        <div class="yoo-height-b5 yoo-height-lg-b5"></div>
                        <h2 class="yoo-media-title yoo-margin-bottom-0 yoo-margin-top-2">Eula Bailey</h2>
                        <div class="yoo-media-subtitle">eb@gmail.com</div>
                      </div>
                      <span class="badge badge-success">SignUp</span>
                    </div>
                  </li>
                  <li>
                    <div class="yoo-medias yoo-style1 yoo-type1">
                      <div class="yoo-media-img">
                        <div class="yoo-box-md yoo-radious10 yoo-img-box yoo-purple-box"><img src="<c:url value='/template/admin/assets/img/user/13.png'/>" alt=""></div>
                      </div>
                      <div class="yoo-media-meta">
                        <div class="yoo-height-b5 yoo-height-lg-b5"></div>
                        <h2 class="yoo-media-title yoo-margin-bottom-0 yoo-margin-top-2">Darin Osborne</h2>
                        <div class="yoo-media-subtitle">do@gmail.com</div>
                      </div>
                      <span class="badge badge-primary">Subscribe</span>
                    </div>
                  </li>
                  <li>
                    <div class="yoo-medias yoo-style1 yoo-type1">
                      <div class="yoo-media-img">
                        <div class="yoo-box-md yoo-radious10 yoo-img-box yoo-purple-box"><img src="<c:url value='/template/admin/assets/img/user/14.png'/>" alt=""></div>
                      </div>
                      <div class="yoo-media-meta">
                        <div class="yoo-height-b5 yoo-height-lg-b5"></div>
                        <h2 class="yoo-media-title yoo-margin-bottom-0 yoo-margin-top-2">Jay Bryant</h2>
                        <div class="yoo-media-subtitle">jb@gmail.com</div>
                      </div>
                      <span class="badge badge-success">SignUp</span>
                    </div>
                  </li>
                </ul>
                <div class="yoo-height-b20 yoo-height-lg-b20"></div>
              </div>
            </div>
          </div><!-- .yoo-card -->
          <div class="yoo-height-b30 yoo-height-lg-b30"></div>
        </div> <!-- .col -->
        <div class="col-lg-12">
          <div class="yoo-card yoo-style1">
            <div class="yoo-card-heading">
              <div class="yoo-card-heading-left">
                <h2 class="yoo-card-title"><span class="yoo-card-title-icon yoo-blue-bg"><ion-icon name="browsers"></ion-icon></span>DATA TABLE</h2>
              </div>
            </div>
            <div class="yoo-card-body">
              <div class="">
                <div>
                  <div class="yoo-height-b15 yoo-height-lg-b15"></div>
                  <div class="yoo-table-heading yoo-style1 yoo-padd-lr-20">
                    <div class="yoo-table-heading-left">
                      <form action="#" class="yoo-search yoo-style1 yoo-search-md">
                        <input type="text" placeholder="Search..." class="yoo-search-input">
                        <button class="yoo-search-submit"><ion-icon name="search"></ion-icon></button>
                      </form>
                    </div>
                    <div class="yoo-table-heading-right">
                      <ul class="yoo-table-heading-btn-list yoo-mp0">
                        <li>
                          <div class="yoo-page-number">15 of 31</div>
                        </li>
                        <li>
                          <nav>
                            <ul class="pagination">
                              <li class="page-item active">
                                <a class="page-link" href="#">
                                  <span><ion-icon name="chevron-back"></ion-icon></span>
                                  <span class="sr-only">Previous</span>
                                </a>
                              </li>
                              <li class="page-item">
                                <a class="page-link" href="#">
                                  <span><ion-icon name="chevron-forward"></ion-icon></span>
                                  <span class="sr-only">Next</span>
                                </a>
                              </li>
                            </ul>
                          </nav>
                        </li>
                        <li>
                          <button class="btn btn-outline-light btn-sm dropdown-toggle" type="button" data-toggle="dropdown" data-ripple="ripple" data-ripple-color="#666">Small button</button>
                          <div class="dropdown-menu">
                            <a class="dropdown-item" href="#">Action</a>
                            <a class="dropdown-item" href="#">Another action</a>
                            <a class="dropdown-item" href="#">Something else here</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">Separated link</a>
                          </div>
                        </li>
                        <li>
                          <button type="button" class="btn btn-primary btn-sm" data-ripple="ripple" data-ripple-color="#fff">Create New</button>
                        </li>
                      </ul>
                    </div>
                  </div>
                  <div class="yoo-height-b15 yoo-height-lg-b15"></div>
                  <div class="yoo-table yoo-style1 yoo-type2">
                    <table class="table table-bordered">
                      <thead>
                        <tr>
                          <th>
                            <div class="yoo-check-mark-all">
                              <span class="yoo-first"></span>
                              <span class="yoo-last"></span>
                            </div>
                          </th>
                          <th>Campaign Name
                            <button class="yoo-table-info-btn yoo-style1" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><ion-icon name="information-circle"></ion-icon></button>
                            <div class="dropdown-menu yoo-table-info-text">
                              Is it more important for something to be subscriber-defined or to be compelling? Our technology takes the best features of XForms and OWL.
                            </div>
                          </th>
                          <th>Single</th>
                          <th class="yoo-arrow-wrap">Double</th>
                          <th>Completion</th>
                          <th>Users</th>
                          <th>Tag</th>
                          <th>Action</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td>
                            <div class="yoo-check-mark"></div>
                          </td>
                          <td>
                            <div class="yoo-table-medias yoo-style1">
                              <a href="#" class="yoo-media-img">
                                <div class="yoo-box-sm yoo-radious5">
                                  <img src="<c:url value='/template/admin/assets/img/nav-icon/gmail.png' />" alt="">
                                </div>
                              </a>
                              <h2 class="yoo-media-title yoo-margin-bottom-0"><a href="#">Instagram</a></h2>
                            </div>
                          </td>
                          <td><span class="yoo-base-color1">$60</span></td>
                          <td>
                            <div class="yoo-line-1-2 yoo-base-color1">$70</div>
                            <div class="yoo-font-size-13 yoo-base-color2">Multiple Value</div>
                          </td>
                          <td>
                            <div class="yoo-progress-wrap yoo-style3 yoo-type1">
                              <div class="yoo-progress-head">
                                <div class="yoo-progressbar-percentage">65%</div>
                              </div>
                              <div class="progress">
                                <div class="progress-bar yoo-gray-bg" role="progressbar" style="width: 65%" aria-valuenow="65" aria-valuemin="0" aria-valuemax="100"></div>
                              </div>
                            </div>
                          </td>
                          <td>
                            <ul class="yoo-users yoo-style1 yoo-mp0">
                              <li><a href="#"><img src="<c:url value='/template/admin/assets/img/user/7.jpg' />" alt="2"></a></li>
                              <li><a href="#"><img src="<c:url value='/template/admin/assets/img/user/2.jpg' />" alt="4"></a></li>
                            </ul>
                          </td>
                          <td><span class="badge badge-success">Paid</span></td>
                          <td>
                            <button class="yoo-table-action-btn yoo-style1" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><ion-icon name="ellipsis-horizontal"></ion-icon></button>
                            <div class="dropdown-menu">
                              <a class="dropdown-item" href="#">View</a>
                              <a class="dropdown-item" href="#">Edit</a>
                              <a class="dropdown-item" href="#">Delete</a>
                              <div class="dropdown-divider"></div>
                              <a class="dropdown-item" href="#">Export</a>
                            </div>
                          </td>
                        </tr>
                        <tr>
                          <td>
                            <div class="yoo-check-mark"></div>
                          </td>
                          <td>
                            <div class="yoo-table-medias yoo-style1">
                              <a href="#" class="yoo-media-img">
                                <div class="yoo-box-sm yoo-radious5">
                                  <img src="<c:url value='/template/admin/assets/img/nav-icon/hangout.png' />" alt="">
                                </div>
                              </a>
                              <h2 class="yoo-media-title yoo-margin-bottom-0"><a href="#">Google Maps</a></h2>
                            </div>
                          </td>
                          <td><span class="yoo-base-color1">$60</span></td>
                          <td>
                            <div class="yoo-line-1-2 yoo-base-color1">$60</div>
                            <div class="yoo-font-size-13 yoo-base-color2">Multiple Value</div>
                          </td>
                          <td>
                            <div class="yoo-progress-wrap yoo-style3 yoo-type1">
                              <div class="yoo-progress-head">
                                <div class="yoo-progressbar-percentage">85%</div>
                              </div>
                              <div class="progress">
                                <div class="progress-bar yoo-gray-bg" role="progressbar" style="width: 85%" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100"></div>
                              </div>
                            </div>
                          </td>
                          <td>
                            <ul class="yoo-users yoo-style1 yoo-mp0">
                              <li><a href="#"><img src="<c:url value='/template/admin/assets/img/user/1.jpg'/>" alt="1"></a></li>
                              <li><a href="#"><img src="<c:url value='/template/admin/assets/img/user/7.jpg' />" alt="2"></a></li>
                              <li><a href="#"><img src="<c:url value='/template/admin/assets/img/user/5.jpg' />" alt="4"></a></li>
                            </ul>
                          </td>
                          <td><span class="badge badge-success">Paid</span></td>
                          <td>
                            <button class="yoo-table-action-btn yoo-style1" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><ion-icon name="ellipsis-horizontal"></ion-icon></button>
                            <div class="dropdown-menu">
                              <a class="dropdown-item" href="#">View</a>
                              <a class="dropdown-item" href="#">Edit</a>
                              <a class="dropdown-item" href="#">Delete</a>
                              <div class="dropdown-divider"></div>
                              <a class="dropdown-item" href="#">Export</a>
                            </div>
                          </td>
                        </tr>
                        <tr>
                          <td>
                            <div class="yoo-check-mark"></div>
                          </td>
                          <td>
                            <div class="yoo-table-medias yoo-style1">
                              <a href="#" class="yoo-media-img">
                                <div class="yoo-box-sm yoo-radious5">
                                  <img src="<c:url value='/template/admin/assets/img/nav-icon/google.png' />" alt="">
                                </div>
                              </a>
                              <h2 class="yoo-media-title yoo-margin-bottom-0"><a href="#">Books</a></h2>
                            </div>
                          </td>
                          <td><span class="yoo-base-color1">$80</span></td>
                          <td>
                            <div class="yoo-line-1-2 yoo-base-color1">$90</div>
                            <div class="yoo-font-size-13 yoo-base-color2">Multiple Value</div>
                          </td>
                          <td>
                            <div class="yoo-progress-wrap yoo-style3 yoo-type1">
                              <div class="yoo-progress-head">
                                <div class="yoo-progressbar-percentage">95%</div>
                              </div>
                              <div class="progress">
                                <div class="progress-bar yoo-gray-bg" role="progressbar" style="width: 95%" aria-valuenow="95" aria-valuemin="0" aria-valuemax="100"></div>
                              </div>
                            </div>
                          </td>
                          <td>
                            <ul class="yoo-users yoo-style1 yoo-mp0">
                              <li><a href="#"><img src="<c:url value='/template/admin/assets/img/user/4.jpg' />" alt="1"></a></li>
                            </ul>
                          </td>
                          <td><span class="badge badge-danger">Due</span></td>
                          <td>
                            <button class="yoo-table-action-btn yoo-style1" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><ion-icon name="ellipsis-horizontal"></ion-icon></button>
                            <div class="dropdown-menu">
                              <a class="dropdown-item" href="#">View</a>
                              <a class="dropdown-item" href="#">Edit</a>
                              <a class="dropdown-item" href="#">Delete</a>
                              <div class="dropdown-divider"></div>
                              <a class="dropdown-item" href="#">Export</a>
                            </div>
                          </td>
                        </tr>
                        <tr>
                          <td>
                            <div class="yoo-check-mark"></div>
                          </td>
                          <td>
                            <div class="yoo-table-medias yoo-style1">
                              <a href="#" class="yoo-media-img">
                                <div class="yoo-box-sm yoo-radious5">
                                  <img src="<c:url value='/template/admin/assets/img/nav-icon/gmail.png' />" alt="">
                                </div>
                              </a>
                              <h2 class="yoo-media-title yoo-margin-bottom-0"><a href="#">Gmail</a></h2>
                            </div>
                          </td>
                          <td><span class="yoo-base-color1">$70</span></td>
                          <td>
                            <div class="yoo-line-1-2 yoo-base-color1">$50</div>
                            <div class="yoo-font-size-13 yoo-base-color2">Multiple Value</div>
                          </td>
                          <td>
                            <div class="yoo-progress-wrap yoo-style3 yoo-type1">
                              <div class="yoo-progress-head">
                                <div class="yoo-progressbar-percentage">65%</div>
                              </div>
                              <div class="progress">
                                <div class="progress-bar yoo-gray-bg" role="progressbar" style="width: 65%" aria-valuenow="65" aria-valuemin="0" aria-valuemax="100"></div>
                              </div>
                            </div>
                          </td>
                          <td>
                            <ul class="yoo-users yoo-style1 yoo-mp0">
                              <li><a href="#"><img src="<c:url value='/template/admin/assets/img/user/4.jpg' />" alt="1"></a></li>
                              <li><a href="#"><img src="<c:url value='/template/admin/assets/img/user/7.jpg' />" alt="2"></a></li>
                              <li><a href="#"><img src="<c:url value='/template/admin/assets/img/user/8.jpg' />" alt="4"></a></li>
                            </ul>
                          </td>
                          <td><span class="badge badge-danger">Due</span></td>
                          <td>
                            <button class="yoo-table-action-btn yoo-style1" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><ion-icon name="ellipsis-horizontal"></ion-icon></button>
                            <div class="dropdown-menu">
                              <a class="dropdown-item" href="#">View</a>
                              <a class="dropdown-item" href="#">Edit</a>
                              <a class="dropdown-item" href="#">Delete</a>
                              <div class="dropdown-divider"></div>
                              <a class="dropdown-item" href="#">Export</a>
                            </div>
                          </td>
                        </tr>
                        <tr>
                          <td>
                            <div class="yoo-check-mark"></div>
                          </td>
                          <td>
                            <div class="yoo-table-medias yoo-style1">
                              <a href="#" class="yoo-media-img">
                                <div class="yoo-box-sm yoo-radious5">
                                  <img src="<c:url value='/template/admin/assets/img/nav-icon/message.png' />" alt="">
                                </div>
                              </a>
                              <h2 class="yoo-media-title yoo-margin-bottom-0"><a href="#">Safari</a></h2>
                            </div>
                          </td>
                          <td><span class="yoo-base-color1">$70</span></td>
                          <td>
                            <div class="yoo-line-1-2 yoo-base-color1">$60</div>
                            <div class="yoo-font-size-13 yoo-base-color2">Multiple Value</div>
                          </td>
                          <td>
                            <div class="yoo-progress-wrap yoo-style3 yoo-type1">
                              <div class="yoo-progress-head">
                                <div class="yoo-progressbar-percentage">80%</div>
                              </div>
                              <div class="progress">
                                <div class="progress-bar yoo-gray-bg" role="progressbar" style="width: 80%" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
                              </div>
                            </div>
                          </td>
                          <td>
                            <ul class="yoo-users yoo-style1 yoo-mp0">
                              <li><a href="#"><img src="<c:url value='/template/admin/assets/img/user/5.jpg' />" alt="2"></a></li>
                            </ul>
                          </td>
                          <td><span class="badge badge-success">Paid</span></td>
                          <td>
                            <button class="yoo-table-action-btn yoo-style1" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><ion-icon name="ellipsis-horizontal"></ion-icon></button>
                            <div class="dropdown-menu">
                              <a class="dropdown-item" href="#">View</a>
                              <a class="dropdown-item" href="#">Edit</a>
                              <a class="dropdown-item" href="#">Delete</a>
                              <div class="dropdown-divider"></div>
                              <a class="dropdown-item" href="#">Export</a>
                            </div>
                          </td>
                        </tr>
                        <tr>
                          <td>
                            <div class="yoo-check-mark"></div>
                          </td>
                          <td>
                            <div class="yoo-table-medias yoo-style1">
                              <a href="#" class="yoo-media-img">
                                <div class="yoo-box-sm yoo-radious5">
                                  <img src="<c:url value='/template/admin/assets/img/nav-icon/hangout.png' />" alt="">
                                </div>
                              </a>
                              <h2 class="yoo-media-title yoo-margin-bottom-0"><a href="#">Google Maps</a></h2>
                            </div>
                          </td>
                          <td><span class="yoo-base-color1">$120</span></td>
                          <td>
                            <div class="yoo-line-1-2 yoo-base-color1">$100</div>
                            <div class="yoo-font-size-13 yoo-base-color2">Multiple Value</div>
                          </td>
                          <td>
                            <div class="yoo-progress-wrap yoo-style3 yoo-type1">
                              <div class="yoo-progress-head">
                                <div class="yoo-progressbar-percentage">60%</div>
                              </div>
                              <div class="progress">
                                <div class="progress-bar yoo-gray-bg" role="progressbar" style="width: 60%" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div>
                              </div>
                            </div>
                          </td>
                          <td>
                            <ul class="yoo-users yoo-style1 yoo-mp0">
                              <li><a href="#"><img src="<c:url value='/template/admin/assets/img/user/1.jpg' />" alt="1"></a></li>
                              <li><a href="#"><img src="<c:url value='/template/admin/assets/img/user/2.jpg' />" alt="2"></a></li>
                            </ul>
                          </td>
                          <td><span class="badge badge-success">Paid</span></td>
                          <td>
                            <button class="yoo-table-action-btn yoo-style1" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><ion-icon name="ellipsis-horizontal"></ion-icon></button>
                            <div class="dropdown-menu">
                              <a class="dropdown-item" href="#">View</a>
                              <a class="dropdown-item" href="#">Edit</a>
                              <a class="dropdown-item" href="#">Delete</a>
                              <div class="dropdown-divider"></div>
                              <a class="dropdown-item" href="#">Export</a>
                            </div>
                          </td>
                        </tr>
                        <tr>
                          <td>
                            <div class="yoo-check-mark"></div>
                          </td>
                          <td>
                            <div class="yoo-table-medias yoo-style1">
                              <a href="#" class="yoo-media-img">
                                <div class="yoo-box-sm yoo-radious5">
                                  <img src="<c:url value='/template/admin/assets/img/nav-icon/mail.png'/>" alt="">
                                </div>
                              </a>
                              <h2 class="yoo-media-title yoo-margin-bottom-0"><a href="#">Mail</a></h2>
                            </div>
                          </td>
                          <td><span class="yoo-base-color1">$80</span></td>
                          <td>
                            <div class="yoo-line-1-2 yoo-base-color1">$90</div>
                            <div class="yoo-font-size-13 yoo-base-color2">Multiple Value</div>
                          </td>
                          <td>
                            <div class="yoo-progress-wrap yoo-style3 yoo-type1">
                              <div class="yoo-progress-head">
                                <div class="yoo-progressbar-percentage">95%</div>
                              </div>
                              <div class="progress">
                                <div class="progress-bar yoo-gray-bg" role="progressbar" style="width: 95%" aria-valuenow="95" aria-valuemin="0" aria-valuemax="100"></div>
                              </div>
                            </div>
                          </td>
                          <td>
                            <ul class="yoo-users yoo-style1 yoo-mp0">
                              <li><a href="#"><img src="<c:url value='/template/admin/assets/img/user/2.jpg' />" alt="1"></a></li>
                            </ul>
                          </td>
                          <td><span class="badge badge-danger">Due</span></td>
                          <td>
                            <button class="yoo-table-action-btn yoo-style1" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><ion-icon name="ellipsis-horizontal"></ion-icon></button>
                            <div class="dropdown-menu">
                              <a class="dropdown-item" href="#">View</a>
                              <a class="dropdown-item" href="#">Edit</a>
                              <a class="dropdown-item" href="#">Delete</a>
                              <div class="dropdown-divider"></div>
                              <a class="dropdown-item" href="#">Export</a>
                            </div>
                          </td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>
          </div><!-- .yoo-card -->
          <div class="yoo-height-b30 yoo-height-lg-b30"></div>
        </div><!-- .col -->

        <div class="col-lg-4">
          <div class="yoo-card yoo-style1">
            <div class="yoo-card-heading">
              <div class="yoo-card-heading-left">
                <h2 class="yoo-card-title"><span class="yoo-card-title-icon yoo-light-blue-bg"><ion-icon name="copy"></ion-icon></span>Sessions by Device</h2>
              </div>
            </div>
            <div class="yoo-card-body">
              <div class="yoo-padd-lr-20">
                <div id="yooChart2"></div>
              </div>
            </div>
          </div><!-- .yoo-card -->
          <div class="yoo-height-b30 yoo-height-lg-b30"></div>
        </div><!-- .col -->
         <div class="col-lg-4">
          <div class="yoo-card yoo-style1">
            <div class="yoo-card-heading">
              <div class="yoo-card-heading-left">
                <h2 class="yoo-card-title"><span class="yoo-card-title-icon yoo-red-bg"><ion-icon name="person-circle"></ion-icon></span>Active Users</h2>
              </div>
            </div>
            <div class="yoo-card-body">
              <div class="yoo-padd-lr-15">
                <div id="yooChart3"></div>
                <div class="yoo-height-b20 yoo-height-lg-b20"></div>
              </div>
            </div>
          </div><!-- .yoo-card -->
          <div class="yoo-height-b30 yoo-height-lg-b30"></div>
        </div><!-- .col -->
        <div class="col-lg-4">
          <div class="yoo-card yoo-style1">
            <div class="yoo-card-heading">
              <div class="yoo-card-heading-left">
                <h2 class="yoo-card-title"><span class="yoo-card-title-icon yoo-orange-bg"><ion-icon name="contrast"></ion-icon></span>INVENTORY</h2>
              </div>
            </div>
            <div class="yoo-card-body">
              <div class="yoo-padd-lr-20">
                <div class="yoo-height-b20 yoo-height-lg-b20"></div>
                <ul class="yoo-list-group yoo-style1 yoo-type1 yoo-mp0">
                  <li>
                    <div class="yoo-medias yoo-style1 yoo-type1">
                      <div class="yoo-media-img">
                        <div class="yoo-box-md yoo-radious10 yoo-img-box yoo-purple-box"><ion-icon name="file-tray-full"></ion-icon></div>
                      </div>
                      <div class="yoo-media-meta">
                        <div class="yoo-progressbar-wrap yoo-style2">
                          <div class="yoo-progressbar-title">PRODUCTS</div>
                          <div class="yoo-progressbar-number">7,300</div>
                          <div class="yoo-progressbar-out"><div class="yoo-progressbar" style="width: 20%"></div></div>
                        </div>
                        <div class="yoo-height-b5 yoo-height-lg-b5"></div>
                      </div>
                      <div class="yoo-groth-percentage yoo-green-color yoo-font-semi-bold">
                        <ion-icon name="caret-up"></ion-icon>17%
                      </div>
                    </div>
                  </li>
                  <li>
                    <div class="yoo-medias yoo-style1 yoo-type1">
                      <div class="yoo-media-img">
                        <div class="yoo-box-md yoo-radious10 yoo-img-box yoo-red-box"><ion-icon name="card"></ion-icon></div>
                      </div>
                      <div class="yoo-media-meta">
                        <div class="yoo-progressbar-wrap yoo-style2">
                          <div class="yoo-progressbar-title">SALES</div>
                          <div class="yoo-progressbar-number">8,560</div>
                          <div class="yoo-progressbar-out"><div class="yoo-progressbar" style="width: 50%"></div></div>
                        </div>
                        <div class="yoo-height-b5 yoo-height-lg-b5"></div>
                      </div>
                      <div class="yoo-groth-percentage yoo-red-color yoo-font-semi-bold">
                        <ion-icon name="caret-down"></ion-icon>12%
                      </div>
                    </div>
                  </li>
                  <li>
                    <div class="yoo-medias yoo-style1 yoo-type1">
                      <div class="yoo-media-img">
                        <div class="yoo-box-md yoo-radious10 yoo-img-box yoo-indigo-box"><ion-icon name="stats-chart"></ion-icon></div>
                      </div>
                      <div class="yoo-media-meta">
                        <div class="yoo-progressbar-wrap yoo-style2">
                          <div class="yoo-progressbar-title">Conversion</div>
                          <div class="yoo-progressbar-number">10,500</div>
                          <div class="yoo-progressbar-out"><div class="yoo-progressbar" style="width: 70%"></div></div>
                        </div>
                        <div class="yoo-height-b5 yoo-height-lg-b5"></div>
                      </div>
                      <div class="yoo-groth-percentage yoo-red-color yoo-font-semi-bold">
                        <ion-icon name="caret-down"></ion-icon>10%
                      </div>
                    </div>
                  </li>
                  <li>
                    <div class="yoo-medias yoo-style1 yoo-type1">
                      <div class="yoo-media-img">
                        <div class="yoo-box-md yoo-radious10 yoo-img-box yoo-light-blue-box"><ion-icon name="cloud"></ion-icon></div>
                      </div>
                      <div class="yoo-media-meta">
                        <div class="yoo-progressbar-wrap yoo-style2">
                          <div class="yoo-progressbar-title">LIKES</div>
                          <div class="yoo-progressbar-number">9,900</div>
                          <div class="yoo-progressbar-out"><div class="yoo-progressbar" style="width: 85%"></div></div>
                        </div>
                        <div class="yoo-height-b5 yoo-height-lg-b5"></div>
                      </div>
                      <div class="yoo-groth-percentage yoo-green-color yoo-font-semi-bold">
                        <ion-icon name="caret-up"></ion-icon>25%
                      </div>
                    </div>
                  </li>
                  <li>
                    <div class="yoo-medias yoo-style1 yoo-type1">
                      <div class="yoo-media-img">
                        <div class="yoo-box-md yoo-radious10 yoo-img-box yoo-green-box"><ion-icon name="pie-chart"></ion-icon></div>
                      </div>
                      <div class="yoo-media-meta">
                        <div class="yoo-progressbar-wrap yoo-style2">
                          <div class="yoo-progressbar-title">COST PER SALE</div>
                          <div class="yoo-progressbar-number">150</div>
                          <div class="yoo-progressbar-out"><div class="yoo-progressbar" style="width: 75%"></div></div>
                        </div>
                        <div class="yoo-height-b5 yoo-height-lg-b5"></div>
                      </div>
                      <div class="yoo-groth-percentage yoo-green-color yoo-font-semi-bold">
                        <ion-icon name="caret-up"></ion-icon>05%
                      </div>
                    </div>
                  </li>
                </ul>
                <div class="yoo-height-b20 yoo-height-lg-b20"></div>
              </div>
            </div>
          </div><!-- .yoo-card -->
          <div class="yoo-height-b30 yoo-height-lg-b30"></div>
        </div><!-- .col -->
        <div class="col-lg-4">
          <div class="yoo-card yoo-style1">
            <div class="yoo-card-heading">
              <div class="yoo-card-heading-left">
                <h2 class="yoo-card-title"><span class="yoo-card-title-icon yoo-purple-bg"><ion-icon name="beer"></ion-icon></span>Employee Performance</h2>
              </div>
            </div>
            <div class="yoo-card-body">
              <div class="yoo-padd-lr-20">
                <div class="yoo-performance-chart">
                  <div id="yooChart7"></div>
                </div>
              </div>
            </div>
          </div><!-- .yoo-card -->
          <div class="yoo-height-b30 yoo-height-lg-b30"></div>
        </div><!-- .col -->
        <div class="col-lg-8">
          <div class="yoo-card yoo-style1">
            <div class="yoo-card-heading">
              <div class="yoo-card-heading-left">
                <h2 class="yoo-card-title"><span class="yoo-card-title-icon yoo-indigo-bg"><ion-icon name="basketball"></ion-icon></span>Combination Chart</h2>
              </div>
            </div>
            <div class="yoo-card-body">
              <div class="yoo-padd-lr-20">
                <div id="yooChart9"></div>
              </div>
            </div>
          </div><!-- .yoo-card -->
          <div class="yoo-height-b30 yoo-height-lg-b30"></div>
        </div><!-- .col -->
        <div class="col-lg-4">
          <div class="yoo-card yoo-style1">
            <div class="yoo-card-heading">
              <div class="yoo-card-heading-left">
                <h2 class="yoo-card-title"><span class="yoo-card-title-icon yoo-light-blue-bg"><ion-icon name="server"></ion-icon></span>Stacked Bar Chart</h2>
              </div>
            </div>
            <div class="yoo-card-body">
              <div class="yoo-height-b10 yoo-height-lg-b10"></div>
              <div class="yoo-padd-lr-20">
                <div id="yooChart8"></div>
              </div>
              <div class="yoo-height-b5 yoo-height-lg-b5"></div>
            </div>
          </div><!-- .yoo-card -->
          <div class="yoo-height-b30 yoo-height-lg-b30"></div>
        </div><!-- .col -->
        <div class="col-lg-8">
          <div class="yoo-card yoo-style1">
            <div class="yoo-card-heading">
              <div class="yoo-card-heading-left">
                <h2 class="yoo-card-title"><span class="yoo-card-title-icon yoo-gray-bg"><ion-icon name="color-filter"></ion-icon></span>Timeline Charts</h2>
              </div>
            </div>
            <div class="yoo-card-body">
              <div class="yoo-padd-lr-20">
                <div id="yooChart10"></div>
              </div>
            </div>
          </div><!-- .yoo-card -->
          <div class="yoo-height-b30 yoo-height-lg-b30"></div>
        </div><!-- .col -->
      </div>
    </div>