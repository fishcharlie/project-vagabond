require 'rails_helper'  

	describe User do     
		subject(:user) {User.new}     
			describe "#name" do          
				it "allows the writing of a first name" do  
				user.first_name = "Monica"             
				expect(user.first_name).to eq("Monica")         
			end         
			it "allows the writing of a last name" do             
				user.last_name = "Rodewald"             
				expect(user.last_name).to eq("Rodewald")         
			end         
			it "hashes the password" do          
			   	user.password="hi"             
			   	user.password_confirmation="hi"             
			   	user.save             
			   	expect(user.password_digest).to_not eq("hi")         
			   	expect(user.password_digest).to_not eq(nil)        
			end     
		end 
	end  
	describe Post do     
		subject(:post) {Post.new}     
		describe '#post' do         
		it 'allows the writing of a title' do             
			post.title="something"             
			post.save             
			expect(post.title).to eq('something')        
		end     
	end 
end