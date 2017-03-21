// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/
window.onload = function() {
  var jobs = document.getElementsByClassName('job');
  var job_information = document.getElementsByClassName('information');

  function informationSlider() {
    job_information[0].classList.toggle('information-slide');
  };

  for(var i=0; i < jobs.length; i++) {
    console.log(i);
    jobs[i].addEventListener('click', informationSlider, false);
  };
};
