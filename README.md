# NGINX S3 Gateway

This project provides a working configuration of NGINX configured to act as an authenticating and caching gateway for to AWS S3 or another S3 compatible service. This allows you to proxy a private S3 bucket without requiring users to authenticate to it. Within the proxy layer, additional functionality can be configured such as:

- Listing the contents of a S3 bucket
- Providing an authentication gateway using an alternative authentication system to S3
- Caching frequently accessed S3 objects for lower latency delivery and protection against S3 outages
- For internal/micro services that can't authenticate against the S3 API (e.g. don't have libraries available) the gateway can provide a means to accessing S3 objects without authentication
- Compressing objects (gzip, brotli) from gateway to end user
- Protecting S3 bucket from arbitrary public access and traversal
- Rate limiting S3 objects
- Protecting a S3 bucket with a WAF
- Serving static assets from a S3 bucket alongside a dynamic application endpoints all in a single RESTful directory structure

All such functionality can be enabled within a standard NGINX configuration because this project is nothing other than NGINX with additional configuration that allows for proxying S3. It can be used as-is if the predefined configuration is sufficient, or it can serve as a base example for a more customized configuration.

If the predefined configuration does not meet your needs, it is best to borrow from the patterns in this project and build your own configuration. For example, if you want to enable SSL/TLS and compression in your NGINX S3 gateway configuration, you will need to look at other documentation because this project does not enable those features of NGINX.



Source https://github.com/nginxinc/nginx-s3-gateway
