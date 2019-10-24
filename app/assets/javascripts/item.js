// プレビューに挿入するHTMLの作成
function buildImage(loadedImageUri){
  var html =
  `<li>
    <img src=${loadedImageUri}>
    <div class="sell-form__upload__items__preview__box">
      <div class="sell-form__upload__items__preview__box__edit" >
        編集
      </div>
      <div>
        <a class="sell-form__upload__items__preview__box__delete">削除</a>
      </div>
    </div>
  </li>`
  return html
};
// 画像を管理するための配列を定義する。
var files_array = [];
// 通常のドラッグオーバイベントを止める。
$('.sell-form__upload__items__guide').on('dragover',function(e){
    e.preventDefault();
});
// ドロップ時のイベントの作成
$('.sell-form__upload__items__guide').on('drop',function(event){
  event.preventDefault();
    // 何故か、dataTransferがうまくいかなかったので、originalEventから読み込んでいます。
    // ここで、イベントによって得たファイルを配列で取り込んでいます。
  files = event.originalEvent.dataTransfer.files;
    // 画像のファイルを一つづつ、先ほどの画像管理用の配列に追加する。
  for (var i=0; i<files.length; i++) {
    files_array.push(files[i]);
    var fileReader = new FileReader();
    // ファイルが読み込まれた際に、行う動作を定義する。
    fileReader.onload = function( event ) {
    // 画像のurlを取得します。
    var loadedImageUri = event.target.result;
    // 取得したURLを利用して、ビューにHTMLを挿入する。
    $(buildImage(loadedImageUri,)).appendTo(".sell-form__upload__items__preview ul").trigger("create");
    };
    // ファイルの読み込みを行う。
    fileReader.readAsDataURL(files[i]);
  }
});
$(document).on('click', '.sell-form__upload__items__preview a', function(){
  var index = $(".sell-form__upload__items__preview a").index(this);
  files_array.splice(index - 1, 1);
  $(this).parent().parent().remove();

});

$('#new_item').on('submit', function(e){
  e.preventDefault();
  var formData = new FormData($(this).get(0));
  files_array.forEach(function(file){
    formData.append("image[images][]" , file)
  });
  $.ajax({
    url:         '/items',
    type:        "POST",
    data:        formData,
    contentType: false,
    processData: false,
    dataType:   'json',
  })
  .done(function(data){
    alert('出品に成功');
  })
  .fail(function(XMLHttpRequest, textStatus, errorThrown){
    alert('失敗')
  });
});


function AdditionBy()
{
num1 = document.getElementById("first").value;
num2 = document.getElementById("second").value;
document.getElementById("result").innerHTML = Number(num1) + Number(num2);
}

function SubtractionBy()
{
num1 = document.getElementById("first").value;
num2 = document.getElementById("second").value;
document.getElementById("result").innerHTML = Number(num1) - Number(num2);
}