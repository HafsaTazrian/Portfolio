var typed = new Typed(".multiple-text",{
    strings: ["FullStack Developer", "Student", "Android Developer"],
    typeSpeed: 100,
    backSpeed: 100,
    backDelay: 1000,
    loop: true
})
var btnContainer = document.querySelector('.navbar');
var btns= btnContainer.getElementsByClassName("btn1");

for (var i =0; i < btns.length; i++){
    btns[i].addEventListener('click', function() {
        var current = document.getElementsByClassName("active");
        current[0].className = current[0].className.replace("active");
        this.className += " active";
    })
}

/* Toggle navbar */
let menuIcon = document.querySelector("#menu-icon");
let navbar = document.querySelector('.navbar');

menuIcon.onclick = () =>{
    menuIcon.classList.toggle('bx-x');
    navbar.classList.toggle('active');
};

/* scroll section */
let sections = document.querySelectorAll('section');
let navlinks = document.querySelectorAll('header nav a');

window.onscroll = () => {
    sections.forEach(sec => {
        let top = window.scrollY;
        let offset = sec.offsetTop - 150;
        let height = sec.offsetHeight;
        let id = sec.getAttribute('id');
        
        if (top >= offset && top < offset + height) {
            navlinks.forEach(links => {
                links.classList.remove('active');
                
                document.querySelector('header nav a[href*=' + id + ']').classList.add('active');
                
            });
        };
    });


    /* sticky navbar */
    let header = document.querySelector('header');

    header.classList.toggle('sticky', window.scrollY > 100);

    /* remove toggle icon and navbar when click navbar link (scroll) */
    
    menuIcon.classList.remove('bx-x');
    navbar.classList.remove('active');
    

};

