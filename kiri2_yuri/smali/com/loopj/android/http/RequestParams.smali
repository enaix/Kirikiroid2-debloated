.class public Lcom/loopj/android/http/RequestParams;
.super Ljava/lang/Object;
.source "RequestParams.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loopj/android/http/RequestParams$StreamWrapper;,
        Lcom/loopj/android/http/RequestParams$FileWrapper;
    }
.end annotation


# static fields
.field public static final APPLICATION_JSON:Ljava/lang/String; = "application/json"

.field public static final APPLICATION_OCTET_STREAM:Ljava/lang/String; = "application/octet-stream"

.field protected static final LOG_TAG:Ljava/lang/String; = "RequestParams"


# instance fields
.field protected autoCloseInputStreams:Z

.field protected contentEncoding:Ljava/lang/String;

.field protected elapsedFieldInJsonStreamer:Ljava/lang/String;

.field protected final fileArrayParams:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/loopj/android/http/RequestParams$FileWrapper;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final fileParams:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/loopj/android/http/RequestParams$FileWrapper;",
            ">;"
        }
    .end annotation
.end field

.field protected forceMultipartEntity:Z

.field protected isRepeatable:Z

.field protected final streamParams:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/loopj/android/http/RequestParams$StreamWrapper;",
            ">;"
        }
    .end annotation
.end field

