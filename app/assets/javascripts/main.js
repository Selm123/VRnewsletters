$(document).ready(function () {
  $(".sign-up-btn").on("click", function () {
    $(".pop-up").addClass("show");
  });

  $(".close").on("click", function () {
    $(".pop-up").removeClass("show");
  });

  const validateName = (name) => {
    let nameArr = name.split("");
    for (let i = 0; i < nameArr.length; i++) {
      if (!isNaN(nameArr[i] - 0)) {
        return false;
      }
    }
    if (nameArr.length < 2 || /[^a-zA-Z0-9]/.test(name)) {
      return false;
    }

    return true;
  };

  const validateEmail = (email) => {
    let emailArr = email.split("");
    let countAt = 0;
    let countDot = 0;
    for (let i = 0; i < emailArr.length; i++) {
      if (emailArr[i] === "@") {
        countAt++;
      }
      if (emailArr[i] === ".") {
        countDot++;
      }
    }
    if (countAt === 1 && countDot >= 1) {
      return true;
    }
    return false;
  };

  $(".submit-button").on("click", function () {
    if (!validateName($(".fn-input").val())) {
      alert("invalid first name");
    }
    if (!validateName($(".ln-input").val())) {
      alert("invalid last name");
    }
    if (!validateEmail($(".email-input").val())) {
      alert("invalid email");
    }
  });

  $(".submit-button").on("click", function () {
    if (
      validateName($(".fn-input").val()) &&
      validateName($(".ln-input").val()) &&
      validateEmail($(".email-input").val())
    ) {
      $(".pop-up").html("<button class='close1'>X</button><p>WELCOME TO THE CUTTING EDGE OF VR</p> <p>We’ll keep you updated with the latest from Oculus!</p> <p><button class='back-btn'>BACK TO SITE</button></p>");
      $(".close1").on("click", function () {
        $(".pop-up").removeClass("show");
      });
      $(".back-btn").on("click", function () {
        $(".pop-up").removeClass("show");
      });
    }
  });



  // $(".header-name").text("show!");
});
