const AWS = require('aws-sdk');
const fs = require('fs');
const path = require('path');

const distUrl = 'YOUR_DISTRIBUTION_HERE';
const s3Key = 'YOUR_S3_OBJECT_KEY_HERE';
const cfAccessKeyId = 'YOUR_PUBLIC_KEY_ID_HERE';
let cfPrivateKey = fs.readFileSync(path.join(__dirname, 'private_key.pem'));


const signer = new AWS.CloudFront.Signer(cfAccessKeyId, cfPrivateKey)
const thirtySeconds = 30 * 1000; // 30 seconds
let cfObjectUrl = 'https://' + distUrl + '/' + s3Key;

const signedUrl = signer.getSignedUrl({
url: cfObjectUrl,
expires: Math.floor((Date.now() + thirtySeconds)/1000)
})

console.log(signedUrl)
