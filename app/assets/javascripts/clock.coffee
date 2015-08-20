
$ ->
  target = moment(year: 2015, month: 11, day: 5, hour: 0, minute: 0, second: 0)

  updateClock = ->
    endDate = target.clone()
    now = moment()

    diff = endDate.diff(now, 'milliseconds', true)
    weeks = Math.floor(moment.duration(diff).asWeeks())

    diff = endDate.subtract('weeks', weeks).diff(now, 'milliseconds', true)
    days = Math.floor(moment.duration(diff).asDays())

    diff = endDate.subtract('days', days).diff(now, 'milliseconds', true)
    hours = Math.floor(moment.duration(diff).asHours())

    diff = endDate.subtract('hours', hours).diff(now, 'milliseconds', true)
    minutes = Math.floor(moment.duration(diff).asMinutes())

    diff = endDate.subtract('minutes', minutes).diff(now, 'milliseconds', true)
    seconds = Math.floor(moment.duration(diff).asSeconds())

    #months =  endDate.diff(now, 'months')
    #days =  endDate.diff(now, 'days')
    #hours = endDate.diff(now, 'hours')

    #$('#clock').find('.months').text(months)
    $('#clock').find('.weeks').text(weeks)
    $('#clock').find('.days').text(days)
    $('#clock').find('.hours').text(hours)
    $('#clock').find('.minutes').text(minutes)
    $('#clock').find('.seconds').text(seconds)
  window.setInterval(updateClock, 1000)
  updateClock()
