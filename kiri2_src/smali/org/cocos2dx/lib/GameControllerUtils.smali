.class public Lorg/cocos2dx/lib/GameControllerUtils;
.super Ljava/lang/Object;
.source "GameControllerUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ensureDirectoryExist(Ljava/lang/String;)V
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 10
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    .local v0, "sdkDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 12
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 14
    :cond_0
    return-void
.end method

.method public static readJsonFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 18
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 20
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    move-object v4, v6

    .line 41
    :goto_0
    return-object v4

    .line 26
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 28
    .local v3, "is":Ljava/io/FileInputStream;
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v5

    .line 29
    .local v5, "size":I
    new-array v0, v5, [B

    .line 31
    .local v0, "buffer":[B
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 32
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 34
    new-instance v4, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v4, v0, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .local v4, "jsonstr":Ljava/lang/String;
    goto :goto_0

    .line 37
    .end local v0    # "buffer":[B
    .end local v3    # "is":Ljava/io/FileInputStream;
    .end local v4    # "jsonstr":Ljava/lang/String;
    .end local v5    # "size":I
    :catch_0
    move-exception v1

    .line 38
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v4, v6

    .line 41
    goto :goto_0
.end method
