$(document).on('turbolinks:load', function(){
  var search_list = $(".brand__content");
  
  function appendBrand(brand) {
    var html = `<tr class = brand_list>
                  <td>${brand.name}</td>
                  <td>${brand.cigarette_shred_name}</td>
                  <td>${brand.paper_roll_name}</td>
                  <td>${brand.small_box_name}</td>
                  <td>${brand.filter_name}</td>
                </tr>`
    search_list.append(html);
  }
  
  function appendErrMsgToHTML(msg) {
    var html = `<div class='name'>${ msg }</div>`
    search_list.append(html);
  }

  //フォームのテキストの値を取得している
  $(".search-input").on("keyup", function() {
    var input = $(".search-input").val();
    //ajaxメソッドで受け渡す場所、形式等を明記
    $.ajax({
      type: 'GET',
      url: '/brands/search',
      data: { keyword: input },
      dataType: 'json'
    })
    //jbuilderからdoneに情報が返ってくる
    .done(function(brands) {
      $(".brand__content").empty();
      if (brands.length !== 0) {
        brands.forEach(function(brand){
          appendBrand(brand);
        });
      }
      else {
        appendErrMsgToHTML("一致するツイートがありません");
      }
    })
    .fail(function() {
      alert('error');
    });
  });
});