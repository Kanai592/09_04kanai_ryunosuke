<?php
//1. DB接続
//DB接続
include('functions.php');
$pdo = connectToDb();




//2. データ表示SQL作成
$sql = 'SELECT * FROM gs_bm_table';
$stmt = $pdo->prepare($sql);
$status = $stmt->execute();


//3. データ表示
$view = '';
if ($status == false) {
    //execute（SQL実行時にエラーがある場合）
    $error = $stmt->errorInfo();
    exit('sqlError:' . $error[2]);
} else {
    //Selectデータの数だけ自動でループしてくれる
    //http://php.net/manual/ja/pdostatement.fetch.php
    while ($result = $stmt->fetch(PDO::FETCH_ASSOC)) {
        $view .= '<li class="list-group-item">';
        $view .= '<a href=' . $result['url'] . ' target="_blank">' . $result['name'] . '</a>'; //★urlなのでこのように書き直す
        $view .= '<p>' . $result['comment'] . '</p>';

        // ★更新画面へのリンク先の変更、detailのみへ変更、表記をeditからdetailへ変更
        $view .= '<a href="detail_nologin.php?id=' . $result['id'] . '" class="badge badge-primary">detail</a>';
        // $view .= '<a href="delete.php?id=' . $result['id'] . '" class="badge badge-danger">Delete</a>';
        // 変更終わり
        $view .= '</li>';
    }
}

?>


<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>bookmark一覧</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <style>
        div {
            padding: 10px;
            font-size: 16px;
        }
    </style>
</head>

<body>
    <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="#">nologin・bookmark一覧</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="login.php">ログインページ</a>
                    </li>
                </ul>
            </div>
        </nav>
    </header>

    <div>
        <ul class="list-group">
            <!-- ここにDBから取得したデータを表示しよう -->
            <?= $view ?>

        </ul>
    </div>

</body>

</html>