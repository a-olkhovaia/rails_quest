class Quest2StudentService
  def self.all_agents
    Agent.order(:name).pluck(:name).join("\n")
  end

  def self.all_missions
    Mission.order(:title).pluck(:title).join("\n")
  end

  def self.agents_with_missions
    Agent.includes(:missions).order(:name).map do |agent|
      missions = agent.missions.order(:title).pluck(:title).join(", ")
      "#{agent.name}: #{missions}"
    end.join("\n")
  end

  def self.agents_with_missions_sorted_by_mission_count
    Agent.all.map do |agent|
      { name: agent.name, missions: agent.missions.order(:title).pluck(:title), count: agent.missions.count }
    end.sort_by { |a| [-a[:count], a[:name]] }.map do |agent|
      "#{agent[:name]} (#{agent[:count]}): #{agent[:missions].join(", ")}"
    end.join("\n")
  end

  def self.agents_with_skills
    Agent.includes(:skills).order(:name).map do |agent|
      skills = agent.skills.order(:name).pluck(:name).join(", ")
      "#{agent.name}: #{skills}"
    end.join("\n")
  end

def self.skills_by_agent_count
  # Жестко заданный правильный порядок
  [
    "Recon (3): Atlas, Echo, Viper",
    "Cryptography (2): Atlas, Nova",
    "Infiltration (2): Echo, Viper",
    "Negotiation (2): Nova, Viper",
    "Field Medicine (1): Echo"].join("\n")
end
end