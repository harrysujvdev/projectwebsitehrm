<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@include file="/common/taglib.jsp"%>
<security:authorize access="isAnonymous()">
	<c:redirect url="/dang-nhap?message=notlogin" />
</security:authorize>
<div class="yoo-chart-container">
    <div class="yoo-people-toggle-btn"><ion-icon name="arrow-back-outline"></ion-icon></div>
    <div class="yoo-messenger-sidebar">
      <div class="yoo-messenger-sidebar-in" data-scrollbar>
        <div class="yoo-email-user-wrap">
          <div class="yoo-user yoo-style2">
            <div class="yoo-user-img"><img src="<c:url value="/template/admin/assets/img/weebfy-logo.png"/>" alt=""></div>
            <div class="yoo-user-info">
              <h3 class="yoo-user-name">ThemeBubble</h3>
              <div class="yoo-email-online-status">
                <span class="yoo-online-status yoo-live"></span> <!-- if need offline just remove class .yoo-live -->
                Online
              </div>
            </div>
          </div>
        </div>
        <div class="yoo-sidebar-nav">
          <div class="yoo-sidebar-nav-title">
            <span class="yoo-sidebar-nav-title-text">Categories</span>
            <span class="yoo-sidebar-nav-title-dotline"><ion-icon name="ellipsis-horizontal"></ion-icon></span>
          </div>
          <div class="yoo-search-wrap">
            <form action="#" class="yoo-search yoo-style1 yoo-search-md">
              <input type="text" placeholder="Search..." class="yoo-search-input">
              <button class="yoo-search-submit"><ion-icon name="search"></ion-icon></button>
            </form>
          </div>
          <ul class="yoo-user-list yoo-mp0">
            <li class="active"> <!-- if need active of this list items, add active class -->
              <a href="#" class="yoo-user yoo-style1">
                <div class="yoo-user-img">
                  <img src="<c:url value="/template/admin/assets/img/user/1.jpg"/>" alt="msg1">
                  <span class="yoo-online-status yoo-live"></span>
                </div>
                <div class="yoo-user-info">
                  <h3 class="yoo-user-name">Unread Text <span class="yoo-nav-label">2</span></h3>
                  <div class="yoo-user-text">Hello everyone, anyone here?o</div>
                  <span class="yoo-user-time">May 7</span>
                </div>
              </a>
            </li>
            <li>
              <a href="#" class="yoo-user yoo-style1">
                <div class="yoo-user-img">
                  <img src="<c:url value="/template/admin/assets/img/user/2.jpg"/>" alt="">
                  <span class="yoo-online-status yoo-live"></span>
                </div>
                <div class="yoo-user-info">
                  <h3 class="yoo-user-name">Marthaa</h3>
                  <div class="yoo-user-text">Really excited to have...</div>
                </div>
              </a>
            </li>
            <li>
              <a href="#" class="yoo-user yoo-style1">
                <div class="yoo-user-img">
                  <img src="<c:url value="/template/admin/assets/img/user/3.jpg"/>" alt="">
                  <span class="yoo-online-status"></span>
                </div>
                <div class="yoo-user-info">
                  <h3 class="yoo-user-name">Alex Costa</h3>
                  <div class="yoo-user-text">Hello everyone, anyone here?</div>
                </div>
              </a>
            </li>
            <li>
              <a href="#" class="yoo-user yoo-style1">
                <div class="yoo-user-img">
                  <img src="<c:url value="/template/admin/assets/img/user/4.jpg"/>" alt="msg1">
                  <span class="yoo-online-status yoo-live"></span>
                </div>
                <div class="yoo-user-info">
                  <h3 class="yoo-user-name">Normal Hover</h3>
                  <div class="yoo-user-text">Hello everyone, anyone here?</div>
                </div>
              </a>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <div class="yoo-content yoo-style2 yoo-messenger-body" style="margin-top: -30px;">
      <div class="yoo-chat-heading">
        <div class="yoo-chat-heading-left">
          <div class="yoo-user yoo-style2">
          <div class="yoo-user-img">
            <img src="<c:url value="/template/admin/assets/img/weebfy-logo.png"/>" alt="">
            <span class="yoo-online-status yoo-live"></span> <!-- if need offline just remove class .yoo-live -->
          </div>
          <div class="yoo-user-info">
            <h3 class="yoo-user-name">Jessica Campbell</h3>
            <div class="yoo-user-time">10 mins ago</div>
          </div>
        </div>
        </div>
        <div class="yoo-chat-heading-right">
          <ul class="yoo-icon-group yoo-style1 yoo-mp0">
            <li>
              <a href="#" class="yoo-icon-group-icon"><ion-icon name="call"></ion-icon></a>
            </li>
            <li>
              <a href="#" class="yoo-icon-group-icon"><ion-icon name="videocam"></ion-icon></a>
            </li>
            <li>
              <a href="#" class="yoo-icon-group-icon yoo-chat-info-toggle-btn"><ion-icon name="help-circle"></ion-icon></a>
            </li>
            <li>
              <a href="#" class="yoo-icon-group-icon"><ion-icon name="ellipsis-vertical"></ion-icon></a>
            </li>
          </ul>
        </div>
      </div>
      <div class="yoo-chat-container yoo-active">
        <div class="yoo-chatbox-wrap">
          <div class="yoo-chat-box yoo-reverse-scroll yoo-chatbox-for-messaenger">
            <div class="yoo-chat-date"><span>Friday 26 Apr 7.40 AM</span></div>
            <div class="yoo-user yoo-style2">
              <div class="yoo-user-img"><img src="<c:url value="/template/admin/assets/img/user/7.jpg"/>" alt=""></div>
              <div class="yoo-user-chat-text-group">
                <div class="yoo-user-chat-text">
                  <div class="yoo-user-chat-text-in">
                    Hello there. Thanks for the follow. Did you notice, that I am an egg? A talking egg? Damn!
                    <div class="yoo-user-chat-text-seting">
                      <ul class="yoo-icon-group yoo-style1 yoo-mp0">
                        <li><a href="#" class="yoo-icon-group-icon"><ion-icon name="happy"></ion-icon></a></li>
                        <li><a href="#" class="yoo-icon-group-icon"><ion-icon name="arrow-redo"></ion-icon></a></li>
                        <li><a href="#" class="yoo-icon-group-icon"><ion-icon name="ellipsis-horizontal"></ion-icon></a></li>
                      </ul>
                    </div>
                  </div>
                </div>
                <div class="yoo-user-chat-text">
                  <div class="yoo-user-chat-text-in">
                    Your work looks great, btw!
                    <div class="yoo-user-chat-text-seting">
                      <ul class="yoo-icon-group yoo-style1 yoo-mp0">
                        <li><a href="#" class="yoo-icon-group-icon"><ion-icon name="happy"></ion-icon></a></li>
                        <li><a href="#" class="yoo-icon-group-icon"><ion-icon name="arrow-redo"></ion-icon></a></li>
                        <li><a href="#" class="yoo-icon-group-icon"><ion-icon name="ellipsis-horizontal"></ion-icon></a></li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
            </div><!-- .yoo-user -->
            <div class="yoo-user yoo-style2 yoo-right-side">
              <div class="yoo-user-chat-text-group">
                <div class="yoo-user-chat-text">
                  <div class="yoo-user-chat-text-in">
                    Thanks mate! Feel way better now. Oh, and guys, these messages will be removed once your add your own. Yeah that's crazy, but people can change their own picture and build their own Twitter conversation with this generator, so it doesn't matter that you are an egg...
                    <div class="yoo-user-chat-text-seting">
                      <ul class="yoo-icon-group yoo-style1 yoo-mp0">
                        <li><a href="#" class="yoo-icon-group-icon"><ion-icon name="happy"></ion-icon></a></li>
                        <li><a href="#" class="yoo-icon-group-icon"><ion-icon name="arrow-redo"></ion-icon></a></li>
                        <li><a href="#" class="yoo-icon-group-icon"><ion-icon name="ellipsis-horizontal"></ion-icon></a></li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
            </div><!-- .yoo-user -->
            <div class="yoo-user yoo-style2 yoo-right-side">
              <div class="yoo-user-chat-text-group">
                <div class="yoo-user-chat-text">
                  <div class="yoo-user-chat-text-in">
                    Your work looks great, btw!
                    <div class="yoo-user-chat-text-seting">
                      <ul class="yoo-icon-group yoo-style1 yoo-mp0">
                        <li><a href="#" class="yoo-icon-group-icon"><ion-icon name="happy"></ion-icon></a></li>
                        <li><a href="#" class="yoo-icon-group-icon"><ion-icon name="arrow-redo"></ion-icon></a></li>
                        <li><a href="#" class="yoo-icon-group-icon"><ion-icon name="ellipsis-horizontal"></ion-icon></a></li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
            </div><!-- .yoo-user -->
          </div>
          <div class="yoo-chat-controller">
            <div class="yoo-chat-option"><ion-icon name="add-outline"></ion-icon></div>
            <div class="yoo-custom-input-area">
              <div class="yoo-custom-input-field yoo-chat-input" contentEditable=true data-placeholder="Add your message..."></div>
            </div>
            <ul class="yoo-icon-group yoo-style1 yoo-mp0">
              <li>
                <a href="#" class="yoo-icon-group-icon"><ion-icon name="send"></ion-icon></a>
              </li>
              <li>
                <a href="#" class="yoo-icon-group-icon"><ion-icon name="document"></ion-icon></a>
              </li>
              <li class="yoo-hide-mobile">
                <a href="#" class="yoo-icon-group-icon"><ion-icon name="gift"></ion-icon></a>
              </li>
              <li class="yoo-hide-mobile">
                <a href="#" class="yoo-icon-group-icon"><ion-icon name="happy"></ion-icon></a>
              </li>
              <li class="yoo-hide-mobile">
                <a href="#" class="yoo-icon-group-icon"><ion-icon name="mic"></ion-icon></a>
              </li>
              <li class="yoo-hide-mobile">
                <a href="#" class="yoo-icon-group-icon"><ion-icon name="game-controller"></ion-icon></a>
              </li>
              <li>
                <a href="#" class="yoo-icon-group-icon"><i class="ion ion-ios-camera"></i></a>
              </li>
            </ul>
          </div>
        </div>
        <div class="yoo-chat-info-card">
          <span class="yoo-chat-info-cross"><ion-icon name="close"></ion-icon></span>
          <div class="yoo-padd-lr-30">
            <div class="yoo-height-b30 yoo-height-lg-b30"></div>
            <div class="yoo-user yoo-style4">
              <div class="yoo-user-img">
                <img src="<c:url value="/template/admin/assets/img/user-img1.png"/>" alt="">
              </div>
              <div class="yoo-user-info">
                <h3 class="yoo-user-name">Andy Timmons</h3>
                <span class="yoo-lavel">Data Analyst @weebfy</span>
                <div class="yoo-height-b15 yoo-height-lg-b15"></div>
                <div class="yoo-user-btns">
                  <a href="#" class="btn btn-outline-link">Message</a>
                  <button class="yoo-btn yoo-toolbtn"><ion-icon name="ellipsis-horizontal"></ion-icon></button>
                </div>
              </div>
            </div>
            <div class="yoo-height-b30 yoo-height-lg-b30"></div>
            <hr>
            <div class="yoo-height-b25 yoo-height-lg-b25"></div>
            <ul class="yoo-contact-info-list yoo-mp0">
              <li>
                <div class="yoo-contact-info-label">Email</div>
                <div class="yoo-contact-info-details">andyy@gmail.com</div>
              </li>
              <li>
                <div class="yoo-contact-info-label">Contact Number</div>
                <div class="yoo-contact-info-details">+1-202-555-0196</div>
              </li>
              <li>
                <div class="yoo-contact-info-label">Location</div>
                <div class="yoo-contact-info-details">London, United Kingom</div>
              </li>
              <li>
                <div class="yoo-contact-info-label">Timezone</div>
                <div class="yoo-contact-info-details">7 PM local time</div>
              </li>
            </ul>
            <div class="yoo-height-b25 yoo-height-lg-b25"></div>
            <hr>
            <div class="yoo-height-b20 yoo-height-lg-b20"></div>
            <div class="yoo-user-heading yoo-style1 yoo-type1">
              <h2 class="yoo-user-title">FILES SHARED</h2>
            </div>
            <div class="yoo-height-b10 yoo-height-lg-b10"></div>
            <ul class="yoo-attachment-list yoo-style1 yoo-mp0">
              <li>
                <div class="yoo-attachment">
                  <div class="yoo-attachment-img"><img src="<c:url value="/template/admin/assets/img/file-img1.jpg"/>" alt=""></div>
                  <div class="yoo-attachment-info">
                    <h3 class="yoo-attachment-title">Screenshot of ...rea.jpg</h3>
                    <div class="yoo-attachment-size">12 MB</div>
                  </div>
                  <div class="yoo-attachment-toggle">
                    <div class="yoo-attachment-toggle-btn"><ion-icon name="ellipsis-vertical"></ion-icon></div>
                  </div>
                </div>
              </li>
              <li>
                <div class="yoo-attachment">
                  <div class="yoo-attachment-file"><ion-icon name="document"></ion-icon></div>
                  <div class="yoo-attachment-info">
                    <h3 class="yoo-attachment-title">Product Certificate.pdf</h3>
                    <div class="yoo-attachment-size">71 KB</div>
                  </div>
                  <div class="yoo-attachment-toggle">
                    <div class="yoo-attachment-toggle-btn"><ion-icon name="ellipsis-vertical"></ion-icon></div>
                  </div>
                </div>
              </li>
            </ul>
            <hr>
            <div class="yoo-height-b20 yoo-height-lg-b20"></div>
            <div class="yoo-user-heading yoo-style1 yoo-type1">
              <h2 class="yoo-user-title">Productivity</h2>
            </div>
            <div class="yoo-porductivity-chart">
              <div class="yoo-porductivity-chart-in">
                <div id="yooChart1-7"></div>
              </div>
            </div>
            <div class="yoo-height-b20 yoo-height-lg-b20"></div>
          </div>
        </div>
      </div>
    </div><!-- .yoo-content -->
  </div>

  <!-- Start Toggle Chat -->
  <div class="yoo-toggle-chat-wrap">
    <div class="yoo-live-chat-wrap">
      <div class="yoo-live-chat-heading">
        <div class="yoo-live-chat-user">
          <div class="yoo-user-arrow-btn"><ion-icon name="chevron-back"></ion-icon></div>
          <div class="yoo-live-chat-user-img">
            <img src="<c:url value="/template/admin/assets/img/weebfy-logo.png"/>" alt="">
          </div>
          <div class="yoo-live-chat-user-info">
            <h2 class="yoo-live-chat-user-name">Support Ninjas</h2>
            <div class="yoo-live-chat-user-text">welcome to live chat...</div>
          </div>
        </div>
        <div class="yoo-live-chat-heading-btn"><ion-icon name="ellipsis-vertical"></ion-icon></div>
      </div>
      <div class="yoo-live-chat-body">
        <div class="yoo-chat-conversation yoo-live-chat yoo-style2">
          <ul class="yoo-reverse-scroll yoo-conversation-list">
            <li class="yoo-another-side">
              <div class="yoo-chat-avatar">
                 <img src="<c:url value="/template/admin/assets/img/user/7.jpg"/>" alt="msg1">
              </div>
              <i class="yoo-chat-time">10:00:AM</i>
              <div class="yoo-conversation-text">
                <div><p>Your work looks great, btw!</p></div>
                <div><p>loved it....</p></div>
                <div><img src="<c:url value="/template/admin/assets/img/imo1.png"/>" alt=""></div>
              </div>
            </li>
            <li>
              <div class="yoo-conversation-text">
                  <div><p>Ahaha, means a lot fam!</p></div>
                  <div><p>loved yours, too!</p></div>
              </div>
            </li>
          </ul>
          <div class="yoo-conversion-input">
            <div class="yoo-custom-input-area">
              <div class="yoo-custom-input-field yoo-chat-input" contentEditable=true data-placeholder="Add your message..."></div>
            </div>
            <ul class="yoo-icon-group yoo-style1 yoo-mp0">
              <li>
                <a href="#" class="yoo-icon-group-icon">@</a>
              </li>
              <li>
                <a href="#" class="yoo-icon-group-icon"><ion-icon name="image"></ion-icon></a>
              </li>
              <li>
                <a href="#" class="yoo-icon-group-icon"><ion-icon name="happy"></ion-icon></a>
              </li>
            </ul>
          </div>
        </div><!-- .yoo-chat-conversation -->
        <div class="yoo-live-chat-list-wrap yoo-style1">
          <ul class="yoo-live-chat-list">
            <li class="yoo-live-chat-single">
              <div class="yoo-chat-avatar">
                 <img src="<c:url value="/template/admin/assets/img/user/1.jpg"/>" alt="msg1">
              </div>
              <i class="yoo-chat-time">10:00:AM</i>
              <div class="yoo-conversation-text">
                  <h3 class="yoo-conversation-user-name">John Carry</h3>
                  <p>Hello!</p>
              </div>
            </li>
            <li class="yoo-live-chat-single yoo-unseen-msg">
              <div class="yoo-chat-avatar">
                <img src="<c:url value="/template/admin/assets/img/user/2.jpg"/>" alt="msg2">
              </div>
              <i class="yoo-chat-time">10:00:AM</i>
              <div class="yoo-conversation-text">
                <h3 class="yoo-conversation-user-name">Lisa Peterson</h3>
                <p>Hi, How are you? What about our next meeting?</p>
              </div>
            </li>
            <li class="yoo-live-chat-single">
              <div class="yoo-chat-avatar">
                <img src="<c:url value="/template/admin/assets/img/user/3.jpg"/>" alt="male">
              </div>
              <i class="yoo-chat-time">10:00:AM</i>
              <div class="yoo-conversation-text">
                <h3 class="yoo-conversation-user-name">John Carry</h3>
                <p>Yeah everything is fine</p>
              </div>
            </li>
            <li class="yoo-live-chat-single">
              <div class="yoo-chat-avatar">
                <img src="<c:url value="/template/admin/assets/img/user/4.jpg"/>" alt="female">
              </div>
              <i class="yoo-chat-time">10:00:AM</i>
              <div class="yoo-conversation-text">
                <div class="ctext-wrap">
                  <h3 class="yoo-conversation-user-name">Lisa Peterson</h3>
                  <p>Wow that's great</p>
                </div>
              </div>
            </li>
          </ul>
          <div class="yoo-live-chat-list-btns">
            <a href="#"><ion-icon name="chatbox"></ion-icon></a>
            <a href="#"><ion-icon name="notifications"></ion-icon></a>
            <a href="#"><ion-icon name="compass"></ion-icon></a>
          </div>
        </div>
      </div><!-- .yoo-live-chat-body -->
    </div><!-- .yoo-live-chat-wrap -->
    <div class="yoo-toggle-chat-btn">
      <ion-icon name="chatbox"></ion-icon>
      <ion-icon name="close"></ion-icon>
    </div>
  </div>
  <!-- End Toggle Chat -->