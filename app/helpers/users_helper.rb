module UsersHelper

# def hr_insert(education)
#   (0..education.length).each do |i|
#     if i > 0
#       logger.info(i)
#       return raw("<hr class='line-break'>")
#     end
#   end
# end

  # def advancedSkills(skills)
  #   skills.each do |skill|
  #     if !skill.advanced.blank?
  #       data = raw("<div class='skill-box advanced-skill box-shadow'>
  #               <span class='skill-skill'>#{skill.skill}</span>
  #               <span class='skill-description'>#{skill.description if !skill.description.blank?}</span>
  #               #{link_to('edit', edit_user_skill_path(@user, skill.id))}
  #             </div>")
  #     end
  #   end
  # end
  #
  # def experiencedSkills(skills)
  #   skills.each do |skill|
  #     if skill.experienced?
  #       return raw("<div class='skill-box experienced-skill box-shadow'>
  #                     <span class='skill-skill'>#{skill.skill}</span>
  #                     <span class='skill-description'>#{skill.description if !skill.description.blank?}</span>
  #                   </div>")
  #     else
  #       return
  #     end
  #   end
  # end
  #
  # def beginnerSkills(skills)
  #   skills.each do |skill|
  #     if skill.beginner?
  #       return raw("<div class='skill-box beginner-skill box-shadow'>
  #                     <span class='skill-skill'>#{skill.skill}</span>
  #                     <span class='skill-description'>#{skill.description if !skill.description.blank?}</span>
  #                   </div>")
  #     else
  #       return
  #     end
  #   end
  # end
end
