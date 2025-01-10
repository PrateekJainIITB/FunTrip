'use strict';

/**
 * navbar toggle
 */

const navToggleBtn = document.querySelector("[data-nav-toggle-btn]");
const header = document.querySelector("[data-header]");

navToggleBtn.addEventListener("click", function () {
  this.classList.toggle("active");
  header.classList.toggle("active");
});



/**
 * show go top btn when scroll window to 500px
 */

const goTopBtn = document.querySelector("[data-go-top]");

window.addEventListener("scroll", function () {
  window.scrollY >= 500 ? goTopBtn.classList.add("active")
    : goTopBtn.classList.remove("active");
});
document.addEventListener("DOMContentLoaded", function() {
  var storyIndex = 0;
  var stories = [
      {
          title: "The Shadow of the Chola Dynasty",
          url: "story1.html"
      },
      {
          title: "Another Story Title",
          url: "story2.html"
      },
      // Add more stories as needed
  ];

  function loadStory(index) {
      if (index >= 0 && index < stories.length) {
          document.getElementById('storyTitle').innerText = stories[index].title;
          window.location.href = stories[index].url;
      }
  }

  document.getElementById('prevButton').addEventListener('click', function() {
      if (storyIndex > 0) {
          storyIndex--;
          loadStory(storyIndex);
      }
  });

  document.getElementById('nextButton').addEventListener('click', function() {
      if (storyIndex < stories.length - 1) {
          storyIndex++;
          loadStory(storyIndex);
      }
  });
});
