module TaskHelper
  def today_tasks_updated_count
    current_user.tasks.undiscarded.joins(:versions).count
  end
end
