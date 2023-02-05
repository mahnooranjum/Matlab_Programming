function [ palindromic ] = palindrome( string )
    if length(string) < 1
        palindromic = logical(1);
        return;
    end
    if string(1) ~= string(length(string))
        palindromic = logical(0);
        return;
    end
    palindromic = palindrome(string(2:length(string)-1));
 end