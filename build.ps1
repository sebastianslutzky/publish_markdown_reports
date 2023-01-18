param(
    [switch] $buildOnly
)
if(!$buildOnly){
    pushd PublishMarkdownReports
    npm ci --prodution
    popd 
    npm ci
}
pushd PublishMarkdownReports
npm run build 
if(test-path tests){
    rm tests -recurse
}
popd 
npm run build 
