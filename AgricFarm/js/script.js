// $("#moon").click(function(){
//     $(":root").css("--black-color", "#ffffff")
// })

// const slideImage = document.querySelectorAll('.slider-images');
// const slideContent = document.querySelectorAll('.slider-content');
// const prevSlider = document.querySelectorAll('.prev-slider');
// const nextSlider = document.querySelectorAll('.next-slider');
// const sliderDots = document.querySelectorAll('.slider-dots')
// let numberOfImages = slideImage.length;
// let slideWidth = slideImage[0].clientWidth;


// function init(){
//     slideImage.forEach((img,i)=>{
//         img.style.left = i * 100 +"%";
//     });

//     slideImage[0].classList.add('active');
//     NavigationDots();
// }

// function NavigationDots(){
//     for(let i = 0; i<numberOfImages;i++){
//         const dot = document.createElement('div');
//         dot.classList.add('slider-dot');
//         sliderDots.appendChild(dot);

//     }
//     sliderDots.children[0].classList.add('active');

// }

// nextSlider.addEventListener('click',()=>{
// slideContent.style.transform = "translateX(-" +100 + "px)";
// });


// const slideImage = document.querySelectorAll(".slider-images");
// const slidesContainer = document.querySelector(".slider-content");
// const nextBtn = document.querySelector(".next-slider");
// const prevBtn = document.querySelector(".prev-slider");
// const navigationDots = document.querySelector(".slider-dots");

// let numberOfImages = slideImage.length;
// let slideWidth = slideImage[0].clientWidth;
// let currentSlide = 0;

// // Set up the slider

// function init() {
//   /*   
//     slideImage[0] = 0
//     slideImage[1] = 100%
//     slideImage[2] = 200%
//     */

//   slideImage.forEach((img, i) => {
//     img.style.left = i * 100 + "%";
//   });

//   slideImage[0].classList.add("active");

//   createNavigationDots();
// }

// init();

// // Create navigation dots

// function createNavigationDots() {
//   for (let i = 0; i < numberOfImages; i++) {
//     const dot = document.createElement("div");
//     dot.classList.add("slider-dot");
//     navigationDots.appendChild(dot);

//     dot.addEventListener("click", () => {
//       goToSlide(i);
//     });
//   }

//   navigationDots.children[0].classList.add("active");
// }

// // Next Button

// nextBtn.addEventListener("click", () => {
//   if (currentSlide >= numberOfImages - 1) {
//     goToSlide(0);
//     return;
//   }

//   currentSlide++;
//   goToSlide(currentSlide);
// });

// // Previous Button

// prevBtn.addEventListener("click", () => {
//   if (currentSlide <= 0) {
//     goToSlide(numberOfImages - 1);
//     return;
//   }

//   currentSlide--;
//   goToSlide(currentSlide);
// });

// // Go To Slide

// function goToSlide(slideNumber) {
//   slidesContainer.style.transform =
//     "translateX(-" + slideWidth * slideNumber + "px)";

//   currentSlide = slideNumber;

//   setActiveClass();
// }

// // Set Active Class

// function setActiveClass() {
//   // Set active class for Slide Image

//   let currentActive = document.querySelector(".slider-images.active");
//   currentActive.classList.remove("active");
//   slideImage[currentSlide].classList.add("active");

//   //   set active class for navigation dots

//   let currentDot = document.querySelector(".slider-dot.active");
//   currentDot.classList.remove("active");
//   navigationDots.children[currentSlide].classList.add("active");
// }


// const slideImage = document.querySelectorAll(".slide-image");
// const slidesContainer = document.querySelector(".slides-container");
// const nextBtn = document.querySelector(".next-btn");
// const prevBtn = document.querySelector(".prev-btn");
// const navigationDots = document.querySelector(".navigation-dots");

// let numberOfImages = slideImage.length;
// let slideWidth = slideImage[0].clientWidth;
// let currentSlide = 0;

// // Set up the slider

// function init() {
//   /*   
//     slideImage[0] = 0
//     slideImage[1] = 100%
//     slideImage[2] = 200%
//     */

//   slideImage.forEach((img, i) => {
//     img.style.left = i * 100 + "%";
//   });

//   slideImage[0].classList.add("active");

//   createNavigationDots();
// }

// init();

// // Create navigation dots