.field protected final urlParams:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final urlParamsWithObjects:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected useJsonStreamer:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/loopj/android/http/RequestParams;-><init>(Ljava/util/Map;)V

    .line 145
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 169
    new-instance v0, Lcom/loopj/android/http/RequestParams$1;

    invoke-direct {v0, p1, p2}, Lcom/loopj/android/http/RequestParams$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/loopj/android/http/RequestParams;-><init>(Ljava/util/Map;)V

    .line 172
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p1, "source":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/loopj/android/http/RequestParams;->forceMultipartEntity:Z

    .line 105
    const-string v1, "_elapsed"

    iput-object v1, p0, Lcom/loopj/android/http/RequestParams;->elapsedFieldInJsonStreamer:Ljava/lang/String;

    .line 107
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/loopj/android/http/RequestParams;->urlParams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 108
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/loopj/android/http/RequestParams;->streamParams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 109
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/loopj/android/http/RequestParams;->fileParams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 110
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/loopj/android/http/RequestParams;->fileArrayParams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 111
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/loopj/android/http/RequestParams;->urlParamsWithObjects:Ljava/util/concurrent/ConcurrentHashMap;

    .line 112
    const-string v1, "UTF-8"

    iput-object v1, p0, Lcom/loopj/android/http/RequestParams;->contentEncoding:Ljava/lang/String;

    .line 154
    if-eqz p1, :cond_0

    .line 155
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 156
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 159
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/Object;)V
    .locals 6
    .param p1, "keysAndValues"    # [Ljava/lang/Object;

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/loopj/android/http/RequestParams;->forceMultipartEntity:Z

    .line 105
    const-string v4, "_elapsed"

    iput-object v4, p0, Lcom/loopj/android/http/RequestParams;->elapsedFieldInJsonStreamer:Ljava/lang/String;

    .line 107
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v4, p0, Lcom/loopj/android/http/RequestParams;->urlParams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 108
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v4, p0, Lcom/loopj/android/http/RequestParams;->streamParams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 109
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v4, p0, Lcom/loopj/android/http/RequestParams;->fileParams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 110
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v4, p0, Lcom/loopj/android/http/RequestParams;->fileArrayParams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 111
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v4, p0, Lcom/loopj/android/http/RequestParams;->urlParamsWithObjects:Ljava/util/concurrent/ConcurrentHashMap;

    .line 112
    const-string v4, "UTF-8"

    iput-object v4, p0, Lcom/loopj/android/http/RequestParams;->contentEncoding:Ljava/lang/String;

    .line 183
    array-length v2, p1

    .line 184
    .local v2, "len":I
    rem-int/lit8 v4, v2, 0x2

    if-eqz v4, :cond_0

    .line 185
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Supplied arguments must be even"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 186
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 187
    aget-object v4, p1, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, "key":Ljava/lang/String;
    add-int/lit8 v4, v0, 0x1

    aget-object v4, p1, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 189
    .local v3, "val":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 191
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "val":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private createFormEntity()Lorg/apache/http/HttpEntity;
    .locals 4

    .prologue
    .line 566
    :try_start_0
    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-virtual {p0}, Lcom/loopj/android/http/RequestParams;->getParamsList()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/loopj/android/http/RequestParams;->contentEncoding:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 569
    :goto_0
    return-object v1

    .line 567
    :catch_0
    move-exception v0

    .line 568
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v1, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string v2, "RequestParams"

    const-string v3, "createFormEntity failed"

    invoke-interface {v1, v2, v3, v0}, Lcom/loopj/android/http/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 569
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private createJsonStreamerEntity(Lcom/loopj/android/http/ResponseHandlerInterface;)Lorg/apache/http/HttpEntity;
    .locals 12
    .param p1, "progressHandler"    # Lcom/loopj/android/http/ResponseHandlerInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 527
    new-instance v0, Lcom/loopj/android/http/JsonStreamerEntity;

    iget-object v6, p0, Lcom/loopj/android/http/RequestParams;->fileParams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 529
    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/loopj/android/http/RequestParams;->streamParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    const/4 v6, 0x1

    :goto_0
    iget-object v7, p0, Lcom/loopj/android/http/RequestParams;->elapsedFieldInJsonStreamer:Ljava/lang/String;

    invoke-direct {v0, p1, v6, v7}, Lcom/loopj/android/http/JsonStreamerEntity;-><init>(Lcom/loopj/android/http/ResponseHandlerInterface;ZLjava/lang/String;)V

    .line 533
    .local v0, "entity":Lcom/loopj/android/http/JsonStreamerEntity;
    iget-object v6, p0, Lcom/loopj/android/http/RequestParams;->urlParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 534
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Lcom/loopj/android/http/JsonStreamerEntity;->addPart(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 529
    .end local v0    # "entity":Lcom/loopj/android/http/JsonStreamerEntity;
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 538
    .restart local v0    # "entity":Lcom/loopj/android/http/JsonStreamerEntity;
    :cond_2
    iget-object v6, p0, Lcom/loopj/android/http/RequestParams;->urlParamsWithObjects:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 539
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Lcom/loopj/android/http/JsonStreamerEntity;->addPart(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 543
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    iget-object v6, p0, Lcom/loopj/android/http/RequestParams;->fileParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 544
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/loopj/android/http/RequestParams$FileWrapper;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Lcom/loopj/android/http/JsonStreamerEntity;->addPart(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 548
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/loopj/android/http/RequestParams$FileWrapper;>;"
    :cond_4
    iget-object v6, p0, Lcom/loopj/android/http/RequestParams;->streamParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 549
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/loopj/android/http/RequestParams$StreamWrapper;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/loopj/android/http/RequestParams$StreamWrapper;

    .line 550
    .local v5, "stream":Lcom/loopj/android/http/RequestParams$StreamWrapper;
    iget-object v6, v5, Lcom/loopj/android/http/RequestParams$StreamWrapper;->inputStream:Ljava/io/InputStream;

    if-eqz v6, :cond_5

    .line 551
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v8, v5, Lcom/loopj/android/http/RequestParams$StreamWrapper;->inputStream:Ljava/io/InputStream;

    iget-object v9, v5, Lcom/loopj/android/http/RequestParams$StreamWrapper;->name:Ljava/lang/String;

    iget-object v10, v5, Lcom/loopj/android/http/RequestParams$StreamWrapper;->contentType:Ljava/lang/String;

    iget-boolean v11, v5, Lcom/loopj/android/http/RequestParams$StreamWrapper;->autoClose:Z

    .line 552
    invoke-static {v8, v9, v10, v11}, Lcom/loopj/android/http/RequestParams$StreamWrapper;->newInstance(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Z)Lcom/loopj/android/http/RequestParams$StreamWrapper;

    move-result-object v8

    .line 551
    invoke-virtual {v0, v6, v8}, Lcom/loopj/android/http/JsonStreamerEntity;->addPart(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 561
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/loopj/android/http/RequestParams$StreamWrapper;>;"
    .end local v5    # "stream":Lcom/loopj/android/http/RequestParams$StreamWrapper;
    :cond_6
    return-object v0
.end method

.method private createMultipartEntity(Lcom/loopj/android/http/ResponseHandlerInterface;)Lorg/apache/http/HttpEntity;
    .locals 20
    .param p1, "progressHandler"    # Lcom/loopj/android/http/ResponseHandlerInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 574
    new-instance v3, Lcom/loopj/android/http/SimpleMultipartEntity;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/loopj/android/http/SimpleMultipartEntity;-><init>(Lcom/loopj/android/http/ResponseHandlerInterface;)V

    .line 575
    .local v3, "entity":Lcom/loopj/android/http/SimpleMultipartEntity;
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/loopj/android/http/RequestParams;->isRepeatable:Z

    invoke-virtual {v3, v14}, Lcom/loopj/android/http/SimpleMultipartEntity;->setIsRepeatable(Z)V

    .line 578
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/loopj/android/http/RequestParams;->urlParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v14}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 579
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/loopj/android/http/RequestParams;->contentEncoding:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v3, v14, v15, v0}, Lcom/loopj/android/http/SimpleMultipartEntity;->addPartWithCharset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 583
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/loopj/android/http/RequestParams;->urlParamsWithObjects:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/loopj/android/http/RequestParams;->getParamsList(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    .line 584
    .local v12, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/http/message/BasicNameValuePair;

    .line 585
    .local v11, "kv":Lorg/apache/http/message/BasicNameValuePair;
    invoke-virtual {v11}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11}, Lorg/apache/http/message/BasicNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/loopj/android/http/RequestParams;->contentEncoding:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v15, v0, v1}, Lcom/loopj/android/http/SimpleMultipartEntity;->addPartWithCharset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 589
    .end local v11    # "kv":Lorg/apache/http/message/BasicNameValuePair;
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/loopj/android/http/RequestParams;->streamParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v14}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_2
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 590
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/loopj/android/http/RequestParams$StreamWrapper;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/loopj/android/http/RequestParams$StreamWrapper;

    .line 591
    .local v13, "stream":Lcom/loopj/android/http/RequestParams$StreamWrapper;
    iget-object v14, v13, Lcom/loopj/android/http/RequestParams$StreamWrapper;->inputStream:Ljava/io/InputStream;

    if-eqz v14, :cond_2

    .line 592
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    iget-object v0, v13, Lcom/loopj/android/http/RequestParams$StreamWrapper;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    iget-object v0, v13, Lcom/loopj/android/http/RequestParams$StreamWrapper;->inputStream:Ljava/io/InputStream;

    move-object/from16 v17, v0

    iget-object v0, v13, Lcom/loopj/android/http/RequestParams$StreamWrapper;->contentType:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v3, v14, v0, v1, v2}, Lcom/loopj/android/http/SimpleMultipartEntity;->addPart(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_2

    .line 598
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/loopj/android/http/RequestParams$StreamWrapper;>;"
    .end local v13    # "stream":Lcom/loopj/android/http/RequestParams$StreamWrapper;
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/loopj/android/http/RequestParams;->fileParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v14}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 599
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/loopj/android/http/RequestParams$FileWrapper;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/loopj/android/http/RequestParams$FileWrapper;

    .line 600
    .local v8, "fileWrapper":Lcom/loopj/android/http/RequestParams$FileWrapper;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    iget-object v0, v8, Lcom/loopj/android/http/RequestParams$FileWrapper;->file:Ljava/io/File;

    move-object/from16 v16, v0

    iget-object v0, v8, Lcom/loopj/android/http/RequestParams$FileWrapper;->contentType:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-object v0, v8, Lcom/loopj/android/http/RequestParams$FileWrapper;->customFileName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v3, v14, v0, v1, v2}, Lcom/loopj/android/http/SimpleMultipartEntity;->addPart(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 604
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/loopj/android/http/RequestParams$FileWrapper;>;"
    .end local v8    # "fileWrapper":Lcom/loopj/android/http/RequestParams$FileWrapper;
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/loopj/android/http/RequestParams;->fileArrayParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v14}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 605
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/loopj/android/http/RequestParams$FileWrapper;>;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 606
    .local v9, "fileWrapper":Ljava/util/List;, "Ljava/util/List<Lcom/loopj/android/http/RequestParams$FileWrapper;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/loopj/android/http/RequestParams$FileWrapper;

    .line 607
    .local v10, "fw":Lcom/loopj/android/http/RequestParams$FileWrapper;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    iget-object v0, v10, Lcom/loopj/android/http/RequestParams$FileWrapper;->file:Ljava/io/File;

    move-object/from16 v17, v0

    iget-object v0, v10, Lcom/loopj/android/http/RequestParams$FileWrapper;->contentType:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v10, Lcom/loopj/android/http/RequestParams$FileWrapper;->customFileName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v3, v14, v0, v1, v2}, Lcom/loopj/android/http/SimpleMultipartEntity;->addPart(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 611
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/loopj/android/http/RequestParams$FileWrapper;>;>;"
    .end local v9    # "fileWrapper":Ljava/util/List;, "Ljava/util/List<Lcom/loopj/android/http/RequestParams$FileWrapper;>;"
    .end local v10    # "fw":Lcom/loopj/android/http/RequestParams$FileWrapper;
    :cond_6
    return-object v3
.end method

.method private getParamsList(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;
    .locals 17
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 627
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    .line 628
    .local v10, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    move-object/from16 v0, p2

    instance-of v12, v0, Ljava/util/Map;

    if-eqz v12, :cond_3

    move-object/from16 v6, p2

    .line 629
    check-cast v6, Ljava/util/Map;

    .line 630
    .local v6, "map":Ljava/util/Map;
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-direct {v4, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 632
    .local v4, "list":Ljava/util/List;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_0

    const/4 v12, 0x0

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, Ljava/lang/Comparable;

    if-eqz v12, :cond_0

    .line 633
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 635
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 636
    .local v7, "nestedKey":Ljava/lang/Object;
    instance-of v13, v7, Ljava/lang/String;

    if-eqz v13, :cond_1

    .line 637
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 638
    .local v8, "nestedValue":Ljava/lang/Object;
    if-eqz v8, :cond_1

    .line 639
    if-nez p1, :cond_2

    check-cast v7, Ljava/lang/String;

    .end local v7    # "nestedKey":Ljava/lang/Object;
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Lcom/loopj/android/http/RequestParams;->getParamsList(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v10, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .restart local v7    # "nestedKey":Ljava/lang/Object;
    :cond_2
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v14, "%s[%s]"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object p1, v15, v16

    const/16 v16, 0x1

    aput-object v7, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 644
    .end local v4    # "list":Ljava/util/List;
    .end local v6    # "map":Ljava/util/Map;
    .end local v7    # "nestedKey":Ljava/lang/Object;
    .end local v8    # "nestedValue":Ljava/lang/Object;
    :cond_3
    move-object/from16 v0, p2

    instance-of v12, v0, Ljava/util/List;

    if-eqz v12, :cond_4

    move-object/from16 v4, p2

    .line 645
    check-cast v4, Ljava/util/List;

    .line 646
    .restart local v4    # "list":Ljava/util/List;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 647
    .local v5, "listSize":I
    const/4 v9, 0x0

    .local v9, "nestedValueIndex":I
    :goto_2
    if-ge v9, v5, :cond_7

    .line 648
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v13, "%s[%d]"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p1, v14, v15

    const/4 v15, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/loopj/android/http/RequestParams;->getParamsList(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 647
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 650
    .end local v4    # "list":Ljava/util/List;
    .end local v5    # "listSize":I
    .end local v9    # "nestedValueIndex":I
    :cond_4
    move-object/from16 v0, p2

    instance-of v12, v0, [Ljava/lang/Object;

    if-eqz v12, :cond_5

    .line 651
    check-cast p2, [Ljava/lang/Object;

    .end local p2    # "value":Ljava/lang/Object;
    move-object/from16 v2, p2

    check-cast v2, [Ljava/lang/Object;

    .line 652
    .local v2, "array":[Ljava/lang/Object;
    array-length v3, v2

    .line 653
    .local v3, "arrayLength":I
    const/4 v9, 0x0

    .restart local v9    # "nestedValueIndex":I
    :goto_3
    if-ge v9, v3, :cond_7

    .line 654
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v13, "%s[%d]"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p1, v14, v15

    const/4 v15, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    aget-object v13, v2, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/loopj/android/http/RequestParams;->getParamsList(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 653
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 656
    .end local v2    # "array":[Ljava/lang/Object;
    .end local v3    # "arrayLength":I
    .end local v9    # "nestedValueIndex":I
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_5
    move-object/from16 v0, p2

    instance-of v12, v0, Ljava/util/Set;

    if-eqz v12, :cond_6

    move-object/from16 v11, p2

    .line 657
    check-cast v11, Ljava/util/Set;

    .line 658
    .local v11, "set":Ljava/util/Set;
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 659
    .restart local v8    # "nestedValue":Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8}, Lcom/loopj/android/http/RequestParams;->getParamsList(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v10, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    .line 662
    .end local v8    # "nestedValue":Ljava/lang/Object;
    .end local v11    # "set":Ljava/util/Set;
    :cond_6
    new-instance v12, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v13}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 664
    .end local p2    # "value":Ljava/lang/Object;
    :cond_7
    return-object v10
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 383
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 384
    iget-object v1, p0, Lcom/loopj/android/http/RequestParams;->urlParamsWithObjects:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 385
    .local v0, "params":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 387
    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "params":Ljava/lang/Object;
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 388
    .local v0, "params":Ljava/util/HashSet;
    invoke-virtual {p0, p1, v0}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 390
    .end local v0    # "params":Ljava/util/HashSet;
    :cond_0
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 391
    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    :cond_1
    :goto_0
    return-void

    .line 392
    :cond_2
    instance-of v1, v0, Ljava/util/Set;

    if-eqz v1, :cond_1

    .line 393
    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getEntity(Lcom/loopj/android/http/ResponseHandlerInterface;)Lorg/apache/http/HttpEntity;
    .locals 1
    .param p1, "progressHandler"    # Lcom/loopj/android/http/ResponseHandlerInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 517
    iget-boolean v0, p0, Lcom/loopj/android/http/RequestParams;->useJsonStreamer:Z

    if-eqz v0, :cond_0

    .line 518
    invoke-direct {p0, p1}, Lcom/loopj/android/http/RequestParams;->createJsonStreamerEntity(Lcom/loopj/android/http/ResponseHandlerInterface;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 522
    :goto_0
    return-object v0

    .line 519
    :cond_0
    iget-boolean v0, p0, Lcom/loopj/android/http/RequestParams;->forceMultipartEntity:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/loopj/android/http/RequestParams;->streamParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loopj/android/http/RequestParams;->fileParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loopj/android/http/RequestParams;->fileArrayParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 520
    invoke-direct {p0}, Lcom/loopj/android/http/RequestParams;->createFormEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    goto :goto_0

    .line 522
    :cond_1
    invoke-direct {p0, p1}, Lcom/loopj/android/http/RequestParams;->createMultipartEntity(Lcom/loopj/android/http/ResponseHandlerInterface;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    goto :goto_0
.end method

.method protected getParamString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 668
    invoke-virtual {p0}, Lcom/loopj/android/http/RequestParams;->getParamsList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/loopj/android/http/RequestParams;->contentEncoding:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParamsList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 615
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 617
    .local v1, "lparams":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    iget-object v2, p0, Lcom/loopj/android/http/RequestParams;->urlParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 618
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v5, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 621
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/loopj/android/http/RequestParams;->urlParamsWithObjects:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, v2, v3}, Lcom/loopj/android/http/RequestParams;->getParamsList(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 623
    return-object v1
.end method

.method public has(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 418
    iget-object v0, p0, Lcom/loopj/android/http/RequestParams;->urlParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loopj/android/http/RequestParams;->streamParams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 419
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loopj/android/http/RequestParams;->fileParams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 420
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loopj/android/http/RequestParams;->urlParamsWithObjects:Ljava/util/concurrent/ConcurrentHashMap;

    .line 421
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loopj/android/http/RequestParams;->fileArrayParams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 422
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public put(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 359
    if-eqz p1, :cond_0

    .line 360
    iget-object v0, p0, Lcom/loopj/android/http/RequestParams;->urlParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    :cond_0
    return-void
.end method

.method public put(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 371
    if-eqz p1, :cond_0

    .line 372
    iget-object v0, p0, Lcom/loopj/android/http/RequestParams;->urlParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    :cond_0
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/File;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 247
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 271
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "customFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 284
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 285
    :cond_0
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0

    .line 287
    :cond_1
    if-eqz p1, :cond_2

    .line 288
    iget-object v0, p0, Lcom/loopj/android/http/RequestParams;->fileParams:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/loopj/android/http/RequestParams$FileWrapper;

    invoke-direct {v1, p2, p3, p4}, Lcom/loopj/android/http/RequestParams$FileWrapper;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    :cond_2
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 299
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 300
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "stream"    # Ljava/io/InputStream;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 310
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "stream"    # Ljava/io/InputStream;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "contentType"    # Ljava/lang/String;

    .prologue
    .line 322
    iget-boolean v5, p0, Lcom/loopj/android/http/RequestParams;->autoCloseInputStreams:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 323
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "stream"    # Ljava/io/InputStream;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "contentType"    # Ljava/lang/String;
    .param p5, "autoClose"    # Z

    .prologue
    .line 335
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 336
    iget-object v0, p0, Lcom/loopj/android/http/RequestParams;->streamParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2, p3, p4, p5}, Lcom/loopj/android/http/RequestParams$StreamWrapper;->newInstance(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Z)Lcom/loopj/android/http/RequestParams$StreamWrapper;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    :cond_0
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 347
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 348
    iget-object v0, p0, Lcom/loopj/android/http/RequestParams;->urlParamsWithObjects:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    :cond_0
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 200
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 201
    iget-object v0, p0, Lcom/loopj/android/http/RequestParams;->urlParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    :cond_0
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "customFileName"    # Ljava/lang/String;
    .param p3, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 259
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p3, v0, p2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method public put(Ljava/lang/String;[Ljava/io/File;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "files"    # [Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 213
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;[Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public put(Ljava/lang/String;[Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "files"    # [Ljava/io/File;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "customFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 227
    if-eqz p1, :cond_3

    .line 228
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .local v1, "fileWrappers":Ljava/util/List;, "Ljava/util/List<Lcom/loopj/android/http/RequestParams$FileWrapper;>;"
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v0, p2, v2

    .line 230
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 231
    :cond_0
    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-direct {v2}, Ljava/io/FileNotFoundException;-><init>()V

    throw v2

    .line 233
    :cond_1
    new-instance v4, Lcom/loopj/android/http/RequestParams$FileWrapper;

    invoke-direct {v4, v0, p3, p4}, Lcom/loopj/android/http/RequestParams$FileWrapper;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 235
    .end local v0    # "file":Ljava/io/File;
    :cond_2
    iget-object v2, p0, Lcom/loopj/android/http/RequestParams;->fileArrayParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .end local v1    # "fileWrappers":Ljava/util/List;, "Ljava/util/List<Lcom/loopj/android/http/RequestParams$FileWrapper;>;"
    :cond_3
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 404
    iget-object v0, p0, Lcom/loopj/android/http/RequestParams;->urlParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    iget-object v0, p0, Lcom/loopj/android/http/RequestParams;->streamParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    iget-object v0, p0, Lcom/loopj/android/http/RequestParams;->fileParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    iget-object v0, p0, Lcom/loopj/android/http/RequestParams;->urlParamsWithObjects:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    iget-object v0, p0, Lcom/loopj/android/http/RequestParams;->fileArrayParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    return-void
.end method

.method public setAutoCloseInputStreams(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 505
    iput-boolean p1, p0, Lcom/loopj/android/http/RequestParams;->autoCloseInputStreams:Z

    .line 506
    return-void
.end method

.method public setContentEncoding(Ljava/lang/String;)V
    .locals 3
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 121
    if-eqz p1, :cond_0

    .line 122
    iput-object p1, p0, Lcom/loopj/android/http/RequestParams;->contentEncoding:Ljava/lang/String;

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_0
    sget-object v0, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string v1, "RequestParams"

    const-string v2, "setContentEncoding called with null attribute"

    invoke-interface {v0, v1, v2}, Lcom/loopj/android/http/LogInterface;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setElapsedFieldInJsonStreamer(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 495
    iput-object p1, p0, Lcom/loopj/android/http/RequestParams;->elapsedFieldInJsonStreamer:Ljava/lang/String;

    .line 496
    return-void
.end method

.method public setForceMultipartEntityContentType(Z)V
    .locals 0
    .param p1, "force"    # Z

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/loopj/android/http/RequestParams;->forceMultipartEntity:Z

    .line 138
    return-void
.end method

.method public setHttpEntityIsRepeatable(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 478
    iput-boolean p1, p0, Lcom/loopj/android/http/RequestParams;->isRepeatable:Z

    .line 479
    return-void
.end method

.method public setUseJsonStreamer(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 482
    iput-boolean p1, p0, Lcom/loopj/android/http/RequestParams;->useJsonStreamer:Z

    .line 483
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .prologue
    .line 427
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 428
    .local v6, "result":Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/loopj/android/http/RequestParams;->urlParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 429
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 430
    const-string v7, "&"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 437
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    iget-object v7, p0, Lcom/loopj/android/http/RequestParams;->streamParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 438
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/loopj/android/http/RequestParams$StreamWrapper;>;"
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 439
    const-string v7, "&"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    const-string v7, "STREAM"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 446
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/loopj/android/http/RequestParams$StreamWrapper;>;"
    :cond_3
    iget-object v7, p0, Lcom/loopj/android/http/RequestParams;->fileParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 447
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/loopj/android/http/RequestParams$FileWrapper;>;"
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 448
    const-string v7, "&"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    :cond_4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    const-string v7, "FILE"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 455
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/loopj/android/http/RequestParams$FileWrapper;>;"
    :cond_5
    iget-object v7, p0, Lcom/loopj/android/http/RequestParams;->fileArrayParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 456
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/loopj/android/http/RequestParams$FileWrapper;>;>;"
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_6

    .line 457
    const-string v7, "&"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    :cond_6
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    const-string v7, "FILES(SIZE="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ")"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 464
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/loopj/android/http/RequestParams$FileWrapper;>;>;"
    :cond_7
    const/4 v7, 0x0

    iget-object v8, p0, Lcom/loopj/android/http/RequestParams;->urlParamsWithObjects:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, v7, v8}, Lcom/loopj/android/http/RequestParams;->getParamsList(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 465
    .local v5, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/http/message/BasicNameValuePair;

    .line 466
    .local v4, "kv":Lorg/apache/http/message/BasicNameValuePair;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_8

    .line 467
    const-string v8, "&"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    :cond_8
    invoke-virtual {v4}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    const-string v8, "="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    invoke-virtual {v4}, Lorg/apache/http/message/BasicNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 474
    .end local v4    # "kv":Lorg/apache/http/message/BasicNameValuePair;
    :cond_9
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method
