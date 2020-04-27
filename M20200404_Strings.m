clear
sentence = 'to be a rock and not to roll and shes buying a stairway to heaven';
words = regexp(sentence, " ", 'split')

numofchars = cellfun(@length, words)
outisempty = cellfun(@isempty, words)
outislogical = cellfun(@islogical, words)
outisreal = cellfun(@isreal, words)
out = cellfun(@(x) x(1), words,'UniformOutput',false)


words2kill = numofchars>3;
words = words(words2kill);

indexofheaven = strfind(sentence,'heaven');
newsentence = [sentence(1:indexofheaven-1) 'hell']