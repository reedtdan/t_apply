class AddUserApplicationDetails < ActiveRecord::Migration
  def up
    add_column :users, :DOB, :string
    add_column :users, :POB, :text
    add_column :users, :Perm_Address, :text
    add_column :users, :Cur_Address, :text
    add_column :users, :Telephone, :string
    add_column :users, :Current_Year, :text
    add_column :users, :Grad_Level, :string
    add_column :users, :Expected_Grad_Date, :string
    add_column :users, :Interests, :text
    add_column :users, :School1, :text
    add_column :users, :School2, :text
    add_column :users, :School3, :text
    add_column :users, :Honors_Awards, :text
    add_column :users, :Extra_Comm_Service, :text
    add_column :users, :Work_Experience, :text
    add_column :users, :Parent1_Name, :text
    add_column :users, :Parent1_Phone, :text
    add_column :users, :Parent1_Email, :text
    add_column :users, :Parent2_Name, :text
    add_column :users, :Parent2_Phone, :text
    add_column :users, :Parent2_Email, :text
    add_column :users, :Background, :text
    add_column :users, :Gender, :text
    add_column :users, :Parent_Ed, :text
    add_column :users, :Parent_Occupation, :text
    add_column :users, :Telluride_Learn, :text
    add_column :users, :Sig_Name, :text
    add_column :users, :Sig_Date, :text
  end

  def down
  end
end
