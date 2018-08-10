#!/bin/bash
echo "Starting inline via inliner.cm"
rm -rf inline.html
INLINE=$(curl 'https://inliner.cm/inline.php' 'Origin: https://inliner.cm' -H 'Content-Type: application/x-www-form-urlencoded' --silent --data-urlencode $"code=$(cat index.html)")
echo "$INLINE" | jq -r '.HTML' > inline.html
sed -i -e 's#src="#src="http://brown-watson.yourfilehosted.review/#' inline.html
rm -rf inline.html-e
echo "Inline complete"