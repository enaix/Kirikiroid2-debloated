.class public Lcom/loopj/android/http/LogHandler;
.super Ljava/lang/Object;
.source "LogHandler.java"

# interfaces
.implements Lcom/loopj/android/http/LogInterface;


# instance fields
.field mLoggingEnabled:Z

.field mLoggingLevel:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loopj/android/http/LogHandler;->mLoggingEnabled:Z

    .line 10
    const/4 v0, 0x2

    iput v0, p0, Lcom/loopj/android/http/LogHandler;->mLoggingLevel:I

    return-void
.end method

.method private checkedWtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 72
    invoke-static {p1, p2, p3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 87
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/loopj/android/http/LogHandler;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 92
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/loopj/android/http/LogHandler;->logWithThrowable(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 117
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1, p2}, Lcom/loopj/android/http/LogHandler;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 122
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/loopj/android/http/LogHandler;->logWithThrowable(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    return-void
.end method

.method public getLoggingLevel()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/loopj/android/http/LogHandler;->mLoggingLevel:I

    return v0
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 97
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, p2}, Lcom/loopj/android/http/LogHandler;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 102
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/loopj/android/http/LogHandler;->logWithThrowable(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    return-void
.end method

.method public isLoggingEnabled()Z
    .locals 1

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/loopj/android/http/LogHandler;->mLoggingEnabled:Z

    return v0
.end method

.method public log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "logLevel"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/loopj/android/http/LogHandler;->logWithThrowable(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    return-void
.end method

.method public logWithThrowable(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "logLevel"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/loopj/android/http/LogHandler;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/loopj/android/http/LogHandler;->shouldLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    packed-switch p1, :pswitch_data_0

    .line 68
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 45
    :pswitch_1
    invoke-static {p2, p3, p4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 48
    :pswitch_2
    invoke-static {p2, p3, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 51
    :pswitch_3
    invoke-static {p2, p3, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 54
    :pswitch_4
    invoke-static {p2, p3, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 57
    :pswitch_5
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    .line 58
    invoke-direct {p0, p2, p3, p4}, Lcom/loopj/android/http/LogHandler;->checkedWtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 60
    :cond_1
    invoke-static {p2, p3, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 64
    :pswitch_6
    invoke-static {p2, p3, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 43
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_4
        :pswitch_6
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public setLoggingEnabled(Z)V
    .locals 0
    .param p1, "loggingEnabled"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/loopj/android/http/LogHandler;->mLoggingEnabled:Z

    .line 20
    return-void
.end method

.method public setLoggingLevel(I)V
    .locals 0
    .param p1, "loggingLevel"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/loopj/android/http/LogHandler;->mLoggingLevel:I

    .line 30
    return-void
.end method

.method public shouldLog(I)Z
    .locals 1
    .param p1, "logLevel"    # I

    .prologue
    .line 34
    iget v0, p0, Lcom/loopj/android/http/LogHandler;->mLoggingLevel:I

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 77
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/loopj/android/http/LogHandler;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 82
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/loopj/android/http/LogHandler;->logWithThrowable(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 107
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1, p2}, Lcom/loopj/android/http/LogHandler;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 112
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/loopj/android/http/LogHandler;->logWithThrowable(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    return-void
.end method

.method public wtf(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 127
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1, p2}, Lcom/loopj/android/http/LogHandler;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 132
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/loopj/android/http/LogHandler;->logWithThrowable(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    return-void
.end method
