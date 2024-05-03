# == Schema Information
#
# Table name: submissions
#
#  id              :bigint           not null, primary key
#  description     :text
#  title           :text
#  track           :enum             default("infra"), not null
#  url             :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  hacking_team_id :bigint
#
# Indexes
#
#  index_submissions_on_hacking_team_id  (hacking_team_id)
#  index_submissions_on_track            (track)
#
# Foreign Keys
#
#  fk_rails_...  (hacking_team_id => hacking_teams.id)
#

class Submission < ApplicationRecord
  has_one :judgement

  belongs_to :hacking_team

  enum :track, {transact: "transact", infra: "infra", tooling: "tooling", social: "social"}
  validates :track, presence: true
  validates :track, inclusion: { in: tracks.keys }

  scope :unassigned, -> { Submission.left_outer_joins(:judgement).where(judgements: { id: nil }) }

  HUMAN_READABLE_TRACKS = {
    transact: "Freedom to Transact",
    infra: "Infrastructure",
    tooling: "Defensive Tooling",
    social: "Social Tech"
  }.with_indifferent_access

  TRACK_ICONS = {
    transact: "arrow-right-left",
    infra: "podcast",
    tooling: "pocket-knife",
    social: "hand-heart"
  }.with_indifferent_access

  after_create_commit :broadcast

  def self.distribute_unassigned!
    HUMAN_READABLE_TRACKS.keys.each do |track|
      # Shuffle the judging teams, so on subsequent runs the team #1 won't get more submissions on average
      team_ids = JudgingTeam.where(track: track).pluck(:id).shuffle.cycle
      Submission.unassigned.where(track: track).in_batches.each_record do |submission|
        Judgement.create!(judging_team_id: team_ids.next, submission: submission)
      end
    end
  end

  private
  def broadcast
    broadcast_append_to 'submissions', partial: 'submissions/tr', locals: { submission: self }
  end
end
