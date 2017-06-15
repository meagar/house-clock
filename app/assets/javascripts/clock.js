function $(selector) {
  return document.querySelector(selector)
}

var target = moment({year: 2017, month: 7, day: 31, hour: 0, minute: 0, second: 0});

var weeksEl = $('#clock .weeks')
var daysEl = $('#clock .days')
var hoursEl = $('#clock .hours')
var minutesEl = $('#clock .minutes')
var secondsEl = $('#clock .seconds')

updateClock = function () {
  var diff, endDate = target.clone(), now = moment();

  diff = endDate.diff(now, 'milliseconds', true);
  weeks = Math.floor(moment.duration(diff).asWeeks());

  diff = endDate.subtract('weeks', weeks).diff(now, 'milliseconds', true);
  days = Math.floor(moment.duration(diff).asDays());

  diff = endDate.subtract('days', days).diff(now, 'milliseconds', true);
  hours = Math.floor(moment.duration(diff).asHours());

  diff = endDate.subtract('hours', hours).diff(now, 'milliseconds', true);
  minutes = Math.floor(moment.duration(diff).asMinutes());

  diff = endDate.subtract('minutes', minutes).diff(now, 'milliseconds', true);
  seconds = Math.floor(moment.duration(diff).asSeconds());

  weeksEl.textContent = weeks
  daysEl.textContent = days
  hoursEl.textContent = hours
  minutesEl.textContent = minutes
  secondsEl.textContent = seconds
};

window.setInterval(updateClock, 1000);
updateClock();
