class AddAnswersCountToQuestions < ActiveRecord::Migration

  def self.up

    add_column :questions, :answers_count, :integer, :null => false, :default => 0

  end

  def self.down

    remove_column :questions, :answers_count

  end

end
