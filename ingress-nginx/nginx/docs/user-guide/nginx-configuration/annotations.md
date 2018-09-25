# Annotations

You can add these Kubernetes annotations to specific Ingress objects to customize their behavior.

!!! tip
    Annotation keys and values can only be strings.
    Other types, such as boolean or numeric values must be quoted,
    i.e. `"true"`, `"false"`, `"100"`.

!!! note
    The annotation prefix can be changed using the
    [`--annotations-prefix` command line argument](../cli-arguments.md),
    but the default is `nginx.ingress.kubernetes.io`, as described in the
    table below.

|Name                       | type |
|---------------------------|------|
|[nginx.ingress.kubernetes.io/add-base-url](#rewrite)|"true" or "false"|
|[nginx.ingress.kubernetes.io/app-root](#rewrite)|string|
|[nginx.ingress.kubernetes.io/affinity](#session-affinity)|cookie|
|[nginx.ingress.kubernetes.io/auth-realm](#authentication)|string|
|[nginx.ingress.kubernetes.io/auth-secret](#authentication)|string|
|[nginx.ingress.kubernetes.io/auth-type](#authentication)|basic or digest|
|[nginx.ingress.kubernetes.io/auth-tls-secret](#client-certificate-authentication)|string|
|[nginx.ingress.kubernetes.io/auth-tls-verify-depth](#client-certificate-authentication)|number|
|[nginx.ingress.kubernetes.io/auth-tls-verify-client](#client-certificate-authentication)|string|
|[nginx.ingress.kubernetes.io/auth-tls-error-page](#client-certificate-authentication)|string|
|[nginx.ingress.kubernetes.io/auth-tls-pass-certificate-to-upstream](#client-certificate-authentication)|"true" or "false"|
|[nginx.ingress.kubernetes.io/auth-url](#external-authentication)|string|
|[nginx.ingress.kubernetes.io/backend-protocol](#backend-protocol)|string|HTTP,HTTPS,GRPC,GRPCS,AJP|
|[nginx.ingress.kubernetes.io/base-url-scheme](#rewrite)|string|
|[nginx.ingress.kubernetes.io/client-body-buffer-size](#client-body-buffer-size)|string|
|[nginx.ingress.kubernetes.io/configuration-snippet](#configuration-snippet)|string|
|[nginx.ingress.kubernetes.io/default-backend](#default-backend)|string|
|[nginx.ingress.kubernetes.io/enable-cors](#enable-cors)|"true" or "false"|
|[nginx.ingress.kubernetes.io/cors-allow-origin](#enable-cors)|string|
|[nginx.ingress.kubernetes.io/cors-allow-methods](#enable-cors)|string|
|[nginx.ingress.kubernetes.io/cors-allow-headers](#enable-cors)|string|
|[nginx.ingress.kubernetes.io/cors-allow-credentials](#enable-cors)|"true" or "false"|
|[nginx.ingress.kubernetes.io/cors-max-age](#enable-cors)|number|
|[nginx.ingress.kubernetes.io/force-ssl-redirect](#server-side-https-enforcement-through-redirect)|"true" or "false"|
|[nginx.ingress.kubernetes.io/from-to-www-redirect](#redirect-from-to-www)|"true" or "false"|
|[nginx.ingress.kubernetes.io/grpc-backend](#grpc-backend)|"true" or "false"|
|[nginx.ingress.kubernetes.io/limit-connections](#rate-limiting)|number|
|[nginx.ingress.kubernetes.io/limit-rps](#rate-limiting)|number|
|[nginx.ingress.kubernetes.io/permanent-redirect](#permanent-redirect)|string|
|[nginx.ingress.kubernetes.io/permanent-redirect-code](#permanent-redirect-code)|number|
|[nginx.ingress.kubernetes.io/proxy-body-size](#custom-max-body-size)|string|
|[nginx.ingress.kubernetes.io/proxy-cookie-domain](#proxy-cookie-domain)|string|
|[nginx.ingress.kubernetes.io/proxy-connect-timeout](#custom-timeouts)|number|
|[nginx.ingress.kubernetes.io/proxy-send-timeout](#custom-timeouts)|number|
|[nginx.ingress.kubernetes.io/proxy-read-timeout](#custom-timeouts)|number|
|[nginx.ingress.kubernetes.io/proxy-next-upstream](#custom-timeouts)|string|
|[nginx.ingress.kubernetes.io/proxy-next-upstream-tries](#custom-timeouts)|number|
|[nginx.ingress.kubernetes.io/proxy-request-buffering](#custom-timeouts)|string|
|[nginx.ingress.kubernetes.io/proxy-redirect-from](#proxy-redirect)|string|
|[nginx.ingress.kubernetes.io/proxy-redirect-to](#proxy-redirect)|string|
|[nginx.ingress.kubernetes.io/rewrite-log](#enable-rewrite-log)|URI|
|[nginx.ingress.kubernetes.io/rewrite-target](#rewrite)|URI|
|[nginx.ingress.kubernetes.io/secure-backends](#secure-backends)|"true" or "false"|
|[nginx.ingress.kubernetes.io/secure-verify-ca-secret](#secure-backends)|string|
|[nginx.ingress.kubernetes.io/server-alias](#server-alias)|string|
|[nginx.ingress.kubernetes.io/server-snippet](#server-snippet)|string|
|[nginx.ingress.kubernetes.io/service-upstream](#service-upstream)|"true" or "false"|
|[nginx.ingress.kubernetes.io/session-cookie-name](#cookie-affinity)|string|
|[nginx.ingress.kubernetes.io/session-cookie-hash](#cookie-affinity)|string|
|[nginx.ingress.kubernetes.io/ssl-redirect](#server-side-https-enforcement-through-redirect)|"true" or "false"|
|[nginx.ingress.kubernetes.io/ssl-passthrough](#ssl-passthrough)|"true" or "false"|
|[nginx.ingress.kubernetes.io/upstream-max-fails](#custom-nginx-upstream-checks)|number|
|[nginx.ingress.kubernetes.io/upstream-fail-timeout](#custom-nginx-upstream-checks)|number|
|[nginx.ingress.kubernetes.io/upstream-hash-by](#custom-nginx-upstream-hashing)|string|
|[nginx.ingress.kubernetes.io/load-balance](#custom-nginx-load-balancing)|string|
|[nginx.ingress.kubernetes.io/upstream-vhost](#custom-nginx-upstream-vhost)|string|
|[nginx.ingress.kubernetes.io/whitelist-source-range](#whitelist-source-range)|CIDR|
|[nginx.ingress.kubernetes.io/proxy-buffering](#proxy-buffering)|string|
|[nginx.ingress.kubernetes.io/proxy-buffer-size](#proxy-buffer-size)|string|
|[nginx.ingress.kubernetes.io/ssl-ciphers](#ssl-ciphers)|string|
|[nginx.ingress.kubernetes.io/connection-proxy-header](#connection-proxy-header)|string|
|[nginx.ingress.kubernetes.io/enable-access-log](#enable-access-log)|"true" or "false"|
|[nginx.ingress.kubernetes.io/lua-resty-waf](#lua-resty-waf)|string|
|[nginx.ingress.kubernetes.io/lua-resty-waf-debug](#lua-resty-waf)|"true" or "false"|
|[nginx.ingress.kubernetes.io/lua-resty-waf-ignore-rulesets](#lua-resty-waf)|string|
|[nginx.ingress.kubernetes.io/lua-resty-waf-extra-rules](#lua-resty-waf)|string|
|[nginx.ingress.kubernetes.io/enable-influxdb](#influxdb)|"true" or "false"|
|[nginx.ingress.kubernetes.io/influxdb-measurement](#influxdb)|string|
|[nginx.ingress.kubernetes.io/influxdb-port](#influxdb)|string|
|[nginx.ingress.kubernetes.io/influxdb-host](#influxdb)|string|
|[nginx.ingress.kubernetes.io/influxdb-server-name](#influxdb)|string|

### Rewrite

In some scenarios the exposed URL in the backend service differs from the specified path in the Ingress rule. Without a rewrite any request will return 404.
Set the annotation `nginx.ingress.kubernetes.io/rewrite-target` to the path expected by the service.

If the application contains relative links it is possible to add an additional annotation `nginx.ingress.kubernetes.io/add-base-url` that will prepend a [`base` tag](https://developer.mozilla.org/en/docs/Web/HTML/Element/base) in the header of the returned HTML from the backend.

If the scheme of [`base` tag](https://developer.mozilla.org/en/docs/Web/HTML/Element/base) need to be specific, set the annotation `nginx.ingress.kubernetes.io/base-url-scheme` to the scheme such as `http` and `https`.

If the Application Root is exposed in a different path and needs to be redirected, set the annotation `nginx.ingress.kubernetes.io/app-root` to redirect requests for `/`.

!!! example
    Please check the [rewrite](../../examples/rewrite/README.md) example.

### Session Affinity

The annotation `nginx.ingress.kubernetes.io/affinity` enables and sets the affinity type in all Upstreams of an Ingress. This way, a request will always be directed to the same upstream server.
The only affinity type available for NGINX is `cookie`.

!!! example
    Please check the [affinity](../../examples/affinity/cookie/README.md) example.

#### Cookie affinity

If you use the ``cookie`` affinity type you can also specify the name of the cookie that will be used to route the requests with the annotation `nginx.ingress.kubernetes.io/session-cookie-name`. The default is to create a cookie named 'INGRESSCOOKIE'.

In case of NGINX the annotation `nginx.ingress.kubernetes.io/session-cookie-hash` defines which algorithm will be used to hash the used upstream. Default value is `md5` and possible values are `md5`, `sha1` and `index`.

!!! attention
    The `index` option is not an actual hash; an in-memory index is used instead, which has less overhead.
    However, with `index`, matching against a changing upstream server list is inconsistent.
    So, at reload, if upstream servers have changed, index values are not guaranteed to correspond to the same server as before!
    **Use `index` with caution** and only if you need to!

In NGINX this feature is implemented by the third party module [nginx-sticky-module-ng](https://bitbucket.org/nginx-goodies/nginx-sticky-module-ng). The workflow used to define which upstream server will be used is explained [here](https://bitbucket.org/nginx-goodies/nginx-sticky-module-ng/raw/08a395c66e425540982c00482f55034e1fee67b6/docs/sticky.pdf)


### Authentication

Is possible to add authentication adding additional annotations in the Ingress rule. The source of the authentication is a secret that contains usernames and passwords inside the key `auth`.

The annotations are:
```
nginx.ingress.kubernetes.io/auth-type: [basic|digest]
```

Indicates the [HTTP Authentication Type: Basic or Digest Access Authentication](https://tools.ietf.org/html/rfc2617).

```
nginx.ingress.kubernetes.io/auth-secret: secretName
```

The name of the Secret that contains the usernames and passwords which are granted access to the `path`s defined in the Ingress rules.
This annotation also accepts the alternative form "namespace/secretName", in which case the Secret lookup is performed in the referenced namespace instead of the Ingress namespace.

```
nginx.ingress.kubernetes.io/auth-realm: "realm string"
```

!!! example
    Please check the [auth](../../examples/auth/basic/README.md) example.

### Custom NGINX upstream checks

NGINX exposes some flags in the [upstream configuration](http://nginx.org/en/docs/http/ngx_http_upstream_module.html#upstream) that enable the configuration of each server in the upstream. The Ingress controller allows custom `max_fails` and `fail_timeout` parameters in a global context using `upstream-max-fails` and `upstream-fail-timeout` in the NGINX ConfigMap or in a particular Ingress rule. `upstream-max-fails` defaults to 0. This means NGINX will respect the container's `readinessProbe` if it is defined. If there is no probe and no values for `upstream-max-fails` NGINX will continue to send traffic to the container.


!!! tip
	With the default configuration NGINX will not health check your backends. Whenever the endpoints controller notices a readiness probe failure, that pod's IP will be removed from the list of endpoints. This will trigger the NGINX controller to also remove it from the upstreams.**

To use custom values in an Ingress rule define these annotations:

`nginx.ingress.kubernetes.io/upstream-max-fails`: number of unsuccessful attempts to communicate with the server that should occur in the duration set by the `upstream-fail-timeout` parameter to consider the server unavailable.

`nginx.ingress.kubernetes.io/upstream-fail-timeout`: time in seconds during which the specified number of unsuccessful attempts to communicate with the server should occur to consider the server unavailable. This is also the period of time the server will be considered unavailable.

In NGINX, backend server pools are called "[upstreams](http://nginx.org/en/docs/http/ngx_http_upstream_module.html)". Each upstream contains the endpoints for a service. An upstream is created for each service that has Ingress rules defined.

!!! attention
	All Ingress rules using the same service will use the same upstream.  
    Only one of the Ingress rules should define annotations to configure the upstream servers.

!!! example
    Please check the [custom upstream check](../../examples/customization/custom-upstream-check/README.md) example.

### Custom NGINX upstream hashing

NGINX supports load balancing by client-server mapping based on [consistent hashing](http://nginx.org/en/docs/http/ngx_http_upstream_module.html#hash) for a given key. The key can contain text, variables or any combination thereof. This feature allows for request stickiness other than client IP or cookies. The [ketama](http://www.last.fm/user/RJ/journal/2007/04/10/392555/) consistent hashing method will be used which ensures only a few keys would be remapped to different servers on upstream group changes.

To enable consistent hashing for a backend:

`nginx.ingress.kubernetes.io/upstream-hash-by`: the nginx variable, text value or any combination thereof to use for consistent hashing. For example `nginx.ingress.kubernetes.io/upstream-hash-by: "$request_uri"` to consistently hash upstream requests by the current request URI.

### Custom NGINX load balancing

This is similar to (https://github.com/kubernetes/ingress-nginx/blob/master/docs/user-guide/nginx-configuration/configmap.md#load-balance) but configures load balancing algorithm per ingress.
>Note that `nginx.ingress.kubernetes.io/upstream-hash-by` takes preference over this. If this and `nginx.ingress.kubernetes.io/upstream-hash-by` are not set then we fallback to using globally configured load balancing algorithm.

### Custom NGINX upstream vhost

This configuration setting allows you to control the value for host in the following statement: `proxy_set_header Host $host`, which forms part of the location block.  This is useful if you need to call the upstream server by something other than `$host`.

### Client Certificate Authentication

It is possible to enable Client Certificate Authentication using additional annotations in Ingress Rule.

The annotations are:

* `nginx.ingress.kubernetes.io/auth-tls-secret: secretName`:
  The name of the Secret that contains the full Certificate Authority chain `ca.crt` that is enabled to authenticate against this Ingress.
  This annotation also accepts the alternative form "namespace/secretName", in which case the Secret lookup is performed in the referenced namespace instead of the Ingress namespace.
* `nginx.ingress.kubernetes.io/auth-tls-verify-depth`:
  The validation depth between the provided client certificate and the Certification Authority chain.
* `nginx.ingress.kubernetes.io/auth-tls-verify-client`:
  Enables verification of client certificates.
* `nginx.ingress.kubernetes.io/auth-tls-error-page`:
  The URL/Page that user should be redirected in case of a Certificate Authentication Error
* `nginx.ingress.kubernetes.io/auth-tls-pass-certificate-to-upstream`:
  Indicates if the received certificates should be passed or not to the upstream server.  By default this is disabled.

!!! example
    Please check the [client-certs](../../examples/auth/client-certs/README.md) example.

!!! attention
    TLS with Client Authentication is **not** possible in Cloudflare and might result in unexpected behavior.

    Cloudflare only allows Authenticated Origin Pulls and is required to use their own certificate: [https://blog.cloudflare.com/protecting-the-origin-with-tls-authenticated-origin-pulls/](https://blog.cloudflare.com/protecting-the-origin-with-tls-authenticated-origin-pulls/)

    Only Authenticated Origin Pulls are allowed and can be configured by following their tutorial: [https://support.cloudflare.com/hc/en-us/articles/204494148-Setting-up-NGINX-to-use-TLS-Authenticated-Origin-Pulls](https://support.cloudflare.com/hc/en-us/articles/204494148-Setting-up-NGINX-to-use-TLS-Authenticated-Origin-Pulls)


### Configuration snippet

Using this annotation you can add additional configuration to the NGINX location. For example:

```yaml
nginx.ingress.kubernetes.io/configuration-snippet: |
  more_set_headers "Request-Id: $req_id";
```

### Default Backend

The ingress controller requires a [default backend](../default-backend.md).
This service handles the response when the service in the Ingress rule does not have endpoints.
This is a global configuration for the ingress controller. In some cases could be required to return a custom content or format. In this scenario we can use the annotation `nginx.ingress.kubernetes.io/default-backend: <svc name>` to specify a custom default backend.

### Enable CORS

To enable Cross-Origin Resource Sharing (CORS) in an Ingress rule, add the annotation
`nginx.ingress.kubernetes.io/enable-cors: "true"`. This will add a section in the server
location enabling this functionality.

CORS can be controlled with the following annotations:

* `nginx.ingress.kubernetes.io/cors-allow-methods`
  controls which methods are accepted. This is a multi-valued field, separated by ',' and
  accepts only letters (upper and lower case).
  - Default: `GET, PUT, POST, DELETE, PATCH, OPTIONS`
  - Example: `nginx.ingress.kubernetes.io/cors-allow-methods: "PUT, GET, POST, OPTIONS"`

* `nginx.ingress.kubernetes.io/cors-allow-headers`
  controls which headers are accepted. This is a multi-valued field, separated by ',' and accepts letters,
  numbers, _ and -.
  - Default: `DNT,X-CustomHeader,Keep-Alive,User-Agent,X-Requested-With,If-Modified-Since,Cache-Control,Content-Type,Authorization`
  - Example: `nginx.ingress.kubernetes.io/cors-allow-headers: "X-Forwarded-For, X-app123-XPTO"`

* `nginx.ingress.kubernetes.io/cors-allow-origin`
  controls what's the accepted Origin for CORS.
  This is a single field value, with the following format: `http(s)://origin-site.com` or `http(s)://origin-site.com:port`
  - Default: `*`
  - Example: `nginx.ingress.kubernetes.io/cors-allow-origin: "https://origin-site.com:4443"`

* `nginx.ingress.kubernetes.io/cors-allow-credentials`
  controls if credentials can be passed during CORS operations.
  - Default: `true`
  - Example: `nginx.ingress.kubernetes.io/cors-allow-credentials: "false"`

* `nginx.ingress.kubernetes.io/cors-max-age`
  controls how long preflight requests can be cached.
  Default: `1728000`
  Example: `nginx.ingress.kubernetes.io/cors-max-age: 600`

!!! note
    For more information please see [https://enable-cors.org](https://enable-cors.org/server_nginx.html) 

### Server Alias

To add Server Aliases to an Ingress rule add the annotation `nginx.ingress.kubernetes.io/server-alias: "<alias>"`.
This will create a server with the same configuration, but a different `server_name` as the provided host.

!!! Note
	A server-alias name cannot conflict with the hostname of an existing server. If it does the server-alias annotation will be ignored.
    If a server-alias is created and later a new server with the same hostname is created,
    the new server configuration will take place over the alias configuration.

For more information please see [the `server_name` documentation](http://nginx.org/en/docs/http/ngx_http_core_module.html#server_name).

### Server snippet

Using the annotation `nginx.ingress.kubernetes.io/server-snippet` it is possible to add custom configuration in the server configuration block.

```yaml
apiVersion: extensions/v1beta1
kind: Ingress
metadata:
  annotations:
    nginx.ingress.kubernetes.io/server-snippet: |
set $agentflag 0;

if ($http_user_agent ~* "(Mobile)" ){
  set $agentflag 1;
}

if ( $agentflag = 1 ) {
  return 301 https://m.example.com;
}
```

!!! attention
    This annotation can be used only once per host.

### Client Body Buffer Size

Sets buffer size for reading client request body per location. In case the request body is larger than the buffer,
the whole body or only its part is written to a temporary file. By default, buffer size is equal to two memory pages.
This is 8K on x86, other 32-bit platforms, and x86-64. It is usually 16K on other 64-bit platforms. This annotation is
applied to each location provided in the ingress rule.

!!! note
    The annotation value must be given in a format understood by Nginx.

!!! example

    * `nginx.ingress.kubernetes.io/client-body-buffer-size: "1000"` # 1000 bytes
    * `nginx.ingress.kubernetes.io/client-body-buffer-size: 1k` # 1 kilobyte
    * `nginx.ingress.kubernetes.io/client-body-buffer-size: 1K` # 1 kilobyte
    * `nginx.ingress.kubernetes.io/client-body-buffer-size: 1m` # 1 megabyte
    * `nginx.ingress.kubernetes.io/client-body-buffer-size: 1M` # 1 megabyte

For more information please see [http://nginx.org](http://nginx.org/en/docs/http/ngx_http_core_module.html#client_body_buffer_size)

### External Authentication

To use an existing service that provides authentication the Ingress rule can be annotated with `nginx.ingress.kubernetes.io/auth-url` to indicate the URL where the HTTP request should be sent.

```yaml
nginx.ingress.kubernetes.io/auth-url: "URL to the authentication service"
```

Additionally it is possible to set:

* `nginx.ingress.kubernetes.io/auth-method`:
  `<Method>` to specify the HTTP method to use.
* `nginx.ingress.kubernetes.io/auth-signin`:
  `<SignIn_URL>` to specify the location of the error page.
* `nginx.ingress.kubernetes.io/auth-response-headers`:
  `<Response_Header_1, ..., Response_Header_n>` to specify headers to pass to backend once authentication request completes.
* `nginx.ingress.kubernetes.io/auth-request-redirect`:
  `<Request_Redirect_URL>`  to specify the X-Auth-Request-Redirect header value.

!!! example
    Please check the [external-auth](../../examples/auth/external-auth/README.md) example.

### Rate limiting

These annotations define a limit on the connections that can be opened by a single client IP address.
This can be used to mitigate [DDoS Attacks](https://www.nginx.com/blog/mitigating-ddos-attacks-with-nginx-and-nginx-plus).

* `nginx.ingress.kubernetes.io/limit-connections`: number of concurrent connections allowed from a single IP address.
* `nginx.ingress.kubernetes.io/limit-rps`: number of connections that may be accepted from a given IP each second.
* `nginx.ingress.kubernetes.io/limit-rpm`: number of connections that may be accepted from a given IP each minute.
* `nginx.ingress.kubernetes.io/limit-rate-after`: sets the initial amount after which the further transmission of a response to a client will be rate limited.
* `nginx.ingress.kubernetes.io/limit-rate`: rate of request that accepted from a client each second.

You can specify the client IP source ranges to be excluded from rate-limiting through the `nginx.ingress.kubernetes.io/limit-whitelist` annotation. The value is a comma separated list of CIDRs.

If you specify multiple annotations in a single Ingress rule, `limit-rpm`, and then `limit-rps` takes precedence.

The annotation `nginx.ingress.kubernetes.io/limit-rate`, `nginx.ingress.kubernetes.io/limit-rate-after` define a limit the rate of response transmission to a client. The rate is specified in bytes per second. The zero value disables rate limiting. The limit is set per a request, and so if a client simultaneously opens two connections, the overall rate will be twice as much as the specified limit.

To configure this setting globally for all Ingress rules, the `limit-rate-after` and `limit-rate` value may be set in the [NGINX ConfigMap][configmap]. if you set the value in ingress annotation will cover global setting.

### Permanent Redirect

This annotation allows to return a permanent redirect instead of sending data to the upstream.  For example `nginx.ingress.kubernetes.io/permanent-redirect: https://www.google.com` would redirect everything to Google.

### Permanent Redirect Code

This annotation allows you to modify the status code used for permanent redirects.  For example `nginx.ingress.kubernetes.io/permanent-redirect-code: '308'` would return your permanent-redirect with a 308.

### SSL Passthrough

The annotation `nginx.ingress.kubernetes.io/ssl-passthrough` instructs the controller to send TLS connections directly
to the backend instead of letting NGINX decrypt the communication. See also [TLS/HTTPS](../tls/#ssl-passthrough) in
the User guide.

!!! note
    SSL Passthrough is **disabled by default** and requires starting the controller with the
    [`--enable-ssl-passthrough`](../cli-arguments/) flag.

!!! attention
    Because SSL Passthrough works on layer 4 of the OSI model (TCP) and not on the layer 7 (HTTP), using SSL Passthrough
    invalidates all the other annotations set on an Ingress object.

### Secure backends DEPRECATED (since 0.18.0)

Please use `nginx.ingress.kubernetes.io/backend-protocol: "HTTPS"`

By default NGINX uses plain HTTP to reach the services.
Adding the annotation `nginx.ingress.kubernetes.io/secure-backends: "true"` in the Ingress rule changes the protocol to HTTPS.
If you want to validate the upstream against a specific certificate, you can create a secret with it and reference the secret with the annotation `nginx.ingress.kubernetes.io/secure-verify-ca-secret`.

!!! attention

    Note that if an invalid or non-existent secret is given,
    the ingress controller will ignore the `secure-backends` annotation.

### Service Upstream

By default the NGINX ingress controller uses a list of all endpoints (Pod IP/port) in the NGINX upstream configuration.

The `nginx.ingress.kubernetes.io/service-upstream` annotation disables that behavior and instead uses a single upstream in NGINX, the service's Cluster IP and port.

This can be desirable for things like zero-downtime deployments as it reduces the need to reload NGINX configuration when Pods come up and down. See issue [#257](https://github.com/kubernetes/ingress-nginx/issues/257).

#### Known Issues

If the `service-upstream` annotation is specified the following things should be taken into consideration:

* Sticky Sessions will not work as only round-robin load balancing is supported.
* The `proxy_next_upstream` directive will not have any effect meaning on error the request will not be dispatched to another upstream.

### Server-side HTTPS enforcement through redirect

By default the controller redirects (308) to HTTPS if TLS is enabled for that ingress.
If you want to disable this behavior globally, you can use `ssl-redirect: "false"` in the NGINX [config map][configmap].

To configure this feature for specific ingress resources, you can use the `nginx.ingress.kubernetes.io/ssl-redirect: "false"`
annotation in the particular resource.

When using SSL offloading outside of cluster (e.g. AWS ELB) it may be useful to enforce a redirect to HTTPS
even when there is no TLS certificate available.
This can be achieved by using the `nginx.ingress.kubernetes.io/force-ssl-redirect: "true"` annotation in the particular resource.

### Redirect from/to www.

In some scenarios is required to redirect from `www.domain.com` to `domain.com` or vice versa.
To enable this feature use the annotation `nginx.ingress.kubernetes.io/from-to-www-redirect: "true"`

!!! attention
    If at some point a new Ingress is created with a host equal to one of the options (like `domain.com`) the annotation will be omitted.

### Whitelist source range

You can specify allowed client IP source ranges through the `nginx.ingress.kubernetes.io/whitelist-source-range` annotation.
The value is a comma separated list of [CIDRs](https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing), e.g.  `10.0.0.0/24,172.10.0.1`.

To configure this setting globally for all Ingress rules, the `whitelist-source-range` value may be set in the [NGINX ConfigMap][configmap].

!!! note
    Adding an annotation to an Ingress rule overrides any global restriction.

### Custom timeouts

Using the configuration configmap it is possible to set the default global timeout for connections to the upstream servers.
In some scenarios is required to have different values. To allow this we provide annotations that allows this customization:

- `nginx.ingress.kubernetes.io/proxy-connect-timeout`
- `nginx.ingress.kubernetes.io/proxy-send-timeout`
- `nginx.ingress.kubernetes.io/proxy-read-timeout`
- `nginx.ingress.kubernetes.io/proxy-next-upstream`
- `nginx.ingress.kubernetes.io/proxy-next-upstream-tries`
- `nginx.ingress.kubernetes.io/proxy-request-buffering`

### Proxy redirect

With the annotations `nginx.ingress.kubernetes.io/proxy-redirect-from` and `nginx.ingress.kubernetes.io/proxy-redirect-to` it is possible to
set the text that should be changed in the `Location` and `Refresh` header fields of a proxied server response (http://nginx.org/en/docs/http/ngx_http_proxy_module.html#proxy_redirect)

Setting "off" or "default" in the annotation `nginx.ingress.kubernetes.io/proxy-redirect-from` disables `nginx.ingress.kubernetes.io/proxy-redirect-to`,
otherwise, both annotations must be used in unison. Note that each annotation must be a string without spaces.

By default the value of each annotation is "off".

### Custom max body size

For NGINX, an 413 error will be returned to the client when the size in a request exceeds the maximum allowed size of the client request body. This size can be configured by the parameter [`client_max_body_size`](http://nginx.org/en/docs/http/ngx_http_core_module.html#client_max_body_size).

To configure this setting globally for all Ingress rules, the `proxy-body-size` value may be set in the [NGINX ConfigMap][configmap].
To use custom values in an Ingress rule define these annotation:

```yaml
nginx.ingress.kubernetes.io/proxy-body-size: 8m
```

### Proxy cookie domain

Sets a text that [should be changed in the domain attribute](http://nginx.org/en/docs/http/ngx_http_proxy_module.html#proxy_cookie_domain) of the "Set-Cookie" header fields of a proxied server response.

To configure this setting globally for all Ingress rules, the `proxy-cookie-domain` value may be set in the [NGINX ConfigMap][configmap].

### Proxy buffering

Enable or disable proxy buffering [`proxy_buffering`](http://nginx.org/en/docs/http/ngx_http_proxy_module.html#proxy_buffering).
By default proxy buffering is disabled in the NGINX config.

To configure this setting globally for all Ingress rules, the `proxy-buffering` value may be set in the [NGINX ConfigMap][configmap].
To use custom values in an Ingress rule define these annotation:

```yaml
nginx.ingress.kubernetes.io/proxy-buffering: "on"
```

### Proxy buffer size

Sets the size of the buffer [`proxy_buffer_size`](http://nginx.org/en/docs/http/ngx_http_proxy_module.html#proxy_buffer_size) used for reading the first part of the response received from the proxied server.
By default proxy buffer size is set as "4k"

To configure this setting globally, set `proxy-buffer-size` in [NGINX ConfigMap][configmap]. To use custom values in an Ingress rule, define this annotation:
```yaml
nginx.ingress.kubernetes.io/proxy-buffer-size: "8k"
```

### SSL ciphers

Specifies the [enabled ciphers](http://nginx.org/en/docs/http/ngx_http_ssl_module.html#ssl_ciphers).

Using this annotation will set the `ssl_ciphers` directive at the server level. This configuration is active for all the paths in the host.

```yaml
nginx.ingress.kubernetes.io/ssl-ciphers: "ALL:!aNULL:!EXPORT56:RC4+RSA:+HIGH:+MEDIUM:+LOW:+SSLv2:+EXP"
```

### Connection proxy header

Using this annotation will override the default connection header set by NGINX.
To use custom values in an Ingress rule, define the annotation:

```yaml
nginx.ingress.kubernetes.io/connection-proxy-header: "keep-alive"
```

### Enable Access Log

Access logs are enabled by default, but in some scenarios access logs might be required to be disabled for a given
ingress. To do this, use the annotation:

```yaml
nginx.ingress.kubernetes.io/enable-access-log: "false"
```

### Enable Rewrite Log

Rewrite logs are not enabled by default. In some scenarios it could be required to enable NGINX rewrite logs.
Note that rewrite logs are sent to the error_log file at the notice level. To enable this feature use the annotation:

```yaml
nginx.ingress.kubernetes.io/enable-rewrite-log: "true"
```

### Lua Resty WAF

Using `lua-resty-waf-*` annotations we can enable and control the [lua-resty-waf](https://github.com/p0pr0ck5/lua-resty-waf)
Web Application Firewall per location.

Following configuration will enable the WAF for the paths defined in the corresponding ingress:

```yaml
nginx.ingress.kubernetes.io/lua-resty-waf: "active"
```

In order to run it in debugging mode you can set `nginx.ingress.kubernetes.io/lua-resty-waf-debug` to `"true"` in addition to the above configuration.
The other possible values for `nginx.ingress.kubernetes.io/lua-resty-waf` are `inactive` and `simulate`.
In `inactive` mode WAF won't do anything, whereas in `simulate` mode it will log a warning message if there's a matching WAF rule for given request. This is useful to debug a rule and eliminate possible false positives before fully deploying it.

`lua-resty-waf` comes with predefined set of rules [https://github.com/p0pr0ck5/lua-resty-waf/tree/84b4f40362500dd0cb98b9e71b5875cb1a40f1ad/rules](https://github.com/p0pr0ck5/lua-resty-waf/tree/84b4f40362500dd0cb98b9e71b5875cb1a40f1ad/rules) that covers ModSecurity CRS.
You can use `nginx.ingress.kubernetes.io/lua-resty-waf-ignore-rulesets` to ignore a subset of those rulesets. For an example:

```yaml
nginx.ingress.kubernetes.io/lua-resty-waf-ignore-rulesets: "41000_sqli, 42000_xss"
```

will ignore the two mentioned rulesets.

It is also possible to configure custom WAF rules per ingress using the `nginx.ingress.kubernetes.io/lua-resty-waf-extra-rules` annotation. For an example the following snippet will configure a WAF rule to deny requests with query string value that contains word `foo`:


```yaml
nginx.ingress.kubernetes.io/lua-resty-waf-extra-rules: '[=[ { "access": [ { "actions": { "disrupt" : "DENY" }, "id": 10001, "msg": "my custom rule", "operator": "STR_CONTAINS", "pattern": "foo", "vars": [ { "parse": [ "values", 1 ], "type": "REQUEST_ARGS" } ] } ], "body_filter": [], "header_filter":[] } ]=]'
```

For details on how to write WAF rules, please refer to [https://github.com/p0pr0ck5/lua-resty-waf](https://github.com/p0pr0ck5/lua-resty-waf).

### gRPC backend DEPRECATED (since 0.18.0)

Please use `nginx.ingress.kubernetes.io/backend-protocol: "GRPC"` or `nginx.ingress.kubernetes.io/backend-protocol: "GRPCS"`

Since NGINX 1.13.10 it is possible to expose [gRPC services natively](http://nginx.org/en/docs/http/ngx_http_grpc_module.html)

You only need to add the annotation `nginx.ingress.kubernetes.io/grpc-backend: "true"` to enable this feature.
Additionally, if the gRPC service requires TLS, add `nginx.ingress.kubernetes.io/secure-backends: "true"`.

!!! attention
    This feature requires HTTP2 to work which means we need to expose this service using HTTPS.
    Exposing a gRPC service using HTTP is not supported.

[configmap]: ./configmap.md

### InfluxDB

Using `influxdb-*` annotations we can monitor requests passing through a Location by sending them to an InfluxDB backend exposing the UDP socket
using the [nginx-influxdb-module](https://github.com/influxdata/nginx-influxdb-module/).

```yaml
nginx.ingress.kubernetes.io/enable-influxdb: "true"
nginx.ingress.kubernetes.io/influxdb-measurement: "nginx-reqs"
nginx.ingress.kubernetes.io/influxdb-port: "8089"
nginx.ingress.kubernetes.io/influxdb-host: "127.0.0.1"
nginx.ingress.kubernetes.io/influxdb-server-name: "nginx-ingress"
```

For the `influxdb-host` parameter you have two options:

- Use an InfluxDB server configured with the  [UDP protocol](https://docs.influxdata.com/influxdb/v1.5/supported_protocols/udp/) enabled. 
- Deploy Telegraf as a sidecar proxy to the Ingress controller configured to listen UDP with the [socket listener input](https://github.com/influxdata/telegraf/tree/release-1.6/plugins/inputs/socket_listener) and to write using
anyone of the [outputs plugins](https://github.com/influxdata/telegraf/tree/release-1.7/plugins/outputs) like InfluxDB, Apache Kafka,
Prometheus, etc.. (recommended)

It's important to remember that there's no DNS resolver at this stage so you will have to configure
an ip address to `nginx.ingress.kubernetes.io/influxdb-host`. If you deploy Influx or Telegraf as sidecar (another container in the same pod) this becomes straightforward since you can directly use `127.0.0.1`.

### Backend Protocol

Using `backend-protocol` annotations is possible to indicate how NGINX should communicate with the backend service.
Valid Values: HTTP, HTTPS, GRPC, GRPCS and AJP

By default NGINX uses `HTTP`.

Example:

```yaml
nginx.ingress.kubernetes.io/backend-protocol: "HTTPS"
```
