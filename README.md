hashtags
========

You start working for a fancy new startup hoping to revolutionize social networking! GASP! They had this great idea that users should be able to specify relevant keywords to their posts using an ingenious idea by prefixing those keywords with the pound sign (#). Your job is to extract those keywords so that they can be used later on for whatever purposes.

##Note:

1. Pound signs alone do not count, for example: the string "#" would return an empty array.
1. If a word is preceded by more than one hashtag, only the last hashtag counts (e.g. "##alot" would return ["alot"])
1. Hashtags cannot be within the middle of a word (e.g. "in#line hashtag" returns an empty array)
1. Hashtags must precede alphabetical characters (e.g. "#120398" or "#?" are invalid)

###Input: String of words, where some words may contain a hashtag.
###Output: Array of strings that were prefixed with the hashtag, but do not contain the hashtag.
