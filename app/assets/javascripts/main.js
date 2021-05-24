$(document).ready(function () {
  console.log("hello!");

//   const show = (element) => {
//     element.addClass("show");
//   };

  $(".close").on("click", function () {
    $(".pop-up").removeClass("show");
  });

  $(".sing-up-btn").on("click", function () {
    $(".pop-up").addClass("show");
  });

  
  // $(".header-name").text("show!");
});
