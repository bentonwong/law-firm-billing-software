class ChangeRateColumnInLawyers < ActiveRecord::Migration[5.0]
  def change
    change_column :lawyers, :rate, :decimal, precision: 8, scale: 2, :default => 0
  end
end
