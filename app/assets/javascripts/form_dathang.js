$(document).ready(function () {
  document.getElementById("button_dk_online").hidden = true;
  $("#dondathang_phuongthuctt").change(function () {
    if (document.getElementById("dondathang_phuongthuctt").selectedIndex == 2) {
      document.getElementById("button_dk").hidden = true;
      document.getElementById("button_dk_online").hidden = false;
      load_js();
      validateForm();
    }
    else {
      document.getElementById("button_dk").hidden = false;
      document.getElementById("button_dk_online").hidden = true;
    }
  });
  $(".stripe-button-el").click(function () {
    if (load_js() == 0) {
      alert("Vui lòng kiểm tra lại chi tiết đơn đặt hàng!");
      $('.stripe_checkout_app')[0].src = "";
      $('.stripe_checkout_app')[0].style = ""
    }
  });

  function validateForm_load() {
    var key_ = 1;
    if ((document.getElementById("dondathang_nguoinhanhang").value) == '') {
      key_ = 0
      document.getElementById("v_nguoinhanhang").innerHTML = "Please fill out this field.";
    }
    if ((document.getElementById("dondathang_sdt").value) == '') {
      key_ = 0
      document.getElementById("v_sdt").innerHTML = "Please fill out this field.";
    }
    if ((document.getElementById("dondathang_diachigiao").value) == '') {
      key_ = 0
      document.getElementById("v_diachigiao").innerHTML = "Please fill out this field.";
    }
    return key_;
  };

  function validateForm() {
    var key = 1;
    if ((document.getElementById("dondathang_nguoinhanhang").value) == '') {
      key = 0
      document.getElementById("v_nguoinhanhang").innerHTML = "Please fill out this field.";
    }
    if ((document.getElementById("dondathang_sdt").value) == '') {
      key = 0
      document.getElementById("v_sdt").innerHTML = "Please fill out this field.";
    }
    if ((document.getElementById("dondathang_diachigiao").value) == '') {
      key = 0
      document.getElementById("v_diachigiao").innerHTML = "Please fill out this field.";
    }
    if (key == 0) {
      alert("Bạn phải nhập đầy đủ thông tin các mục có dấu *");
      $(".stripe-button-el")[0].disabled = true;
      location.reload();
    } else {
      $(".stripe-button-el")[0].disabled = false;
    }
  };

  $("#check").click(function () {
    load_js();
    $('.stripe_checkout_app')[0].src = "";
    $('.stripe_checkout_app')[0].style = "";
    if ((document.getElementById("check").type == "button") || (load_js() == 0)) {
      alert("Thao tác nhanh quá!");
      alert("Vui lòng kiểm tra lại chi tiết đơn đặt hàng!");
    };
    if ((validateForm_load() == 1) && (load_js() == 1)) {
      document.getElementById("form_dh").submit();
    }
  });

  function load_js() {
    for (ctdh of chitietdh) {
      var id_size;
      for (x of sizesp) {
        if (ctdh.size == x.tensize) {
          id_size = x.id;
        };
      };
      var sl_ton = 0;
      for (ctsize of chitietsize) {
        if ((ctsize.chitietsanpham_id == ctdh.chitietsanpham_id) && (ctsize.sizesanpham_id == id_size)) {
          sl_ton += ctsize.soluongton;
        };
      };
      kt_sl = 1;
      if (sl_ton == 0) {
        kt_sl = 0;
        $(this).addClass('disable');
        document.getElementById("check").type = "button";
        // document.getElementsByClassName("button_dk_online")[0].type="button";
        document.getElementById(ctdh.id).innerHTML = "Hết hàng!";
        // alert("Mã sản phẩm: "+(ctdh.chitietsanpham_id) +", màu: "+ ctdh.mausp + ", size: " + ctdh.size + ", hết hàng !");
      }
      else if ((sl_ton - ctdh.soluong) < 0) {
        kt_sl = 0;
        document.getElementById("check").type = "button";
        // document.getElementsByClassName("button_dk_online")[0].type="button";
        $(this).addClass('disable');
        document.getElementById(ctdh.id).innerHTML = "Không đủ số lượng! (còn " + ctsize.soluongton + " sản phẩm có sẵn)";
        // alert("Mã sản phẩm: "+(ctdh.chitietsanpham_id) +", màu: "+ ctdh.mausp + ", size: " + ctdh.size + ", không đủ số lượng !");
      };
    };
    return kt_sl;
  };
});