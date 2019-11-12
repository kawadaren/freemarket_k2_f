$('turbolinks:load', function () {
  var form = $("#card-form");
  Payjp.setPublicKey('pk_test_3fccb863171ee4499799a9f0');

  $(document).on('click', "#form-submit", function (e) {
    e.preventDefault();   // railsの処理停止

    var card = {
      number: $("#card-number").val(),
      cvc: $("#card-cvc").val(),
      exp_month: $("#card-month").val(),
      exp_year: $("#card-year").val()
    };

    console.log(card);

    Payjp.createToken(card, function (status, response) {
      console.log(status)
      console.log("test2")
      form.find("input[type=submit]").prop("disabled", true);
      if (status == 200) { //うまくいった場合

        // nameデータの削除
        $("#card-number").removeAttr("name");
        $("#card-cvc").removeAttr("name");
        $("#card-month").removeAttr("name");
        $("#card-year").removeAttr("name");

        var payjphtml = `<input type="hidden" name="payjpToken" value=${response.id}>`
        // dbにトークンを保存するのでjsで作ったトークンをセット
        form.append(payjphtml);
        console.log(payjphtml)

        // submitして、railsアクションにいく (paramsの中には{payjpToken="トークン"}という情報が入る)
        var form_content = $("#card-form");
        console.log(form_content)
        form_content.submit();
      } else {
        alert("カード情報が正しくありません");
      }
    });
  });
});


