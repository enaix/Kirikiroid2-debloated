.class public Lcom/loopj/android/http/MySSLSocketFactory;
.super Lorg/apache/http/conn/ssl/SSLSocketFactory;
.source "MySSLSocketFactory.java"


# instance fields
.field sslContext:Ljavax/net/ssl/SSLContext;


# direct methods
.method public constructor <init>(Ljava/security/KeyStore;)V
    .locals 5
    .param p1, "truststore"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 71
    invoke-direct {p0, p1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 59
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    iput-object v1, p0, Lcom/loopj/android/http/MySSLSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 73
    new-instance v0, Lcom/loopj/android/http/MySSLSocketFactory$1;

    invoke-direct {v0, p0}, Lcom/loopj/android/http/MySSLSocketFactory$1;-><init>(Lcom/loopj/android/http/MySSLSocketFactory;)V

    .line 85
    .local v0, "tm":Ljavax/net/ssl/X509TrustManager;
    iget-object v1, p0, Lcom/loopj/android/http/MySSLSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v4, v2, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 86
    return-void
.end method

.method public static getFixedSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .locals 3

    .prologue
    .line 169
    :try_start_0
    new-instance v0, Lcom/loopj/android/http/MySSLSocketFactory;

    invoke-static {}, Lcom/loopj/android/http/MySSLSocketFactory;->getKeystore()Ljava/security/KeyStore;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/loopj/android/http/MySSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 170
    .local v0, "socketFactory":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    sget-object v2, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v0, v2}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    return-object v0

    .line 171
    :catch_0
    move-exception v1

    .line 172
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 173
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v0

    goto :goto_0
.end method

.method public static getKeystore()Ljava/security/KeyStore;
    .locals 4

    .prologue
    .line 151
    const/4 v1, 0x0

    .line 153
    .local v1, "trustStore":Ljava/security/KeyStore;
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 154
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_0
    return-object v1

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static getKeystoreOfCA(Ljava/io/InputStream;)Ljava/security/KeyStore;
    .locals 10
    .param p0, "cert"    # Ljava/io/InputStream;

    .prologue
    .line 114
    const/4 v1, 0x0

    .line 115
    .local v1, "caInput":Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 117
    .local v0, "ca":Ljava/security/cert/Certificate;
    :try_start_0
    const-string v8, "X.509"

    invoke-static {v8}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    .line 118
    .local v3, "cf":Ljava/security/cert/CertificateFactory;
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    .end local v1    # "caInput":Ljava/io/InputStream;
    .local v2, "caInput":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v3, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 124
    if-eqz v2, :cond_0

    .line 125
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v1, v2

    .line 133
    .end local v2    # "caInput":Ljava/io/InputStream;
    .end local v3    # "cf":Ljava/security/cert/CertificateFactory;
    .restart local v1    # "caInput":Ljava/io/InputStream;
    :cond_1
    :goto_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v7

    .line 134
    .local v7, "keyStoreType":Ljava/lang/String;
    const/4 v6, 0x0

    .line 136
    .local v6, "keyStore":Ljava/security/KeyStore;
    :try_start_3
    invoke-static {v7}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v6

    .line 137
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 138
    const-string v8, "ca"

    invoke-virtual {v6, v8, v0}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 142
    :goto_1
    return-object v6

    .line 127
    .end local v1    # "caInput":Ljava/io/InputStream;
    .end local v6    # "keyStore":Ljava/security/KeyStore;
    .end local v7    # "keyStoreType":Ljava/lang/String;
    .restart local v2    # "caInput":Ljava/io/InputStream;
    .restart local v3    # "cf":Ljava/security/cert/CertificateFactory;
    :catch_0
    move-exception v4

    .line 128
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .line 130
    .end local v2    # "caInput":Ljava/io/InputStream;
    .restart local v1    # "caInput":Ljava/io/InputStream;
    goto :goto_0

    .line 120
    .end local v3    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v4    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v5

    .line 121
    .local v5, "e1":Ljava/security/cert/CertificateException;
    :goto_2
    :try_start_4
    invoke-virtual {v5}, Ljava/security/cert/CertificateException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 124
    if-eqz v1, :cond_1

    .line 125
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 127
    :catch_2
    move-exception v4

    .line 128
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 123
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "e1":Ljava/security/cert/CertificateException;
    :catchall_0
    move-exception v8

    .line 124
    :goto_3
    if-eqz v1, :cond_2

    .line 125
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 129
    :cond_2
    :goto_4
    throw v8

    .line 127
    :catch_3
    move-exception v4

    .line 128
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 139
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v6    # "keyStore":Ljava/security/KeyStore;
    .restart local v7    # "keyStoreType":Ljava/lang/String;
    :catch_4
    move-exception v4

    .line 140
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 123
    .end local v1    # "caInput":Ljava/io/InputStream;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "keyStore":Ljava/security/KeyStore;
    .end local v7    # "keyStoreType":Ljava/lang/String;
    .restart local v2    # "caInput":Ljava/io/InputStream;
    .restart local v3    # "cf":Ljava/security/cert/CertificateFactory;
    :catchall_1
    move-exception v8

    move-object v1, v2

    .end local v2    # "caInput":Ljava/io/InputStream;
    .restart local v1    # "caInput":Ljava/io/InputStream;
    goto :goto_3

    .line 120
    .end local v1    # "caInput":Ljava/io/InputStream;
    .restart local v2    # "caInput":Ljava/io/InputStream;
    :catch_5
    move-exception v5

    move-object v1, v2

    .end local v2    # "caInput":Ljava/io/InputStream;
    .restart local v1    # "caInput":Ljava/io/InputStream;
    goto :goto_2
.end method

.method public static getNewHttpClient(Ljava/security/KeyStore;)Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 9
    .param p0, "keyStore"    # Ljava/security/KeyStore;

    .prologue
    .line 187
    :try_start_0
    new-instance v4, Lcom/loopj/android/http/MySSLSocketFactory;

    invoke-direct {v4, p0}, Lcom/loopj/android/http/MySSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 188
    .local v4, "sf":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    new-instance v3, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 189
    .local v3, "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v5, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v7

    const/16 v8, 0x50

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 190
    new-instance v5, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "https"

    const/16 v7, 0x1bb

    invoke-direct {v5, v6, v4, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 192
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 193
    .local v2, "params":Lorg/apache/http/params/HttpParams;
    sget-object v5, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v2, v5}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 194
    const-string v5, "UTF-8"

    invoke-static {v2, v5}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 196
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v2, v3}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 198
    .local v0, "ccm":Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5, v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    .end local v0    # "ccm":Lorg/apache/http/conn/ClientConnectionManager;
    .end local v2    # "params":Lorg/apache/http/params/HttpParams;
    .end local v3    # "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v4    # "sf":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    :goto_0
    return-object v5

    .line 199
    :catch_0
    move-exception v1

    .line 200
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/loopj/android/http/MySSLSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "autoClose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/loopj/android/http/MySSLSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public fixHttpsURLConnection()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/loopj/android/http/MySSLSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 103
    return-void
.end method
