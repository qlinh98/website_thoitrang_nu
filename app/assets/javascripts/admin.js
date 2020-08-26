$(document).ready(function () {
  button_new = document.getElementsByTagName("span")[2].getElementsByTagName("a")[0].getAttribute("href");
  if ((button_new == "/admin/danhsach_huis/new") || (button_new == "/admin/chitiet_dathangs/new") || (button_new == "/admin/dondathangs/new")) {
    document.getElementsByTagName("span")[2].style.visibility = "hidden";
  }
  $("#input_min").change(function () {
    min = document.getElementById('input_min').value;
    document.getElementById("new_hui").href = "./danhsach_huis/new?min=" + min;
  })

  $("#new_hui").click(function () {
    if (document.getElementById('input_min').value == "") {
      alert("Bạn phải nhập ngưỡng tiện ích tối thiểu!");
      document.getElementById("new_hui").href = "";
    } else if (document.getElementById('input_min').value < 100000) {
      alert("Bạn phải nhập ngưỡng tiện ích tối thiểu >= 100.000");
      document.getElementById("new_hui").href = "";
    }
    // alert("Bạn đang ở trong vùng");
    // console.log( document.getElementById("new_hui").href = "/danhsach_hui/new?min="+111);
  })
});