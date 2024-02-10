.class public abstract Lcom/loopj/android/http/TextHttpResponseHandler;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "TextHttpResponseHandler.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TextHttpRH"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    const-string v0, "UTF-8"

    invoke-direct {p0, v0}, Lcom/loopj/android/http/TextHttpResponseHandler;-><init>(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    .line 74
    invoke-virtual {p0, p1}, Lcom/loopj/android/http/TextHttpResponseHandler;->setCharset(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public static getResponseString([BLjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "stringBytes"    # [B
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 115
    if-nez p0, :cond_1

    move-object v1, v2

    .line 116
    .local v1, "toReturn":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_0

    :try_start_0
    const-string v3, "\ufeff"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 122
    .end local v1    # "toReturn":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v1

    .line 115
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v3, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string v4, "TextHttpRH"

    const-string v5, "Encoding response into string failed"

    invoke-interface {v3, v4, v5, v0}, Lcom/loopj/android/http/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v2

    .line 122
    goto :goto_1
.end method


# virtual methods
.method public abstract onFailure(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 1
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "responseBytes"    # [B
    .param p4, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/loopj/android/http/TextHttpResponseHandler;->getCharset()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/loopj/android/http/TextHttpResponseHandler;->getResponseString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/loopj/android/http/TextHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    return-void
.end method

.method public abstract onSuccess(I[Lorg/apache/http/Header;Ljava/lang/String;)V
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 1
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "responseBytes"    # [B

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/loopj/android/http/TextHttpResponseHandler;->getCharset()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/loopj/android/http/TextHttpResponseHandler;->getResponseString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/loopj/android/http/TextHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;Ljava/lang/String;)V

    .line 99
    return-void
.end method
