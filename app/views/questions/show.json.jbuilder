json.partial! 'questions/question', question: @question.decorate

json.comments @question.comments.common_includes.visible_to_public.order(created_at: :asc), partial: 'comments/comment', as: :comment
