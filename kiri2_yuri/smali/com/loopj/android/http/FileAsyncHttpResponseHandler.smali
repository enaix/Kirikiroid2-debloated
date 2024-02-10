.class public abstract Lcom/loopj/android/http/FileAsyncHttpResponseHandler;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "FileAsyncHttpResponseHandler.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FileAsyncHttpRH"


# instance fields
.field protected final append:Z

.field protected final file:Ljava/io/File;

.field protected frontendFile:Ljava/io/File;

.field protected final renameIfExists:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    .line 88
    invoke-virtual {p0, p1}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->getTemporaryFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->file:Ljava/io/File;

    .line 89
    iput-boolean v1, p0, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->append:Z

    .line 90
    iput-boolean v1, p0, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->renameIfExists:Z

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;-><init>(Ljava/io/File;Z)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "append"    # Z

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;-><init>(Ljava/io/File;ZZ)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/io/File;ZZ)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .param p2, "append"    # Z
    .param p3, "renameTargetFileIfExists"    # Z

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    .line 67
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    const-string v1, "File passed into FileAsyncHttpResponseHandler constructor must not be null"

    invoke-static {v0, v1}, Lcom/loopj/android/http/Utils;->asserts(ZLjava/lang/String;)V

    .line 68
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    const-string v1, "Cannot create parent directories for requested File location"

    invoke-static {v0, v1}, Lcom/loopj/android/http/Utils;->asserts(ZLjava/lang/String;)V

    .line 71
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    sget-object v0, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string v1, "FileAsyncHttpRH"

    const-string v2, "Cannot create directories for requested Directory location, might not be a problem"

    invoke-interface {v0, v1, v2}, Lcom/loopj/android/http/LogInterface;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_1
    iput-object p1, p0, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->file:Ljava/io/File;

    .line 77
    iput-boolean p2, p0, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->append:Z

    .line 78
    iput-boolean p3, p0, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->renameIfExists:Z

    .line 79
    return-void

    .line 67
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public deleteTargetFile()Z
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->getTargetFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->getTargetFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getOriginalFile()Ljava/io/File;
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Target file is null, fatal!"

    invoke-static {v0, v1}, Lcom/loopj/android/http/Utils;->asserts(ZLjava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->file:Ljava/io/File;

    return-object v0

    .line 124
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getResponseData(Lorg/apache/http/HttpEntity;)[B
    .locals 10
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    if-eqz p1, :cond_1

    .line 205
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 206
    .local v4, "instream":Ljava/io/InputStream;
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    .line 207
    .local v2, "contentLength":J
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->getTargetFile()Ljava/io/File;

    move-result-object v7

    iget-boolean v8, p0, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->append:Z

    invoke-direct {v0, v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 208
    .local v0, "buffer":Ljava/io/FileOutputStream;
    if-eqz v4, :cond_1

    .line 210
    const/16 v7, 0x1000

    :try_start_0
    new-array v6, v7, [B

    .line 211
    .local v6, "tmp":[B
    const/4 v1, 0x0

    .line 213
    .local v1, "count":I
    :goto_0
    invoke-virtual {v4, v6}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, "l":I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v7

    if-nez v7, :cond_0

    .line 214
    add-int/2addr v1, v5

    .line 215
    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7, v5}, Ljava/io/FileOutputStream;->write([BII)V

    .line 216
    int-to-long v8, v1

    invoke-virtual {p0, v8, v9, v2, v3}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->sendProgressMessage(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 219
    .end local v1    # "count":I
    .end local v5    # "l":I
    .end local v6    # "tmp":[B
    :catchall_0
    move-exception v7

    invoke-static {v4}, Lcom/loopj/android/http/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    .line 220
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 221
    invoke-static {v0}, Lcom/loopj/android/http/AsyncHttpClient;->silentCloseOutputStream(Ljava/io/OutputStream;)V

    throw v7

    .line 219
    .restart local v1    # "count":I
    .restart local v5    # "l":I
    .restart local v6    # "tmp":[B
    :cond_0
    invoke-static {v4}, Lcom/loopj/android/http/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    .line 220
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 221
    invoke-static {v0}, Lcom/loopj/android/http/AsyncHttpClient;->silentCloseOutputStream(Ljava/io/OutputStream;)V

    .line 225
    .end local v0    # "buffer":Ljava/io/FileOutputStream;
    .end local v1    # "count":I
    .end local v2    # "contentLength":J
    .end local v4    # "instream":Ljava/io/InputStream;
    .end local v5    # "l":I
    .end local v6    # "tmp":[B
    :cond_1
    const/4 v7, 0x0

    return-object v7
.end method

.method public getTargetFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->frontendFile:Ljava/io/File;

    if-nez v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->getOriginalFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->getTargetFileByParsingURL()Ljava/io/File;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->frontendFile:Ljava/io/File;

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->frontendFile:Ljava/io/File;

    return-object v0

    .line 135
    :cond_1
    invoke-virtual {p0}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->getOriginalFile()Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method protected getTargetFileByParsingURL()Ljava/io/File;
    .locals 11

    .prologue
    const/16 v10, 0x2e

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 149
    invoke-virtual {p0}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->getOriginalFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v6

    const-string v9, "Target file is not a directory, cannot proceed"

    invoke-static {v6, v9}, Lcom/loopj/android/http/Utils;->asserts(ZLjava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->getRequestURI()Ljava/net/URI;

    move-result-object v6

    if-eqz v6, :cond_0

    move v6, v7

    :goto_0
    const-string v9, "RequestURI is null, cannot proceed"

    invoke-static {v6, v9}, Lcom/loopj/android/http/Utils;->asserts(ZLjava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->getRequestURI()Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    .line 152
    .local v3, "requestURL":Ljava/lang/String;
    const/16 v6, 0x2f

    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v3, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "filename":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->getOriginalFile()Ljava/io/File;

    move-result-object v6

    invoke-direct {v4, v6, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 154
    .local v4, "targetFileRtn":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->renameIfExists:Z

    if-eqz v6, :cond_3

    .line 156
    const-string v6, "."

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 157
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " (%d)"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "format":Ljava/lang/String;
    :goto_1
    const/4 v2, 0x0

    .line 163
    .local v2, "index":I
    :goto_2
    new-instance v4, Ljava/io/File;

    .end local v4    # "targetFileRtn":Ljava/io/File;
    invoke-virtual {p0}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->getOriginalFile()Ljava/io/File;

    move-result-object v6

    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v8

    invoke-static {v1, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v6, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 164
    .restart local v4    # "targetFileRtn":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    move-object v5, v4

    .line 169
    .end local v1    # "format":Ljava/lang/String;
    .end local v2    # "index":I
    .end local v4    # "targetFileRtn":Ljava/io/File;
    .local v5, "targetFileRtn":Ljava/lang/Object;
    :goto_3
    return-object v5

    .end local v0    # "filename":Ljava/lang/String;
    .end local v3    # "requestURL":Ljava/lang/String;
    .end local v5    # "targetFileRtn":Ljava/lang/Object;
    :cond_0
    move v6, v8

    .line 150
    goto :goto_0

    .line 159
    .restart local v0    # "filename":Ljava/lang/String;
    .restart local v3    # "requestURL":Ljava/lang/String;
    .restart local v4    # "targetFileRtn":Ljava/io/File;
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " (%d)"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "format":Ljava/lang/String;
    goto :goto_1

    .line 166
    .restart local v2    # "index":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v1    # "format":Ljava/lang/String;
    .end local v2    # "index":I
    :cond_3
    move-object v5, v4

    .line 169
    .restart local v5    # "targetFileRtn":Ljava/lang/Object;
    goto :goto_3
.end method

.method protected getTemporaryFile(Landroid/content/Context;)Ljava/io/File;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 109
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    const-string v2, "Tried creating temporary file without having Context"

    invoke-static {v1, v2}, Lcom/loopj/android/http/Utils;->asserts(ZLjava/lang/String;)V

    .line 111
    :try_start_0
    const-string v1, "temp_"

    const-string v2, "_handled"

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 115
    :goto_1
    return-object v1

    .line 109
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string v2, "FileAsyncHttpRH"

    const-string v3, "Cannot create temporary file"

    invoke-interface {v1, v2, v3, v0}, Lcom/loopj/android/http/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public abstract onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Ljava/io/File;)V
.end method

.method public final onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 1
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "responseBytes"    # [B
    .param p4, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->getTargetFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p4, v0}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Ljava/io/File;)V

    .line 175
    return-void
.end method

.method public abstract onSuccess(I[Lorg/apache/http/Header;Ljava/io/File;)V
.end method

.method public final onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 1
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "responseBytes"    # [B

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->getTargetFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;Ljava/io/File;)V

    .line 191
    return-void
.end method
