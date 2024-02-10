.class public Lcom/loopj/android/http/PreemptiveAuthorizationHttpRequestInterceptor;
.super Ljava/lang/Object;
.source "PreemptiveAuthorizationHttpRequestInterceptor.java"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 7
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    const-string v5, "http.auth.target-scope"

    invoke-interface {p2, v5}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/auth/AuthState;

    .line 40
    .local v1, "authState":Lorg/apache/http/auth/AuthState;
    const-string v5, "http.auth.credentials-provider"

    invoke-interface {p2, v5}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/client/CredentialsProvider;

    .line 42
    .local v3, "credsProvider":Lorg/apache/http/client/CredentialsProvider;
    const-string v5, "http.target_host"

    invoke-interface {p2, v5}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/http/HttpHost;

    .line 44
    .local v4, "targetHost":Lorg/apache/http/HttpHost;
    invoke-virtual {v1}, Lorg/apache/http/auth/AuthState;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object v5

    if-nez v5, :cond_0

    .line 45
    new-instance v0, Lorg/apache/http/auth/AuthScope;

    invoke-virtual {v4}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v6

    invoke-direct {v0, v5, v6}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;I)V

    .line 46
    .local v0, "authScope":Lorg/apache/http/auth/AuthScope;
    invoke-interface {v3, v0}, Lorg/apache/http/client/CredentialsProvider;->getCredentials(Lorg/apache/http/auth/AuthScope;)Lorg/apache/http/auth/Credentials;

    move-result-object v2

    .line 47
    .local v2, "creds":Lorg/apache/http/auth/Credentials;
    if-eqz v2, :cond_0

    .line 48
    new-instance v5, Lorg/apache/http/impl/auth/BasicScheme;

    invoke-direct {v5}, Lorg/apache/http/impl/auth/BasicScheme;-><init>()V

    invoke-virtual {v1, v5}, Lorg/apache/http/auth/AuthState;->setAuthScheme(Lorg/apache/http/auth/AuthScheme;)V

    .line 49
    invoke-virtual {v1, v2}, Lorg/apache/http/auth/AuthState;->setCredentials(Lorg/apache/http/auth/Credentials;)V

    .line 52
    .end local v0    # "authScope":Lorg/apache/http/auth/AuthScope;
    .end local v2    # "creds":Lorg/apache/http/auth/Credentials;
    :cond_0
    return-void
.end method
