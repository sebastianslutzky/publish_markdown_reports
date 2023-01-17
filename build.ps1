pushd PublishMarkdownReports
npm ci --prodution
popd 
npm ci
pushd PublishMarkdownReports
npm run build 
rm tests --force
popd 
npm run build 