// function createNavigationDots() {
//   for (let i = 0; i < numberOfImages; i++) {
//     const dot = document.createElement("div");
//     dot.classList.add("single-dot");
//     navigationDots.appendChild(dot);

//     dot.addEventListener("click", () => {
//       goToSlide(i);
//     });
//   }

//   navigationDots.children[0].classList.add("active");
// }

// // Next Button

// nextBtn.addEventListener("click", () => {
//   if (currentSlide >= numberOfImages - 1) {
//     goToSlide(0);
//     return;
//   }

//   currentSlide++;
//   goToSlide(currentSlide);
// });

// // Previous Button

// prevBtn.addEventListener("click", () => {
//   if (currentSlide <= 0) {
//     goToSlide(numberOfImages - 1);
//     return;
//   }

//   currentSlide--;
//   goToSlide(currentSlide);
// });

// // Go To Slide

// function goToSlide(slideNumber) {
//   slidesContainer.style.transform =
//     "translateX(-" + slideWidth * slideNumber + "px)";

//   currentSlide = slideNumber;

//   setActiveClass();
// }

// // Set Active Class

// function setActiveClass() {
//   // Set active class for Slide Image

//   let currentActive = document.querySelector(".slide-image.active");
//   currentActive.classList.remove("active");
//   slideImage[currentSlide].classList.add("active");

//   //   set active class for navigation dots

//   let currentDot = document.querySelector(".single-dot.active");
//   currentDot.classList.remove("active");
//   navigationDots.children[currentSlide].classList.add("active");
// }


const slider = document.querySelector(".slider");
const btns = document.querySelectorAll(".btn");
const slides = document.querySelectorAll(".img");
const backgrounds = document.querySelectorAll('.bg');
const options = document.querySelectorAll('.option');

var index = 1;
var op_index = 0;
var size = slides[index].clientWidth;

update();

function update(){
	slider.style.transform = "translateX("+ (-size * index) +"px)";

	backgrounds.forEach(img => img.classList.remove('show'));
	backgrounds[op_index].classList.add('show');

	options.forEach(option => option.classList.remove('colored'));
	options[op_index].classList.add('colored');
}

function slide(){
	slider.style.transition = "transform .5s ease-in-out";
    update();
}

function btnCheck(){
	if(this.id === "prev"){
		index--;
		if(op_index === 0){
			op_index = 3;
		}
		else{
			op_index--;
		}
	}
	else{
		index++;
		if(op_index === 3){
			op_index = 0;
		}
		else{
			op_index++;
		}
	}

	slide();
}

function optionFunc(){
	let i = Number(this.getAttribute('op-index'));
	op_index = i;
	index = i + 1;

	slide();
}



slider.addEventListener('transitionend', () => {
	if(slides[index].id === "first"){
		slider.style.transition = "none";
		index = slides.length - 2;
		slider.style.transform = "translateX("+ (-size * index) +"px)";
	}
	else if(slides[index].id === "last"){
		slider.style.transition = "none";
		index = 1;
		slider.style.transform = "translateX("+ (-size * index) +"px)";
	}
})

btns.forEach(btn => btn.addEventListener('click', btnCheck));
options.forEach(option => option.addEventListener('click', optionFunc));



// Dark mode

var darkSwitch = document.getElementById("darkSwitch");
window.addEventListener("load", function () {
  if (darkSwitch) {
    initTheme();
    darkSwitch.addEventListener("change", function () {
      resetTheme();
    });
  }
});


function initTheme() {
  var darkThemeSelected =
    localStorage.getItem("darkSwitch") !== null &&
    localStorage.getItem("darkSwitch") === "dark";
  darkSwitch.checked = darkThemeSelected;
  darkThemeSelected
    ? document.body.setAttribute("data-theme", "dark")
    : document.body.removeAttribute("data-theme");
}

function resetTheme() {
  if (darkSwitch.checked) {
    document.body.setAttribute("data-theme", "dark");
    localStorage.setItem("darkSwitch", "dark");
  } else {
    document.body.removeAttribute("data-theme");
    localStorage.removeItem("darkSwitch");
  }
}


// Owl carousel
$(document).ready(function(){
	$(".owl-carousel").owlCarousel();
  });

  
$('.counter').counterUp({
    delay: 10,
    time: 1000
});