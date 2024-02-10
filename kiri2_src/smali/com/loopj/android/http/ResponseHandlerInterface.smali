.class public interface abstract Lcom/loopj/android/http/ResponseHandlerInterface;
.super Ljava/lang/Object;
.source "ResponseHandlerInterface.java"


# virtual methods
.method public abstract getRequestHeaders()[Lorg/apache/http/Header;
.end method

.method public abstract getRequestURI()Ljava/net/URI;
.end method

.method public abstract getTag()Ljava/lang/Object;
.end method

.method public abstract getUsePoolThread()Z
.end method

.method public abstract getUseSynchronousMode()Z
.end method

.method public abstract onPostProcessResponse(Lcom/loopj/android/http/ResponseHandlerInterface;Lorg/apache/http/HttpResponse;)V
.end method

.method public abstract onPreProcessResponse(Lcom/loopj/android/http/ResponseHandlerInterface;Lorg/apache/http/HttpResponse;)V
.end method

.method public abstract sendCancelMessage()V
.end method

.method public abstract sendFailureMessage(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
.end method

.method public abstract sendFinishMessage()V
.end method

.method public abstract sendProgressMessage(JJ)V
.end method

.method public abstract sendResponseMessage(Lorg/apache/http/HttpResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract sendRetryMessage(I)V
.end method

.method public abstract sendStartMessage()V
.end method

.method public abstract sendSuccessMessage(I[Lorg/apache/http/Header;[B)V
.end method

.method public abstract setRequestHeaders([Lorg/apache/http/Header;)V
.end method

.method public abstract setRequestURI(Ljava/net/URI;)V
.end method

.method public abstract setTag(Ljava/lang/Object;)V
.end method

.method public abstract setUsePoolThread(Z)V
.end method

.method public abstract setUseSynchronousMode(Z)V
.end method
