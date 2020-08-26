$(document).ready(function () {
  // var ctsps = <%=raw @ctsps.to_json %>;
  // var ctsize = <%=raw Chitietsize.all.to_json %>;
  // var sizesp = <%=raw Sizesanpham.all.to_json %>;
  // alert(show_hui(1));
  document.getElementsByName("sl")[0].value = document.getElementById("input_count").value;
  $(".primary-button").click(function () {
    document.getElementsByName("sl")[0].value = document.getElementById("input_count").value;
  });

  $(".get_sl_single").click(function () {
    document.getElementsByName("sl")[0].value = 1;
  });

  $("#input_count").change(function () {
    if ((document.getElementById("input_count").value == "") || (document.getElementById("input_count").value == 0)) {
      alert("Số lượng phải hợp lệ!");
      document.getElementById("input_count").value = "1";
    };
    if (parseInt(document.getElementById("input_count").value) > parseInt(document.getElementById("sl_sp_ton").getAttribute("value"))) {
      alert("Số lượng không vượt quá số lượng sản phẩm có sẵn !");
      document.getElementById("input_count").value = "1";
    };
  });
  var formatter = new Intl.NumberFormat(undefined, {
    style: 'currency',
    currency: 'VND',
  });
  function load_ctsp(checkbox, id_checked) {
    // load hinh zoom
    // alert (window.location.href)
    document.getElementsByClassName("product-big-img")[0].src = "";
    if (checkbox.is(":checked")) {
      if (checkbox.attr("style") == "background: #fff") {
        checkbox.addClass("kt_trang");
      }else{
        checkbox.removeClass("kt_trang");
      };
      document.getElementById("size_sp").innerHTML = "";
      document.getElementsByClassName("product-thumbs-track ps-slider owl-carousel")[0].innerHTML = "";
      // location.href = "/sanphams/" + ctsps[0].sanpham_id +"?id=6"
      for (i of ctsps) {
        if (i.id == id_checked) {
          // in size san pham

          for (sizes of arr_size) {
            if (load_size(sizes, i.id) == 1) {
              document.getElementById("size_sp").innerHTML += "<div class='sc-item'><input type='radio' id='sm-size' ><label for='sm-size'  value = " + sizes + " id_ctsp = " + i.id + " class = 'disable'>" + sizes + "</label></div>";
            } else {
              document.getElementById("size_sp").innerHTML += "<div class='sc-item'><input type='radio' id='sm-size' ><label for='sm-size'  value = " + sizes + " id_ctsp = " + i.id + ">" + sizes + "</label></div>";
            };
          };
          //
          // anh nho
          document.getElementsByClassName("product-big-img")[0].src = i.hinh1.url;
          document.getElementsByClassName("product-thumbs")[0].innerHTML = '<div class ="product-thumbs-track ps-slider owl-carousel"><div class="pt" data-imgbigurl = ' + i.hinh1.url + ' ><img src= ' + i.hinh1.url + ' alt=""></div><div class="pt" data-imgbigurl = ' + i.hinh2.url + ' ><img src= ' + i.hinh2.url + ' alt=""></div><div class="pt" data-imgbigurl = ' + i.hinh3.url + ' ><img src= ' + i.hinh3.url + ' alt=""></div><div class="pt" data-imgbigurl = ' + i.hinh4.url + ' ><img src= ' + i.hinh4.url + ' alt=""></div></div>';
          // anh nho
          document.getElementById("gia").innerHTML = formatter.format((i.giaban));
          // document.getElementsByClassName("p-stock")[0].innerHTML = i.soluongton
          document.getElementById("kichthuoc").innerHTML = arr_size;
          document.getElementById("mau_mota").innerHTML = checkbox.attr("data-mau");
          document.getElementById("ma_chinh").innerHTML = '<span>Mã sản phẩm: </span>' + i.id;
          document.getElementById("ma_mota").innerHTML = i.id;
          document.getElementsByClassName("add_to_cart_01")[0].action = "/chitiet_dathangs?chitietsanpham_id=" + i.id;
          document.getElementsByClassName("p-price")[0].innerHTML = formatter.format((i.giaban));
          document.getElementsByClassName("sl_sp")[0].innerHTML = '<p id = "sl_sp_ton" value = "' + i.soluongton + '"></p>'
          select_size();
          // insert color into database
          document.getElementsByName("mau_data")[0].value = checkbox.attr("data-mau");
          //
        };
      };
      $(".ps-slider").owlCarousel({
        loop: true,
        margin: 10,
        nav: true,
        items: 3,
        dots: false,
        navText: ['<i class="fa fa-angle-left"></i>', '<i class="fa fa-angle-right"></i>'],
        smartSpeed: 1200,
        autoHeight: false,
        autoplay: true,
      });
      $('.product-thumbs-track .pt').on('click', function () {
        $('.product-thumbs-track .pt').removeClass('active');
        $(this).addClass('active');
        var imgurl = $(this).data('imgbigurl');
        var bigImg = $('.product-big-img').attr('src');
        if (imgurl != bigImg) {
          $('.product-big-img').attr({ src: imgurl });
          $('.zoomImg').attr({ src: imgurl });
        }
      });
      $('.product-pic-zoom').zoom();
    }
  };

  function load_size(sizes, id_ctsp) {
    var id_size;
    for (x of sizesp) {
      if (x.tensize == sizes) {
        id_size = x.id;
      };
    };
    var sl = 0;
    for (x of ctsize) {
      if ((x.chitietsanpham_id == id_ctsp) && (x.sizesanpham_id == id_size)) {
        sl += x.soluongton;
      }
    };
    document.getElementsByClassName("sl_sp")[0].innerHTML = '<p id = "sl_sp_ton" value = "' + sl + '"></p>'
    var value_sl = parseInt(document.getElementById("sl_sp_ton").getAttribute("value"))
    if ((value_sl > 0) && (value_sl <= 10)) {
      document.getElementsByClassName("sl_sp")[0].innerHTML = '<p id = "sl_sp_ton" value = "' + sl + '">Sản phẩm sắp hết (' + sl + ')</p>'
      return 0;
    } else if (value_sl > 10) {
      document.getElementsByClassName("sl_sp")[0].innerHTML = '<p id = "sl_sp_ton" value = "' + sl + '">Sản phẩm còn hàng (' + sl + ')</p>'
      return 0;
    }
    return 1;
  };
  function select_size() {
    document.getElementsByName("size_data")[0].value = "";
    $("#size_sp .sc-item label").click(function () {
      // set so luong san pham
      load_size($(this).attr("value"), $(this).attr("id_ctsp"))
      // 
      if (parseInt(document.getElementById("sl_sp_ton").getAttribute("value")) <= 0) {
        $(".fw-size-choose .sc-item label, #size_sp .sc-item label").removeClass('active');
        $(this).addClass("disable");
        alert("Sản phẩm hết hàng !");
        document.getElementById("input_count").value = "1";
        document.getElementsByClassName("primary-button")[0].type = "button";
      } else {
        $("#size_sp .sc-item label").removeClass('active');
        $(this).addClass('active');
        document.getElementsByClassName("primary-button")[0].type = "submit";
        document.getElementsByName("size_data")[0].value = $(this).attr("value");
      };
    });
  };

  $("#them_vao_gio").click(function () {
    if (document.getElementsByName("size_data")[0].value == "") {
      alert("Vui lòng chọn kích thước !");
      document.getElementById("input_count").value = "1";
      document.getElementsByClassName("primary-button")[0].type = "button";
    };
  });

  $(document).ready(function () {
    var checkbox = $(".option-input.radio");
    var id_checked = $(".option-input.radio").attr("value");
    load_ctsp(checkbox, id_checked);
    // select_mausp();

  });
  $(".option-input.radio").change(function () {
    var checkbox = $(this);
    var id_checked = $(this).attr("value");
    load_ctsp(checkbox, id_checked);
    // select_mausp();
  });

  // show hui
  $(".product-slider").owlCarousel({
    loop: true,
    margin: 25,
    nav: true,
    items: 4,
    dots: true,
    navText: ['<i class="fa fa-angle-left" ></i>', '<i class="fa fa-angle-right"></i>'],
    smartSpeed: 1200,
    autoHeight: false,
    autoplay: true,
    responsive: {
      0: {
        items: 1,
      },
      576: {
        items: 2,
      },
      992: {
        items: 3,
      },
      1200: {
        items: 4,
      }
    }
  });
  

  // 
});