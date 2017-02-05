<%@ page language="java" contentType="text/html; charset=Cp1251" pageEncoding="Cp1251"%>
<!DOCTYPE html>
<html>
<head>
    <title>BulkaPro</title>
    <link rel="icon" href="/avito/resources/img/favicon-32x32.png">
    <meta http-equiv="content-type" content="text/html; charset=cp1251">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <script src="${pageContext.request.contextPath}/resources/js/jquery-dateFormat.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/navbar.js" charset="utf-8"></script>
    <link rel="stylesheet" type="text/css" href="/avito/resources/css/sidebar.css">
    <script src="${pageContext.request.contextPath}/resources/js/webSocket.js"></script>
    <link href="https://gitcdn.github.io/bootstrap-toggle/2.2.2/css/bootstrap-toggle.min.css" rel="stylesheet">
    <script src="https://gitcdn.github.io/bootstrap-toggle/2.2.2/js/bootstrap-toggle.min.js"></script>


</head>
<body>

<div id="wrapper">

    <div id="sidebar-wrapper">
        <ul class="sidebar-nav container-fluid">
            <li><a href="#" id="my_calls"> ��� ������ </a></li>
            <li><a href="#" id="user_calls"> ������ ������������ </a></li>
            <li><a href="#" id="comments"> ����������� </a></li>
            <li><a href="#" id="notes"> ������� </a></li>
            <li><a href="#" id="feedback"> Feedback </a></li>
            <li><a href="#" id="oktell"> Oktell </a></li>
            <li><a href="/avito/j_spring_security_logout" id="logout"> ����� </a></li>
            <label id="websocketStatus"> ������ </label>
        </ul>
    </div>

    <div id="SubForm" class="form-group col-lg-4 container-fluid">
        <div class="row">

        </div>
        <div class="row">
            <div class="form-group col-lg-6 text-center">
                <input type="number" class="form-control" id="IDNum" placeholder="ID ������� ������">
            </div>
            <div id="CloseSubForm" class="btn-group" data-toggle="buttons">
                <button type="button" id="CloseSubForm" class="btn btn-success">�������</button>
            </div>
        </div>
        <label>��������� ������� ������</label>

        <div class="row">
            <div class="btn-group col-lg-12" data-toggle="buttons" id="catButtonGroup">
                <label class="btn btn-primary col-lg-4" id="label-cat-1">
                    <input type="radio" name="category" id="cat-1" autocomplete="off"> ������������
                </label>
                <label class="btn btn-primary col-lg-2" id="label-cat-2">
                    <input type="radio" name="category" id="cat-2" autocomplete="off"> ����
                </label>
                <label class="btn btn-primary col-lg-2" id="label-cat-3">
                    <input type="radio" name="category" id="cat-3" autocomplete="off"> ������
                </label>
                <label class="btn btn-primary col-lg-2" id="label-cat-4">
                    <input type="radio" name="category" id="cat-4" autocomplete="off"> ������
                </label>
                <label class="btn btn-primary col-lg-2" id="label-cat-5">
                    <input type="radio" name="category" id="cat-5" autocomplete="off"> Gen
                </label>
            </div>
        </div>
        <label>��������� �������</label>


        <div class="row">
            <div class="btn-group col-lg-12" data-toggle="buttons" id="questButtonGroup">
                <label class="btn btn-primary col-lg-3" id="label-quest-1">
                    <input type="radio" name="question" id="quest-1" autocomplete="off"> ����������
                </label>
                <label class="btn btn-primary col-lg-3" id="label-quest-2">
                    <input type="radio" name="question" id="quest-2" autocomplete="off"> �������
                </label>
                <label class="btn btn-primary col-lg-3" id="label-quest-3">
                    <input type="radio" name="question" id="quest-3" autocomplete="off"> ������������
                </label>
                <label class="btn btn-primary col-lg-3" id="label-quest-4">
                    <input type="radio" name="question" id="quest-4" autocomplete="off"> �����������
                </label>
                <label class="btn btn-primary col-lg-3" id="label-quest-5">
                    <input type="radio" name="question" id="quest-5" autocomplete="off"> ������
                </label>
                <label class="btn btn-primary col-lg-3" id="label-quest-6">
                    <input type="radio" name="question" id="quest-6" autocomplete="off"> ������
                </label>
                <label class="btn btn-primary col-lg-3" id="label-quest-7">
                    <input type="radio" name="question" id="quest-7" autocomplete="off"> ���������
                </label>
                <label class="btn btn-primary col-lg-3" id="label-quest-8">
                    <input type="radio" name="question" id="quest-8" autocomplete="off"> ���������
                </label>

            </div>
        </div>
        <div>
            <span><br/></span>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="btn-group" data-toggle="buttons" >
                    <input type="checkbox" data-toggle="toggle" id="IsManager" data-on="��������" data-off="������" data-offstyle="info toggler" data-onstyle="danger toggler" data-width="100">

                </div>
                <div class="btn-group" data-toggle="buttons" id="sendDataButtonDiv">
                    <button type="button" id="sendDataButton" class="btn btn-success">���������</button>
                </div>
                <div id="2299CSS" class="btn-group pull-right" data-toggle="buttons">
                    <button type="button" id="2299" class="btn btn-danger">�������</button>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-12">
                <label>�������������� ����</label>
                <div class="btn-group btn-group-justified" data-toggle="buttons">
                    <label class="btn btn-warning-2" id="label-tag-1">
                        <input type="checkbox" id="tag-1" name="addTags" autocomplete="off" value="lf"> Listing Fees
                    </label>
                    <label class="btn btn-warning-2" id="label-tag-2">
                        <input type="checkbox" id="tag-2" name="addTags" autocomplete="off" value="vas"> Vas
                    </label>
                    <label class="btn btn-warning-2" id="label-tag-3">
                        <input type="checkbox" id="tag-3" name="addTags" autocomplete="off" value="subs"> Subscription
                    </label>
                    <label class="btn btn-warning-2" id="label-tag-4">
                        <input type="checkbox" id="tag-4" name="addTags" autocomplete="off" value="feedback"> Feedback
                    </label>
                </div>
            </div>
        </div>

        <div class="form-group">
            <label for="comment" id="serviceMessage"></label>
            <textarea class="form-control" rows="6" id="JsonText"></textarea>
        </div>

    </div>

    <!-- Feedback -->
    <div id="FeedbackForm" class="form-group col-lg-5 container-fluid">
        <div class="row">
            <label>��������� �������</label>
            <div class="btn-group col-lg-12" data-toggle="buttons" id="feedback-catButtonGroup">
                <div class="row">
                    <label class="btn btn-primary col-lg-4" id="feed-cat-1">
                        <input type="radio" name="feed-cat" id="radio-feed-cat-1" autocomplete="off"> ��� ���������
                    </label>
                    <label class="btn btn-primary col-lg-4" id="feed-cat-2">
                        <input type="radio" name="feed-cat" id="radio-feed-cat-2" autocomplete="off"> ������������
                    </label>
                    <label class="btn btn-primary col-lg-4" id="feed-cat-3">
                        <input type="radio" name="feed-cat" id="radio-feed-cat-3" autocomplete="off"> ����
                    </label>
                </div>
                <div class="row">

                    <label class="btn btn-primary col-lg-4" id="feed-cat-3">
                        <input type="radio" name="feed-cat" id="radio-feed-cat-4" autocomplete="off"> ������
                    </label>
                    <label class="btn btn-primary col-lg-4" id="feed-cat-5">
                        <input type="radio" name="feed-cat" id="radio-feed-cat-5" autocomplete="off"> ������
                    </label>
                    <label class="btn btn-primary col-lg-4" id="feed-cat-6">
                        <input type="radio" name="feed-cat" id="radio-feed-cat-6" autocomplete="off"> Gen
                    </label>
                </div>
            </div>
        </div>
        <div class="row">
            <label>���� �� ����������</label>
        </div>
        <div class="btn-group col-lg-12" name="feedback-tags" data-toggle="buttons" id="feedback-tagButtonGroup">
            <div class="row">
                <label>�������������� ������</label>
                <div class="row">
                    <label class="btn btn-primary col-lg-6" id="feed-tag-1">
                        <input type="checkbox" name="feed-tag" id="model_geo" autocomplete="off"> �������� ������ ��� �����
                    </label>
                    <label class="btn btn-primary col-lg-6" id="feed-tag-2">
                        <input type="checkbox" name="feed-tag" id="model_cat" autocomplete="off"> �������� ���������
                    </label>
                </div>
            </div>
            <div class="row">
                <label>����� �� �����</label>
                <div class="row">
                    <label class="btn btn-primary col-lg-3" id="feed-tag-3">
                        <input type="checkbox" name="feed-tag" id="search_filters" autocomplete="off"> �������
                    </label>
                    <label class="btn btn-primary col-lg-3" id="feed-tag-4">
                        <input type="checkbox" name="feed-tag" id="search_problems" autocomplete="off"> ��������
                    </label>
                    <label class="btn btn-primary col-lg-6" id="feed-tag-5">
                        <input type="checkbox" name="feed-tag" id="search_favourite" autocomplete="off"> ��������� � �����������
                    </label>
                </div>
            </div>
            <div class="row">
                <label>������ � ������������</label>
                <div class="row">
                    <label class="btn btn-primary col-lg-3" id="feed-tag-6">
                        <input type="checkbox" name="feed-tag" id="item_inside" autocomplete="off"> ����������
                    </label>
                    <label class="btn btn-primary col-lg-5" id="feed-tag-7">
                        <input type="checkbox" name="feed-tag" id="item_add" autocomplete="off"> ������ � ��������������
                    </label>
                    <label class="btn btn-primary col-lg-2" id="feed-tag-8">
                        <input type="checkbox" name="feed-tag" id="item_feedback" autocomplete="off"> ������
                    </label>
                    <label class="btn btn-primary col-lg-2" id="feed-tag-9">
                        <input type="checkbox" name="feed-tag" id="item_lf" autocomplete="off"> LF VAS
                    </label>
                </div>
            </div>
            <div class="row">
                <label>������ � ������</label>
                <div class="row">
                    <label class="btn btn-primary col-lg-5" id="feed-tag-10">
                        <input type="checkbox" name="feed-tag" id="site_navigation" autocomplete="off"> ��������� � ���������
                    </label>
                    <label class="btn btn-primary col-lg-3" id="feed-tag-11">
                        <input type="checkbox" name="feed-tag" id="site_mobile" autocomplete="off"> Mobile
                    </label>
                    <label class="btn btn-primary col-lg-4" id="feed-tag-12">
                        <input type="checkbox" name="feed-tag" id="site_messenger" autocomplete="off"> ����������
                    </label>
                </div>
                <div class="row">
                    <label class="btn btn-primary col-lg-6" id="feed-tag-13">
                        <input type="checkbox" name="feed-tag" id="site_safety" autocomplete="off"> ������������
                    </label>
                    <label class="btn btn-primary col-lg-6" id="feed-tag-14">
                        <input type="checkbox" name="feed-tag" id="site_other" autocomplete="off"> ���������
                    </label>
                </div>
            </div>

            <div class="row">
                <div class="form-group">
                    <div class="row">
                        <label for="feedbackComment" id="serviceMessage">���� ��� �����������</label>
                        <textarea class="form-control" rows="5" id="feedbackComment"></textarea>
                    </div>
                </div>
            </div>

        </div>
        <div class="btn-group" data-toggle="buttons" id="sendFeedback">
            <div class="row">
                <button type="button" id="sendFeedbackButton" class="btn btn-success">���������</button>
            </div>
        </div>
    </div>

    <div id="page-content-wrapper">
        <div class="container-fluid">
            <div class="col-lg-12">
                <h1 id="HeaderText"></h1>
                <div class="row">
                    <div id="CallForm" class="form-group col-md-6">
                        <div class="row">
                            <div class="cell col-md-6" id="Cell">
                                <div class="form-group">
                                    <input type="number" class="form-control" id="IDforInfo" placeholder="ID ������� ������">
                                </div>
                            </div>
                            <div class="cell col-md-2" id="Cell">
                                <div id="submit" class="btn-group" data-toggle="buttons">
                                    <button type="button" id="IDSubmit" class="btn btn-primary">GO</button>
                                    <button type="button" id="IDSubmit" class="btn btn-primary">GO</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row" >
                    <p id="MainForm" class="col-lg-10">
                    <div id="Hello">
                        <h1>����������, ${username}</h1>
                    </div>
                    </p>
                </div>

            </div>
        </div>
    </div>
</div>

<script>
    (function() {
        document.getElementById("oktell").onclick = function() {
            var wnd = window.open("http://web_api:s7cgr3Ev@192.168.3.10:4055/download/", "hello", "width=200,height=200");

            wnd.onerror = function(){
                wnd.document.write("���������� � ������...");
                wnd.alert("error");
            };
            setTimeout(function() {
                wnd.close();
            }, 1500);
            return false;
        };
    })();
</script>
<script>
    setTimeout(jQuery(function(){
        jQuery('#my_calls').click();
    }, 2500));

</script>
</body>

</html>