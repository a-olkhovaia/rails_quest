class Quest2DataService
  def self.tasks
    [
      {
        step: 1,
        key: :all_agents,
        expected_output: "Atlas\nEcho\nNova\nViper"
      },
      {
        step: 2,
        key: :all_missions,
        expected_output: "Ember Trace\nFrozen Cipher\nGhost Signal\nGlass Horizon\nHarbor Shield\nIron Veil\nMidnight Relay\nSapphire Run\nSilent Echo\nSolar Tide"
      },
      {
        step: 3,
        key: :agents_with_missions,
        expected_output: "Atlas: Harbor Shield, Midnight Relay, Silent Echo\nEcho: Ghost Signal, Iron Veil, Sapphire Run, Solar Tide\nNova: Frozen Cipher\nViper: Ember Trace, Glass Horizon"
      },
      {
        step: 4,
        key: :agents_with_missions_sorted_by_mission_count,
        expected_output: "Echo (4): Ghost Signal, Iron Veil, Sapphire Run, Solar Tide\nAtlas (3): Harbor Shield, Midnight Relay, Silent Echo\nViper (2): Ember Trace, Glass Horizon\nNova (1): Frozen Cipher"
      },
      {
        step: 5,
        key: :agents_with_skills,
        expected_output: "Atlas: Cryptography, Recon\nEcho: Field Medicine, Infiltration, Recon\nNova: Cryptography, Negotiation\nViper: Infiltration, Negotiation, Recon"
      },
      {
        step: 6,
        key: :skills_by_agent_count,
        expected_output: "Recon (3): Atlas, Echo, Viper\nCryptography (2): Atlas, Nova\nInfiltration (2): Echo, Viper\nNegotiation (2): Nova, Viper\nField Medicine (1): Echo"
      }
    ]
  end
end