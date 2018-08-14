#!/bin/bash
echo "Starting inline via inliner.cm"

#cp index.html output.html

rm -rf inline_outlook.html
INLINE_OUTLOOK=$(curl 'https://inliner.cm/inline.php' 'Origin: https://inliner.cm' -H 'Content-Type: application/x-www-form-urlencoded' --silent --data-urlencode $"code=$(cat outlook.html)")
echo "$INLINE_NOT_OUTLOOK" | jq -r '.HTML' > inline_outlook.html
# sed -i -e 's#src="#src="http://brown-watson.yourfilehosted.review/#' inline_outlook.html
# rm -rf inline_outlook.html-e

# sed -i -e "s#url('#url('http://brown-watson.yourfilehosted.review/#" inline_outlook.html
# rm -rf inline_outlook.html-e


# rm -rf inline_not_outlook.html
# INLINE_NOT_OUTLOOK=$(curl 'https://inliner.cm/inline.php' 'Origin: https://inliner.cm' -H 'Content-Type: application/x-www-form-urlencoded' --silent --data-urlencode $"code=$(cat not_outlook.html)")
# echo "$INLINE_NOT_OUTLOOK" | jq -r '.HTML' > inline_not_outlook.html
# sed -i -e 's#src="#src="http://brown-watson.yourfilehosted.review/#' inline_not_outlook.html
# rm -rf inline_not_outlook.html-e

# sed -i -e "s#url('#url('http://brown-watson.yourfilehosted.review/#" inline_not_outlook.html
# rm -rf inline_not_outlook.html-e

echo "Inline complete"
#cat output.html | pbcopy
#echo "Copied to clipboard"