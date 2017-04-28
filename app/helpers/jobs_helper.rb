module JobsHelper
  def number(user, job)
    userArray = []
    jobArray = []

    userArray.push(user.morning, user.afternoon, user.evening, user.night)
    jobArray.push(job.morning, job.afternoon, job.evening, job.night)

    jobArray.each do |i|
      
    end
  end
end
