.class public abstract Lcom/loopj/android/http/AsyncHttpResponseHandler;
.super Ljava/lang/Object;
.source "AsyncHttpResponseHandler.java"

# interfaces
.implements Lcom/loopj/android/http/ResponseHandlerInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loopj/android/http/AsyncHttpResponseHandler$ResponderHandler;
    }
.end annotation


# static fields
.field protected static final BUFFER_SIZE:I = 0x1000

.field protected static final CANCEL_MESSAGE:I = 0x6

.field public static final DEFAULT_CHARSET:Ljava/lang/String; = "UTF-8"

.field protected static final FAILURE_MESSAGE:I = 0x1

.field protected static final FINISH_MESSAGE:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "AsyncHttpRH"

.field protected static final PROGRESS_MESSAGE:I = 0x4

.field protected static final RETRY_MESSAGE:I = 0x5

.field protected static final START_MESSAGE:I = 0x2

.field protected static final SUCCESS_MESSAGE:I = 0x0

.field public static final UTF8_BOM:Ljava/lang/String; = "\ufeff"


# instance fields
.field private TAG:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private looper:Landroid/os/Looper;

.field private requestHeaders:[Lorg/apache/http/Header;

.field private requestURI:Ljava/net/URI;

.field private responseCharset:Ljava/lang/String;

.field private usePoolThread:Z

.field private useSynchronousMode:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>(Landroid/os/Looper;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 3
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->responseCharset:Ljava/lang/String;

    .line 103
    iput-object v1, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->requestURI:Ljava/net/URI;

    .line 104
    iput-object v1, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->requestHeaders:[Lorg/apache/http/Header;

    .line 105
    iput-object v1, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->looper:Landroid/os/Looper;

    .line 106
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->TAG:Ljava/lang/ref/WeakReference;

    .line 123
    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    .end local p1    # "looper":Landroid/os/Looper;
    :cond_0
    iput-object p1, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->looper:Landroid/os/Looper;

    .line 126
    invoke-virtual {p0, v2}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->setUseSynchronousMode(Z)V

    .line 129
    invoke-virtual {p0, v2}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->setUsePoolThread(Z)V

    .line 130
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "usePoolThread"    # Z

    .prologue
    const/4 v1, 0x0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->responseCharset:Ljava/lang/String;

    .line 103
    iput-object v1, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->requestURI:Ljava/net/URI;

    .line 104
    iput-object v1, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->requestHeaders:[Lorg/apache/http/Header;

    .line 105
    iput-object v1, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->looper:Landroid/os/Looper;

    .line 106
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->TAG:Ljava/lang/ref/WeakReference;

    .line 140
    invoke-virtual {p0, p1}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->setUsePoolThread(Z)V

    .line 143
    invoke-virtual {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->getUsePoolThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->looper:Landroid/os/Looper;

    .line 148
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->setUseSynchronousMode(Z)V

    .line 150
    :cond_0
    return-void
.end method


# virtual methods
.method public getCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->responseCharset:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "UTF-8"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->responseCharset:Ljava/lang/String;

    goto :goto_0
.end method

.method public getRequestHeaders()[Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->requestHeaders:[Lorg/apache/http/Header;

    return-object v0
.end method

.method public getRequestURI()Ljava/net/URI;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->requestURI:Ljava/net/URI;

    return-object v0
.end method

.method getResponseData(Lorg/apache/http/HttpEntity;)[B
    .locals 14
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 482
    const/4 v9, 0x0

    .line 483
    .local v9, "responseBody":[B
    if-eqz p1, :cond_4

    .line 484
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v7

    .line 485
    .local v7, "instream":Ljava/io/InputStream;
    if-eqz v7, :cond_4

    .line 486
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    .line 487
    .local v2, "contentLength":J
    const-wide/32 v12, 0x7fffffff

    cmp-long v11, v2, v12

    if-lez v11, :cond_0

    .line 488
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "HTTP entity too large to be buffered in memory"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 490
    :cond_0
    const-wide/16 v12, 0x0

    cmp-long v11, v2, v12

    if-gtz v11, :cond_1

    const/16 v1, 0x1000

    .line 492
    .local v1, "buffersize":I
    :goto_0
    :try_start_0
    new-instance v0, Lorg/apache/http/util/ByteArrayBuffer;

    invoke-direct {v0, v1}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    .local v0, "buffer":Lorg/apache/http/util/ByteArrayBuffer;
    const/16 v11, 0x1000

    :try_start_1
    new-array v10, v11, [B

    .line 495
    .local v10, "tmp":[B
    const-wide/16 v4, 0x0

    .line 498
    .local v4, "count":J
    :goto_1
    invoke-virtual {v7, v10}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .local v8, "l":I
    const/4 v11, -0x1

    if-eq v8, v11, :cond_3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v11

    if-nez v11, :cond_3

    .line 499
    int-to-long v12, v8

    add-long/2addr v4, v12

    .line 500
    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11, v8}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    .line 501
    const-wide/16 v12, 0x0

    cmp-long v11, v2, v12

    if-gtz v11, :cond_2

    const-wide/16 v12, 0x1

    :goto_2
    invoke-virtual {p0, v4, v5, v12, v13}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->sendProgressMessage(JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 504
    .end local v4    # "count":J
    .end local v8    # "l":I
    .end local v10    # "tmp":[B
    :catchall_0
    move-exception v11

    :try_start_2
    invoke-static {v7}, Lcom/loopj/android/http/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    .line 505
    invoke-static {p1}, Lcom/loopj/android/http/AsyncHttpClient;->endEntityViaReflection(Lorg/apache/http/HttpEntity;)V

    throw v11
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    .line 508
    .end local v0    # "buffer":Lorg/apache/http/util/ByteArrayBuffer;
    :catch_0
    move-exception v6

    .line 509
    .local v6, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 510
    new-instance v11, Ljava/io/IOException;

    const-string v12, "File too large to fit into available memory"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 490
    .end local v1    # "buffersize":I
    .end local v6    # "e":Ljava/lang/OutOfMemoryError;
    :cond_1
    long-to-int v1, v2

    goto :goto_0

    .restart local v0    # "buffer":Lorg/apache/http/util/ByteArrayBuffer;
    .restart local v1    # "buffersize":I
    .restart local v4    # "count":J
    .restart local v8    # "l":I
    .restart local v10    # "tmp":[B
    :cond_2
    move-wide v12, v2

    .line 501
    goto :goto_2

    .line 504
    :cond_3
    :try_start_3
    invoke-static {v7}, Lcom/loopj/android/http/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    .line 505
    invoke-static {p1}, Lcom/loopj/android/http/AsyncHttpClient;->endEntityViaReflection(Lorg/apache/http/HttpEntity;)V

    .line 507
    invoke-virtual {v0}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v9

    .line 514
    .end local v0    # "buffer":Lorg/apache/http/util/ByteArrayBuffer;
    .end local v1    # "buffersize":I
    .end local v2    # "contentLength":J
    .end local v4    # "count":J
    .end local v7    # "instream":Ljava/io/InputStream;
    .end local v8    # "l":I
    .end local v10    # "tmp":[B
    :cond_4
    return-object v9
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->TAG:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getUsePoolThread()Z
    .locals 1

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->usePoolThread:Z

    return v0
.end method

.method public getUseSynchronousMode()Z
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->useSynchronousMode:Z

    return v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 367
    :try_start_0
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 417
    :goto_0
    return-void

    .line 369
    :pswitch_0
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    move-object v0, v5

    check-cast v0, [Ljava/lang/Object;

    move-object v3, v0

    .line 370
    .local v3, "response":[Ljava/lang/Object;
    if-eqz v3, :cond_0

    array-length v5, v3

    if-lt v5, v8, :cond_0

    .line 371
    const/4 v5, 0x0

    aget-object v5, v3, v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v5, 0x1

    aget-object v5, v3, v5

    check-cast v5, [Lorg/apache/http/Header;

    check-cast v5, [Lorg/apache/http/Header;

    const/4 v6, 0x2

    aget-object v6, v3, v6

    check-cast v6, [B

    check-cast v6, [B

    invoke-virtual {p0, v7, v5, v6}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;[B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 414
    .end local v3    # "response":[Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 415
    .local v2, "error":Ljava/lang/Throwable;
    invoke-virtual {p0, v2}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onUserException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 373
    .end local v2    # "error":Ljava/lang/Throwable;
    .restart local v3    # "response":[Ljava/lang/Object;
    :cond_0
    :try_start_1
    sget-object v5, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string v6, "AsyncHttpRH"

    const-string v7, "SUCCESS_MESSAGE didn\'t got enough params"

    invoke-interface {v5, v6, v7}, Lcom/loopj/android/http/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 377
    .end local v3    # "response":[Ljava/lang/Object;
    :pswitch_1
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    move-object v0, v5

    check-cast v0, [Ljava/lang/Object;

    move-object v3, v0

    .line 378
    .restart local v3    # "response":[Ljava/lang/Object;
    if-eqz v3, :cond_1

    array-length v5, v3

    const/4 v6, 0x4

    if-lt v5, v6, :cond_1

    .line 379
    const/4 v5, 0x0

    aget-object v5, v3, v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v5, 0x1

    aget-object v5, v3, v5

    check-cast v5, [Lorg/apache/http/Header;

    check-cast v5, [Lorg/apache/http/Header;

    const/4 v6, 0x2

    aget-object v6, v3, v6

    check-cast v6, [B

    check-cast v6, [B

    const/4 v7, 0x3

    aget-object v7, v3, v7

    check-cast v7, Ljava/lang/Throwable;

    invoke-virtual {p0, v8, v5, v6, v7}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    goto :goto_0

    .line 381
    :cond_1
    sget-object v5, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string v6, "AsyncHttpRH"

    const-string v7, "FAILURE_MESSAGE didn\'t got enough params"

    invoke-interface {v5, v6, v7}, Lcom/loopj/android/http/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 385
    .end local v3    # "response":[Ljava/lang/Object;
    :pswitch_2
    invoke-virtual {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onStart()V

    goto :goto_0

    .line 388
    :pswitch_3
    invoke-virtual {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onFinish()V

    goto :goto_0

    .line 391
    :pswitch_4
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    move-object v0, v5

    check-cast v0, [Ljava/lang/Object;

    move-object v3, v0

    .line 392
    .restart local v3    # "response":[Ljava/lang/Object;
    if-eqz v3, :cond_2

    array-length v5, v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    if-lt v5, v7, :cond_2

    .line 394
    const/4 v5, 0x0

    :try_start_2
    aget-object v5, v3, v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v5, 0x1

    aget-object v5, v3, v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onProgress(JJ)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 395
    :catch_1
    move-exception v4

    .line 396
    .local v4, "t":Ljava/lang/Throwable;
    :try_start_3
    sget-object v5, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string v6, "AsyncHttpRH"

    const-string v7, "custom onProgress contains an error"

    invoke-interface {v5, v6, v7, v4}, Lcom/loopj/android/http/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 399
    .end local v4    # "t":Ljava/lang/Throwable;
    :cond_2
    sget-object v5, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string v6, "AsyncHttpRH"

    const-string v7, "PROGRESS_MESSAGE didn\'t got enough params"

    invoke-interface {v5, v6, v7}, Lcom/loopj/android/http/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 403
    .end local v3    # "response":[Ljava/lang/Object;
    :pswitch_5
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    move-object v0, v5

    check-cast v0, [Ljava/lang/Object;

    move-object v3, v0

    .line 404
    .restart local v3    # "response":[Ljava/lang/Object;
    if-eqz v3, :cond_3

    array-length v5, v3

    if-ne v5, v6, :cond_3

    .line 405
    const/4 v5, 0x0

    aget-object v5, v3, v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onRetry(I)V

    goto/16 :goto_0

    .line 407
    :cond_3
    sget-object v5, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string v6, "AsyncHttpRH"

    const-string v7, "RETRY_MESSAGE didn\'t get enough params"

    invoke-interface {v5, v6, v7}, Lcom/loopj/android/http/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 411
    .end local v3    # "response":[Ljava/lang/Object;
    :pswitch_6
    invoke-virtual {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onCancel()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 367
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
    .locals 1
    .param p1, "responseMessageId"    # I
    .param p2, "responseMessageData"    # Ljava/lang/Object;

    .prologue
    .line 453
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    invoke-static {v0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public onCancel()V
    .locals 3

    .prologue
    .line 319
    sget-object v0, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string v1, "AsyncHttpRH"

    const-string v2, "Request got cancelled"

    invoke-interface {v0, v1, v2}, Lcom/loopj/android/http/LogInterface;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    return-void
.end method

.method public abstract onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
.end method

.method public onFinish()V
    .locals 0

    .prologue
    .line 278
    return-void
.end method

.method public onPostProcessResponse(Lcom/loopj/android/http/ResponseHandlerInterface;Lorg/apache/http/HttpResponse;)V
    .locals 0
    .param p1, "instance"    # Lcom/loopj/android/http/ResponseHandlerInterface;
    .param p2, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 288
    return-void
.end method

.method public onPreProcessResponse(Lcom/loopj/android/http/ResponseHandlerInterface;Lorg/apache/http/HttpResponse;)V
    .locals 0
    .param p1, "instance"    # Lcom/loopj/android/http/ResponseHandlerInterface;
    .param p2, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 283
    return-void
.end method

.method public onProgress(JJ)V
    .locals 11
    .param p1, "bytesWritten"    # J
    .param p3, "totalSize"    # J

    .prologue
    .line 262
    sget-object v2, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string v3, "AsyncHttpRH"

    const-string v4, "Progress %d from %d (%2.0f%%)"

    const/4 v0, 0x3

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v6, 0x2

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    long-to-double v0, p1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v8

    long-to-double v8, p3

    div-double/2addr v0, v8

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v8

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/loopj/android/http/LogInterface;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    return-void

    .line 262
    :cond_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_0
.end method

.method public onRetry(I)V
    .locals 6
    .param p1, "retryNo"    # I

    .prologue
    .line 315
    sget-object v0, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string v1, "AsyncHttpRH"

    const-string v2, "Request retry no. %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/loopj/android/http/LogInterface;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 270
    return-void
.end method

.method public abstract onSuccess(I[Lorg/apache/http/Header;[B)V
.end method

.method public onUserException(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 323
    sget-object v0, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string v1, "AsyncHttpRH"

    const-string v2, "User-space exception detected!"

    invoke-interface {v0, v1, v2, p1}, Lcom/loopj/android/http/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 324
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected postRunnable(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 434
    if-eqz p1, :cond_1

    .line 435
    invoke-virtual {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->getUseSynchronousMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 437
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 443
    :cond_1
    :goto_0
    return-void

    .line 440
    :cond_2
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final sendCancelMessage()V
    .locals 2

    .prologue
    .line 359
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 360
    return-void
.end method

.method public final sendFailureMessage(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 4
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "responseBody"    # [B
    .param p4, "throwable"    # Ljava/lang/Throwable;

    .prologue
    const/4 v3, 0x1

    .line 339
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    aput-object p2, v0, v3

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    invoke-virtual {p0, v3, v0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 340
    return-void
.end method

.method public final sendFinishMessage()V
    .locals 2

    .prologue
    .line 349
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 350
    return-void
.end method

.method protected sendMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->getUseSynchronousMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 421
    :cond_0
    invoke-virtual {p0, p1}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->handleMessage(Landroid/os/Message;)V

    .line 426
    :cond_1
    :goto_0
    return-void

    .line 422
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 423
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    const-string v1, "handler should not be null!"

    invoke-static {v0, v1}, Lcom/loopj/android/http/Utils;->asserts(ZLjava/lang/String;)V

    .line 424
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 423
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final sendProgressMessage(JJ)V
    .locals 5
    .param p1, "bytesWritten"    # J
    .param p3, "bytesTotal"    # J

    .prologue
    .line 329
    const/4 v0, 0x4

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 330
    return-void
.end method

.method public sendResponseMessage(Lorg/apache/http/HttpResponse;)V
    .locals 7
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 459
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 460
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    .line 462
    .local v1, "status":Lorg/apache/http/StatusLine;
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->getResponseData(Lorg/apache/http/HttpEntity;)[B

    move-result-object v0

    .line 464
    .local v0, "responseBody":[B
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 465
    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0x12c

    if-lt v2, v3, :cond_1

    .line 466
    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    new-instance v4, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v2, v3, v0, v4}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->sendFailureMessage(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    .line 472
    .end local v0    # "responseBody":[B
    .end local v1    # "status":Lorg/apache/http/StatusLine;
    :cond_0
    :goto_0
    return-void

    .line 468
    .restart local v0    # "responseBody":[B
    .restart local v1    # "status":Lorg/apache/http/StatusLine;
    :cond_1
    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->sendSuccessMessage(I[Lorg/apache/http/Header;[B)V

    goto :goto_0
.end method

.method public final sendRetryMessage(I)V
    .locals 4
    .param p1, "retryNo"    # I

    .prologue
    .line 354
    const/4 v0, 0x5

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 355
    return-void
.end method

.method public final sendStartMessage()V
    .locals 2

    .prologue
    .line 344
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 345
    return-void
.end method

.method public final sendSuccessMessage(I[Lorg/apache/http/Header;[B)V
    .locals 3
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "responseBytes"    # [B

    .prologue
    const/4 v2, 0x0

    .line 334
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-virtual {p0, v2, v0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 335
    return-void
.end method

.method public setCharset(Ljava/lang/String;)V
    .locals 0
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->responseCharset:Ljava/lang/String;

    .line 249
    return-void
.end method

.method public setRequestHeaders([Lorg/apache/http/Header;)V
    .locals 0
    .param p1, "requestHeaders"    # [Lorg/apache/http/Header;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->requestHeaders:[Lorg/apache/http/Header;

    .line 180
    return-void
.end method

.method public setRequestURI(Ljava/net/URI;)V
    .locals 0
    .param p1, "requestURI"    # Ljava/net/URI;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->requestURI:Ljava/net/URI;

    .line 175
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 1
    .param p1, "TAG"    # Ljava/lang/Object;

    .prologue
    .line 154
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->TAG:Ljava/lang/ref/WeakReference;

    .line 155
    return-void
.end method

.method public setUsePoolThread(Z)V
    .locals 1
    .param p1, "pool"    # Z

    .prologue
    const/4 v0, 0x0

    .line 233
    if-eqz p1, :cond_0

    .line 234
    iput-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->looper:Landroid/os/Looper;

    .line 235
    iput-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    .line 238
    :cond_0
    iput-boolean p1, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->usePoolThread:Z

    .line 239
    return-void
.end method

.method public setUseSynchronousMode(Z)V
    .locals 3
    .param p1, "sync"    # Z

    .prologue
    .line 207
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->looper:Landroid/os/Looper;

    if-nez v0, :cond_0

    .line 208
    const/4 p1, 0x1

    .line 209
    sget-object v0, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string v1, "AsyncHttpRH"

    const-string v2, "Current thread has not called Looper.prepare(). Forcing synchronous mode."

    invoke-interface {v0, v1, v2}, Lcom/loopj/android/http/LogInterface;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_0
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 215
    new-instance v0, Lcom/loopj/android/http/AsyncHttpResponseHandler$ResponderHandler;

    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->looper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/loopj/android/http/AsyncHttpResponseHandler$ResponderHandler;-><init>(Lcom/loopj/android/http/AsyncHttpResponseHandler;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    .line 221
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->useSynchronousMode:Z

    .line 222
    return-void

    .line 216
    :cond_2
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 218
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    goto :goto_0
.end method
