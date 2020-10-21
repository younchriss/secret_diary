require 'secret_diary'

RSpec.describe SecretDiary do

    describe '#islocked' do
    
        it 'checks if diary is locked' do
            expect(subject.islocked).to eq true
        end
    
    end

end

RSpec.describe Activity do

    describe '#add_entry' do

        it 'adds an entry to the diary' do
            subject.instance_of_secret_diary.unlock
            subject.add_entry('Hey')
            expect(subject.get_entries).to eq ['Hey']
        end

        it 'throws an error if we add_entry before unlocking the diary' do
            expect { subject.add_entry('Hey') }.to raise_error 'Unlock diary before adding entry'
        end

    end

end