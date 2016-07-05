<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>ログイン</title>

    <!-- Bootstrap -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="css/skippr.css" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="css/style.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

    <nav class="header navbar navbar-default navbar-fixed-top">
        <div class="container">
          <div class="row">
            <div class="header-left col-md-6">
              <a class="navbar-brand" href="#"><img src="images/phimma-logo.png" alt="" width="200" height="37"></a>
            </div>
            <div class="header-right col-md-6">
              <div class="top-header-search header-right-box">
                <div class="top-search-content">
                  <div class="container-1">
                    <span class="icon"><i class="fa fa-search"></i></span>
                    <input type="search" id="search" placeholder="検索する..." />
                  </div>
                </div>
              </div>
              <div class="header-right-login header-right-box">
                <button class="btn btn-default login-btn primary-pink" type="submit">ログイン</button>
              </div>
              <div class="header-right-signup header-right-box">
                <button class="btn btn-default signup-btn sub-blue" type="submit">新規会員登録</button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </nav><!-- Header -->

    <div class="container" style="padding: 200px 0">
        <div class="row vertical-offset-100">
            <div class="col-md-4 col-md-offset-4">
                <div class="panel panel-default">

                    <div class="panel-heading">
                        <h3 class="panel-title">ログインフォーム</h3>
                    </div>
                    <div class="panel-body">
                        <form class="form-signin">
                            <div class="form-group">
                                <label for="inputEmail" class="sr-only">メールアドレス</label>
                                <input type="email" id="inputEmail" class="form-control" placeholder="メールアドレス" required autofocus>
                            </div>
                            <div class="from-group">
                                <label for="inputPassword" class="sr-only">パスワード</label>
                                <input type="password" id="inputPassword" class="form-control" placeholder="パスワード" required>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" value="remember-me">
                                    パスワードを記憶する
                                </label>
                            </div>
                            <br>
                            <button class="btn btn-lg btn-danger btn-block" type="submit">ログイン</button>
                        </form>
                        <br>
                        <br>						
                        <hr>
                        <div class="login-no-account">
                            <p>アカウントをお持ちでない方はこちら</p>
                            <a href="add_user.php" class="btn btn-lg btn-primary btn-block">新規会員登録</a>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /container -->
	
	<footer>
      <div class="row">
        <div class="container">
          <div class="footer-nav">
            <nav class="">
              <a href="#">よくある質問</a>
              <a href="#">使い方</a>
              <a href="#">プライバシー</a>
              <a href="#">ご利用規約</a>
              <a href="#">運営会社</a>
              <a href="#">運営へのお問合せ</a>
            </nav>
            <div>
              <img src="images/phimma-logo.png" class="footer-logo">
              <p class="footer-copywrite">c 2016 PHIMMA!</p>
            </div>
          </div>
        </div>
      </div>
    </footer>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/skippr.min.js"></script>
    <script src="js/main.js"></script>
</body>
</html>
