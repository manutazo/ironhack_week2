require File.expand_path '../../model/profile_PasswordChecker.rb', __FILE__

describe '#PasswordChecker' do

	it 'password must be longer than 7 characters' do
		expect(PasswordChecker.new.check_length("12345678")).to eq(true)
	end
	it 'password must be longer than 7 characters' do
		expect(PasswordChecker.new.check_length("1234567")).to eq(false)
	end
	it 'password must be longer than 7 characters' do
		expect(PasswordChecker.new.check_length("123456")).to eq(false)
	end

	it 'password must contain at least 1 letter, 1 number and 1 symbol' do
		expect(PasswordChecker.new.check_characters("1%$asdsa$2222")).to eq(true)
	end
	it 'password must contain at least 1 letter, 1 number and 1 symbol' do
		expect(PasswordChecker.new.check_characters("1aewiufhwe")).to eq(false)
	end
	it 'password must contain at least 1 letter, 1 number and 1 symbol' do
		expect(PasswordChecker.new.check_characters("aewi$$ufhwe")).to eq(false)
	end
	it 'password must contain at least 1 letter, 1 number and 1 symbol' do
		expect(PasswordChecker.new.check_characters("12319990900")).to eq(false)
	end

	it 'password must contain at least 1 upcase 1 downcase' do
		expect(PasswordChecker.new.check_updowncase("aaafweWOWFIO")).to eq(true)
	end
	it 'password must contain at least 1 upcase 1 downcase' do
		expect(PasswordChecker.new.check_updowncase("aaafwegg")).to eq(false)
	end
	it 'password must contain at least 1 upcase 1 downcase' do
		expect(PasswordChecker.new.check_updowncase("WEFRIIE")).to eq(false)
	end

	it 'password must not contain name or email domain' do
		expect(PasswordChecker.new.check_email_name("WEFRIIE","rafa@example.com")).to eq(true)
	end
	it 'password must not contain name or email domain' do
		expect(PasswordChecker.new.check_email_name("22rafa2uh23o","rafa@example.com")).to eq(false)
	end
	it 'password must not contain name or email domain' do
		expect(PasswordChecker.new.check_email_name("weoiexample22","rafa@example.com")).to eq(false)
	end

	it 'password must be valid' do
		expect(PasswordChecker.new.check_password("223$$jwwJUI299","rafa@example.com")).to eq(true)
	end
	it 'password must be valid' do
		expect(PasswordChecker.new.check_password("2orafa2oOAAA","rafa@example.com")).to eq(false)
	end

end