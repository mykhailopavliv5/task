module TaskHelper
  def today_tasks_updated_count
    current_user.tasks.joins(:versions).where("DATE(versions.created_at) = ?", Time.zone.now.to_date).count
  end
end
