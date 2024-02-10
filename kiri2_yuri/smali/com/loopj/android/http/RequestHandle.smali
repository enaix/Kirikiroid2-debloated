.class public Lcom/loopj/android/http/RequestHandle;
.super Ljava/lang/Object;
.source "RequestHandle.java"


# instance fields
.field private final request:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/loopj/android/http/AsyncHttpRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/loopj/android/http/AsyncHttpRequest;)V
    .locals 1
    .param p1, "request"    # Lcom/loopj/android/http/AsyncHttpRequest;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/loopj/android/http/RequestHandle;->request:Ljava/lang/ref/WeakReference;

    .line 33
    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 3
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .line 52
    iget-object v1, p0, Lcom/loopj/android/http/RequestHandle;->request:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loopj/android/http/AsyncHttpRequest;

    .line 53
    .local v0, "_request":Lcom/loopj/android/http/AsyncHttpRequest;
    if-eqz v0, :cond_1

    .line 54
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 55
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/loopj/android/http/RequestHandle$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/loopj/android/http/RequestHandle$1;-><init>(Lcom/loopj/android/http/RequestHandle;Lcom/loopj/android/http/AsyncHttpRequest;Z)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 60
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 63
    const/4 v1, 0x1

    .line 68
    :goto_0
    return v1

    .line 65
    :cond_0
    invoke-virtual {v0, p1}, Lcom/loopj/android/http/AsyncHttpRequest;->cancel(Z)Z

    move-result v1

    goto :goto_0

    .line 68
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 118
    iget-object v1, p0, Lcom/loopj/android/http/RequestHandle;->request:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loopj/android/http/AsyncHttpRequest;

    .line 119
    .local v0, "_request":Lcom/loopj/android/http/AsyncHttpRequest;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/loopj/android/http/AsyncHttpRequest;->getTag()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public isCancelled()Z
    .locals 2

    .prologue
    .line 88
    iget-object v1, p0, Lcom/loopj/android/http/RequestHandle;->request:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loopj/android/http/AsyncHttpRequest;

    .line 89
    .local v0, "_request":Lcom/loopj/android/http/AsyncHttpRequest;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/loopj/android/http/AsyncHttpRequest;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFinished()Z
    .locals 2

    .prologue
    .line 78
    iget-object v1, p0, Lcom/loopj/android/http/RequestHandle;->request:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loopj/android/http/AsyncHttpRequest;

    .line 79
    .local v0, "_request":Lcom/loopj/android/http/AsyncHttpRequest;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/loopj/android/http/AsyncHttpRequest;->isDone()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setTag(Ljava/lang/Object;)Lcom/loopj/android/http/RequestHandle;
    .locals 2
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 106
    iget-object v1, p0, Lcom/loopj/android/http/RequestHandle;->request:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loopj/android/http/AsyncHttpRequest;

    .line 107
    .local v0, "_request":Lcom/loopj/android/http/AsyncHttpRequest;
    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0, p1}, Lcom/loopj/android/http/AsyncHttpRequest;->setRequestTag(Ljava/lang/Object;)Lcom/loopj/android/http/AsyncHttpRequest;

    .line 109
    :cond_0
    return-object p0
.end method

.method public shouldBeGarbageCollected()Z
    .locals 2

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/loopj/android/http/RequestHandle;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/loopj/android/http/RequestHandle;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 94
    .local v0, "should":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 95
    iget-object v1, p0, Lcom/loopj/android/http/RequestHandle;->request:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 96
    :cond_1
    return v0

    .line 93
    .end local v0    # "should":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
