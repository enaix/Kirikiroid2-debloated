.class Lcom/loopj/android/http/RetryHandler;
.super Ljava/lang/Object;
.source "RetryHandler.java"

# interfaces
.implements Lorg/apache/http/client/HttpRequestRetryHandler;


# static fields
.field private static final exceptionBlacklist:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final exceptionWhitelist:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final maxRetries:I

.field private final retrySleepTimeMS:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/loopj/android/http/RetryHandler;->exceptionWhitelist:Ljava/util/HashSet;

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/loopj/android/http/RetryHandler;->exceptionBlacklist:Ljava/util/HashSet;

    .line 48
    sget-object v0, Lcom/loopj/android/http/RetryHandler;->exceptionWhitelist:Ljava/util/HashSet;

    const-class v1, Lorg/apache/http/NoHttpResponseException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lcom/loopj/android/http/RetryHandler;->exceptionWhitelist:Ljava/util/HashSet;

    const-class v1, Ljava/net/UnknownHostException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lcom/loopj/android/http/RetryHandler;->exceptionWhitelist:Ljava/util/HashSet;

    const-class v1, Ljava/net/SocketException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lcom/loopj/android/http/RetryHandler;->exceptionBlacklist:Ljava/util/HashSet;

    const-class v1, Ljava/io/InterruptedIOException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lcom/loopj/android/http/RetryHandler;->exceptionBlacklist:Ljava/util/HashSet;

    const-class v1, Ljavax/net/ssl/SSLException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "maxRetries"    # I
    .param p2, "retrySleepTimeMS"    # I

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p1, p0, Lcom/loopj/android/http/RetryHandler;->maxRetries:I

    .line 65
    iput p2, p0, Lcom/loopj/android/http/RetryHandler;->retrySleepTimeMS:I

    .line 66
    return-void
.end method

.method static addClassToBlacklist(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/loopj/android/http/RetryHandler;->exceptionBlacklist:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 112
    return-void
.end method

.method static addClassToWhitelist(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/loopj/android/http/RetryHandler;->exceptionWhitelist:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 108
    return-void
.end method


# virtual methods
.method protected isInList(Ljava/util/HashSet;Ljava/lang/Throwable;)Z
    .locals 3
    .param p2, "error"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Class",
            "<*>;>;",
            "Ljava/lang/Throwable;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Class<*>;>;"
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 116
    .local v0, "aList":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    const/4 v1, 0x1

    .line 120
    .end local v0    # "aList":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
    .locals 6
    .param p1, "exception"    # Ljava/io/IOException;
    .param p2, "executionCount"    # I
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;

    .prologue
    const/4 v4, 0x0

    .line 70
    const/4 v2, 0x1

    .line 72
    .local v2, "retry":Z
    const-string v5, "http.request_sent"

    invoke-interface {p3, v5}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 73
    .local v0, "b":Ljava/lang/Boolean;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v3, 0x1

    .line 75
    .local v3, "sent":Z
    :goto_0
    iget v5, p0, Lcom/loopj/android/http/RetryHandler;->maxRetries:I

    if-le p2, v5, :cond_2

    .line 77
    const/4 v2, 0x0

    .line 89
    :cond_0
    :goto_1
    if-eqz v2, :cond_5

    .line 91
    const-string v5, "http.request"

    invoke-interface {p3, v5}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/client/methods/HttpUriRequest;

    .line 92
    .local v1, "currentReq":Lorg/apache/http/client/methods/HttpUriRequest;
    if-nez v1, :cond_5

    .line 103
    .end local v1    # "currentReq":Lorg/apache/http/client/methods/HttpUriRequest;
    :goto_2
    return v4

    .end local v3    # "sent":Z
    :cond_1
    move v3, v4

    .line 73
    goto :goto_0

    .line 78
    .restart local v3    # "sent":Z
    :cond_2
    sget-object v5, Lcom/loopj/android/http/RetryHandler;->exceptionWhitelist:Ljava/util/HashSet;

    invoke-virtual {p0, v5, p1}, Lcom/loopj/android/http/RetryHandler;->isInList(Ljava/util/HashSet;Ljava/lang/Throwable;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 80
    const/4 v2, 0x1

    goto :goto_1

    .line 81
    :cond_3
    sget-object v5, Lcom/loopj/android/http/RetryHandler;->exceptionBlacklist:Ljava/util/HashSet;

    invoke-virtual {p0, v5, p1}, Lcom/loopj/android/http/RetryHandler;->isInList(Ljava/util/HashSet;Ljava/lang/Throwable;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 83
    const/4 v2, 0x0

    goto :goto_1

    .line 84
    :cond_4
    if-nez v3, :cond_0

    .line 86
    const/4 v2, 0x1

    goto :goto_1

    .line 97
    :cond_5
    if-eqz v2, :cond_6

    .line 98
    iget v4, p0, Lcom/loopj/android/http/RetryHandler;->retrySleepTimeMS:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    :goto_3
    move v4, v2

    .line 103
    goto :goto_2

    .line 100
    :cond_6
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method
