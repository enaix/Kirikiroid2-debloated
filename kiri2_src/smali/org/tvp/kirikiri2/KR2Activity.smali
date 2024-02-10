.class public Lorg/tvp/kirikiri2/KR2Activity;
.super Lorg/cocos2dx/lib/Cocos2dxActivity;
.source "KR2Activity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;,
        Lorg/tvp/kirikiri2/KR2Activity$KR2GLSurfaceView;,
        Lorg/tvp/kirikiri2/KR2Activity$ShowTextInputTask;
    }
.end annotation


# static fields
.field static final ORIENT_HORIZONTAL:I = 0x2

.field static final ORIENT_VERTICAL:I = 0x1

.field static _extSdPaths:[Ljava/lang/String;

.field static mAcitivityManager:Landroid/app/ActivityManager;

.field static mDbgMemoryInfo:Landroid/os/Debug$MemoryInfo;

.field static mDialogMessage:Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;

.field protected static mTextEdit:Landroid/view/View;

.field static memoryInfo:Landroid/app/ActivityManager$MemoryInfo;

.field static msgHandler:Landroid/os/Handler;

.field public static sInstance:Lorg/tvp/kirikiri2/KR2Activity;


# instance fields
.field Sp:Landroid/content/SharedPreferences;

.field mGetVolumeState:Ljava/lang/reflect/Method;

.field mMethodGetPaths:Ljava/lang/reflect/Method;

.field mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 252
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    sput-object v0, Lorg/tvp/kirikiri2/KR2Activity;->memoryInfo:Landroid/app/ActivityManager$MemoryInfo;

    .line 253
    sput-object v1, Lorg/tvp/kirikiri2/KR2Activity;->mAcitivityManager:Landroid/app/ActivityManager;

    .line 254
    new-instance v0, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v0}, Landroid/os/Debug$MemoryInfo;-><init>()V

    sput-object v0, Lorg/tvp/kirikiri2/KR2Activity;->mDbgMemoryInfo:Landroid/os/Debug$MemoryInfo;

    .line 291
    const-string v0, "ffmpeg"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 292
    const-string v0, "SDL2"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 412
    new-instance v0, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;

    invoke-direct {v0}, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;-><init>()V

    sput-object v0, Lorg/tvp/kirikiri2/KR2Activity;->mDialogMessage:Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;

    .line 414
    sput-object v1, Lorg/tvp/kirikiri2/KR2Activity;->mTextEdit:Landroid/view/View;

    .line 417
    new-instance v0, Lorg/tvp/kirikiri2/KR2Activity$1;

    invoke-direct {v0}, Lorg/tvp/kirikiri2/KR2Activity$1;-><init>()V

    sput-object v0, Lorg/tvp/kirikiri2/KR2Activity;->msgHandler:Landroid/os/Handler;

    .line 1239
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 251
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;-><init>()V

    .line 534
    iput-object v0, p0, Lorg/tvp/kirikiri2/KR2Activity;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 535
    iput-object v0, p0, Lorg/tvp/kirikiri2/KR2Activity;->mMethodGetPaths:Ljava/lang/reflect/Method;

    .line 536
    iput-object v0, p0, Lorg/tvp/kirikiri2/KR2Activity;->mGetVolumeState:Ljava/lang/reflect/Method;

    .line 251
    return-void
.end method

.method public static CreateFolders(Ljava/lang/String;)Z
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 1168
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1171
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1192
    :goto_0
    return v2

    .line 1176
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_1

    .line 1177
    sget-object v3, Lorg/tvp/kirikiri2/KR2Activity;->sInstance:Lorg/tvp/kirikiri2/KR2Activity;

    invoke-static {v1, v2, v3}, Lorg/tvp/kirikiri2/KR2Activity;->getDocumentFile(Ljava/io/File;ZLandroid/content/Context;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v0

    .line 1180
    .local v0, "document":Landroid/support/v4/provider/DocumentFile;
    invoke-virtual {v0}, Landroid/support/v4/provider/DocumentFile;->exists()Z

    move-result v2

    goto :goto_0

    .line 1184
    .end local v0    # "document":Landroid/support/v4/provider/DocumentFile;
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-ne v2, v3, :cond_2

    .line 1186
    :try_start_0
    sget-object v2, Lorg/tvp/kirikiri2/KR2Activity;->sInstance:Lorg/tvp/kirikiri2/KR2Activity;

    invoke-static {v2, v1}, Lorg/tvp/kirikiri2/MediaStoreHack;->mkdir(Landroid/content/Context;Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1187
    :catch_0
    move-exception v2

    .line 1192
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static DeleteFile(Ljava/lang/String;)Z
    .locals 10
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1032
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1034
    .local v2, "file":Ljava/io/File;
    sget-object v8, Lorg/tvp/kirikiri2/KR2Activity;->sInstance:Lorg/tvp/kirikiri2/KR2Activity;

    invoke-static {v2, v8}, Lorg/tvp/kirikiri2/KR2Activity;->deleteFilesInFolder(Ljava/io/File;Landroid/content/Context;)Z

    move-result v3

    .line 1035
    .local v3, "fileDelete":Z
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v8

    if-nez v8, :cond_0

    if-eqz v3, :cond_2

    :cond_0
    move v6, v7

    .line 1060
    :cond_1
    :goto_0
    return v6

    .line 1039
    :cond_2
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_3

    sget-object v8, Lorg/tvp/kirikiri2/KR2Activity;->sInstance:Lorg/tvp/kirikiri2/KR2Activity;

    invoke-static {v2, v8}, Lorg/tvp/kirikiri2/KR2Activity;->isOnExtSdCard(Ljava/io/File;Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1041
    sget-object v7, Lorg/tvp/kirikiri2/KR2Activity;->sInstance:Lorg/tvp/kirikiri2/KR2Activity;

    invoke-static {v2, v6, v7}, Lorg/tvp/kirikiri2/KR2Activity;->getDocumentFile(Ljava/io/File;ZLandroid/content/Context;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v0

    .line 1042
    .local v0, "document":Landroid/support/v4/provider/DocumentFile;
    invoke-virtual {v0}, Landroid/support/v4/provider/DocumentFile;->delete()Z

    move-result v6

    goto :goto_0

    .line 1046
    .end local v0    # "document":Landroid/support/v4/provider/DocumentFile;
    :cond_3
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x13

    if-ne v8, v9, :cond_4

    .line 1047
    sget-object v8, Lorg/tvp/kirikiri2/KR2Activity;->sInstance:Lorg/tvp/kirikiri2/KR2Activity;

    invoke-virtual {v8}, Lorg/tvp/kirikiri2/KR2Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1050
    .local v4, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lorg/tvp/kirikiri2/KR2Activity;->sInstance:Lorg/tvp/kirikiri2/KR2Activity;

    invoke-static {v8, v9}, Lorg/tvp/kirikiri2/MediaStoreHack;->getUriFromFile(Ljava/lang/String;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v5

    .line 1051
    .local v5, "uri":Landroid/net/Uri;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4, v5, v8, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1052
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-nez v8, :cond_1

    move v6, v7

    goto :goto_0

    .line 1054
    .end local v5    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 1055
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "FileUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Error when deleting file "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1060
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "resolver":Landroid/content/ContentResolver;
    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    move v6, v7

    goto :goto_0
.end method

.method public static GetInstance()Lorg/tvp/kirikiri2/KR2Activity;
    .locals 1

    .prologue
    .line 288
    sget-object v0, Lorg/tvp/kirikiri2/KR2Activity;->sInstance:Lorg/tvp/kirikiri2/KR2Activity;

    return-object v0
.end method

.method public static GetVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 526
    const/4 v0, 0x0

    .line 528
    .local v0, "verstr":Ljava/lang/String;
    :try_start_0
    sget-object v1, Lorg/tvp/kirikiri2/KR2Activity;->sInstance:Lorg/tvp/kirikiri2/KR2Activity;

    invoke-virtual {v1}, Lorg/tvp/kirikiri2/KR2Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lorg/tvp/kirikiri2/KR2Activity;->sInstance:Lorg/tvp/kirikiri2/KR2Activity;

    invoke-virtual {v2}, Lorg/tvp/kirikiri2/KR2Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    :goto_0
    return-object v0

    .line 529
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static MessageController(III)V
    .locals 2
    .param p0, "what"    # I
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I

    .prologue
    .line 518
    sget-object v1, Lorg/tvp/kirikiri2/KR2Activity;->msgHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 519
    .local v0, "msg":Landroid/os/Message;
    iput p0, v0, Landroid/os/Message;->what:I

    .line 520
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 521
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 522
    sget-object v1, Lorg/tvp/kirikiri2/KR2Activity;->msgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 523
    return-void
.end method

.method public static RenameFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .param p0, "from"    # Ljava/lang/String;
    .param p1, "to"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 968
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 969
    .local v3, "file":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 970
    .local v8, "target":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_1

    .line 1009
    :cond_0
    :goto_0
    return v9

    .line 972
    :cond_1
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 973
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/tvp/kirikiri2/KR2Activity;->DeleteFile(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 976
    :cond_2
    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    .line 977
    .local v7, "parent":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_3

    .line 978
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/tvp/kirikiri2/KR2Activity;->CreateFolders(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 981
    :cond_3
    invoke-virtual {v3, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v11

    if-eqz v11, :cond_4

    move v9, v10

    goto :goto_0

    .line 984
    :cond_4
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x15

    if-lt v11, v12, :cond_5

    .line 985
    sget-object v11, Lorg/tvp/kirikiri2/KR2Activity;->sInstance:Lorg/tvp/kirikiri2/KR2Activity;

    invoke-static {v3, v9, v11}, Lorg/tvp/kirikiri2/KR2Activity;->getDocumentFile(Ljava/io/File;ZLandroid/content/Context;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v1

    .line 986
    .local v1, "document":Landroid/support/v4/provider/DocumentFile;
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/support/v4/provider/DocumentFile;->renameTo(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    move v9, v10

    .line 987
    goto :goto_0

    .line 991
    .end local v1    # "document":Landroid/support/v4/provider/DocumentFile;
    :cond_5
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x13

    if-ne v10, v11, :cond_0

    .line 993
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 994
    .local v5, "input":Ljava/io/FileInputStream;
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v10

    long-to-int v4, v10

    .line 995
    .local v4, "filesize":I
    new-array v0, v4, [B

    .line 996
    .local v0, "buffer":[B
    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 997
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 998
    sget-object v10, Lorg/tvp/kirikiri2/KR2Activity;->sInstance:Lorg/tvp/kirikiri2/KR2Activity;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lorg/tvp/kirikiri2/MediaStoreHack;->getOutputStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v6

    .line 999
    .local v6, "out":Ljava/io/OutputStream;
    invoke-virtual {v6, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1000
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 1001
    sget-object v10, Lorg/tvp/kirikiri2/KR2Activity;->sInstance:Lorg/tvp/kirikiri2/KR2Activity;

    invoke-static {v10, v3}, Lorg/tvp/kirikiri2/MediaStoreHack;->delete(Landroid/content/Context;Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    goto :goto_0

    .line 1002
    .end local v0    # "buffer":[B
    .end local v4    # "filesize":I
    .end local v5    # "input":Ljava/io/FileInputStream;
    .end local v6    # "out":Ljava/io/OutputStream;
    :catch_0
    move-exception v2

    .line 1004
    .local v2, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public static ShowInputBox(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "prompt"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "Buttons"    # [Ljava/lang/String;

    .prologue
    .line 445
    sget-object v0, Lorg/tvp/kirikiri2/KR2Activity;->mDialogMessage:Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;

    invoke-virtual {v0, p0, p1, p3}, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;->Init(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 446
    sget-object v0, Lorg/tvp/kirikiri2/KR2Activity;->msgHandler:Landroid/os/Handler;

    new-instance v1, Lorg/tvp/kirikiri2/KR2Activity$3;

    invoke-direct {v1, p2}, Lorg/tvp/kirikiri2/KR2Activity$3;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 452
    return-void
.end method

.method public static ShowMessageBox(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "Buttons"    # [Ljava/lang/String;

    .prologue
    .line 435
    sget-object v0, Lorg/tvp/kirikiri2/KR2Activity;->mDialogMessage:Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;

    invoke-virtual {v0, p0, p1, p2}, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;->Init(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 436
    sget-object v0, Lorg/tvp/kirikiri2/KR2Activity;->msgHandler:Landroid/os/Handler;

    new-instance v1, Lorg/tvp/kirikiri2/KR2Activity$2;

    invoke-direct {v1}, Lorg/tvp/kirikiri2/KR2Activity$2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 442
    return-void
.end method

.method public static WriteFile(Ljava/lang/String;[B)Z
    .locals 8
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "data"    # [B

    .prologue
    .line 1145
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1146
    .local v4, "target":Ljava/io/File;
    const/4 v0, 0x0

    .line 1147
    .local v0, "bakname":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1148
    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    .line 1149
    .local v1, "parentPath":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/tvp/kirikiri2/KR2Activity;->splitFileName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1150
    .local v3, "splitedPath":[Ljava/lang/String;
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 1151
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, v3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1152
    invoke-static {p0, v0}, Lorg/tvp/kirikiri2/KR2Activity;->RenameFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1160
    .end local v1    # "parentPath":Ljava/lang/String;
    .end local v3    # "splitedPath":[Ljava/lang/String;
    :cond_0
    invoke-static {v4, p1}, Lorg/tvp/kirikiri2/KR2Activity;->_WriteFile(Ljava/io/File;[B)Z

    move-result v2

    .line 1161
    .local v2, "ret":Z
    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 1162
    invoke-static {v0}, Lorg/tvp/kirikiri2/KR2Activity;->DeleteFile(Ljava/lang/String;)Z

    .line 1164
    :cond_1
    return v2
.end method

.method static _WriteFile(Ljava/io/File;[B)Z
    .locals 9
    .param p0, "target"    # Ljava/io/File;
    .param p1, "data"    # [B

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1101
    const/4 v3, 0x0

    .line 1105
    .local v3, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-static {p0}, Lorg/tvp/kirikiri2/KR2Activity;->isWritable(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1106
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1107
    .local v2, "os":Ljava/io/OutputStream;
    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 1108
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 1141
    .end local v2    # "os":Ljava/io/OutputStream;
    :goto_0
    return v5

    .line 1113
    :cond_0
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v7, v8, :cond_2

    .line 1114
    const/4 v7, 0x0

    sget-object v8, Lorg/tvp/kirikiri2/KR2Activity;->sInstance:Lorg/tvp/kirikiri2/KR2Activity;

    invoke-static {p0, v7, v8}, Lorg/tvp/kirikiri2/KR2Activity;->getDocumentFile(Ljava/io/File;ZLandroid/content/Context;)Landroid/support/v4/provider/DocumentFile;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1116
    .local v1, "document":Landroid/support/v4/provider/DocumentFile;
    :try_start_1
    invoke-virtual {v1}, Landroid/support/v4/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 1117
    .local v0, "docUri":Landroid/net/Uri;
    sget-object v7, Lorg/tvp/kirikiri2/KR2Activity;->sInstance:Lorg/tvp/kirikiri2/KR2Activity;

    invoke-virtual {v7}, Lorg/tvp/kirikiri2/KR2Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    .line 1131
    .end local v0    # "docUri":Landroid/net/Uri;
    .end local v1    # "document":Landroid/support/v4/provider/DocumentFile;
    :goto_1
    if-eqz v3, :cond_1

    .line 1132
    :try_start_2
    invoke-virtual {v3, p1}, Ljava/io/OutputStream;->write([B)V

    .line 1133
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    goto :goto_0

    .line 1136
    :catch_0
    move-exception v5

    :cond_1
    :goto_2
    move v5, v6

    .line 1141
    goto :goto_0

    .line 1123
    :cond_2
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x13

    if-ne v7, v8, :cond_3

    .line 1125
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lorg/tvp/kirikiri2/KR2Activity;->sInstance:Lorg/tvp/kirikiri2/KR2Activity;

    invoke-static {v7, v8}, Lorg/tvp/kirikiri2/MediaStoreHack;->getUriFromFile(Ljava/lang/String;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v4

    .line 1126
    .local v4, "uri":Landroid/net/Uri;
    sget-object v7, Lorg/tvp/kirikiri2/KR2Activity;->sInstance:Lorg/tvp/kirikiri2/KR2Activity;

    invoke-virtual {v7}, Lorg/tvp/kirikiri2/KR2Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    .line 1127
    goto :goto_1

    .end local v4    # "uri":Landroid/net/Uri;
    :cond_3
    move v5, v6

    .line 1128
    goto :goto_0

    .line 1138
    :catch_1
    move-exception v5

    goto :goto_2

    .line 1120
    .restart local v1    # "document":Landroid/support/v4/provider/DocumentFile;
    :catch_2
    move-exception v7

    goto :goto_1

    .line 1118
    :catch_3
    move-exception v7

    goto :goto_1
.end method

.method static synthetic access$0(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 510
    invoke-static {p0}, Lorg/tvp/kirikiri2/KR2Activity;->onMessageBoxText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(I)V
    .locals 0

    .prologue
    .line 509
    invoke-static {p0}, Lorg/tvp/kirikiri2/KR2Activity;->onMessageBoxOK(I)V

    return-void
.end method

.method static synthetic access$2(Lorg/tvp/kirikiri2/KR2Activity;)Lorg/cocos2dx/lib/ResizeLayout;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lorg/tvp/kirikiri2/KR2Activity;->mFrameLayout:Lorg/cocos2dx/lib/ResizeLayout;

    return-object v0
.end method

.method static synthetic access$3(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 595
    invoke-static {p0}, Lorg/tvp/kirikiri2/KR2Activity;->nativeInsertText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(FF)V
    .locals 0

    .prologue
    .line 598
    invoke-static {p0, p1}, Lorg/tvp/kirikiri2/KR2Activity;->nativeHoverMoved(FF)V

    return-void
.end method

.method static synthetic access$5(IFF)V
    .locals 0

    .prologue
    .line 587
    invoke-static {p0, p1, p2}, Lorg/tvp/kirikiri2/KR2Activity;->nativeTouchesBegin(IFF)V

    return-void
.end method

.method static synthetic access$6([I[F[F)V
    .locals 0

    .prologue
    .line 589
    invoke-static {p0, p1, p2}, Lorg/tvp/kirikiri2/KR2Activity;->nativeTouchesMove([I[F[F)V

    return-void
.end method

.method static synthetic access$7(IFF)V
    .locals 0

    .prologue
    .line 588
    invoke-static {p0, p1, p2}, Lorg/tvp/kirikiri2/KR2Activity;->nativeTouchesEnd(IFF)V

    return-void
.end method

.method static synthetic access$8([I[F[F)V
    .locals 0

    .prologue
    .line 590
    invoke-static {p0, p1, p2}, Lorg/tvp/kirikiri2/KR2Activity;->nativeTouchesCancel([I[F[F)V

    return-void
.end method

.method static synthetic access$9(F)V
    .locals 0

    .prologue
    .line 599
    invoke-static {p0}, Lorg/tvp/kirikiri2/KR2Activity;->nativeMouseScrolled(F)V

    return-void
.end method

.method public static final deleteFilesInFolder(Ljava/io/File;Landroid/content/Context;)Z
    .locals 5
    .param p0, "folder"    # Ljava/io/File;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 1013
    const/4 v1, 0x1

    .line 1014
    .local v1, "totalSuccess":Z
    if-nez p0, :cond_0

    .line 1028
    :goto_0
    return v2

    .line 1016
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1017
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    :goto_1
    if-lt v2, v4, :cond_2

    .line 1021
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1022
    const/4 v1, 0x0

    :cond_1
    :goto_2
    move v2, v1

    .line 1028
    goto :goto_0

    .line 1017
    :cond_2
    aget-object v0, v3, v2

    .line 1018
    .local v0, "child":Ljava/io/File;
    invoke-static {v0, p1}, Lorg/tvp/kirikiri2/KR2Activity;->deleteFilesInFolder(Ljava/io/File;Landroid/content/Context;)Z

    .line 1017
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1025
    .end local v0    # "child":Ljava/io/File;
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1026
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public static exit()V
    .locals 1

    .prologue
    .line 1235
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 1236
    return-void
.end method

.method public static getAvailMemory()J
    .locals 2

    .prologue
    .line 264
    sget-object v0, Lorg/tvp/kirikiri2/KR2Activity;->memoryInfo:Landroid/app/ActivityManager$MemoryInfo;

    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    return-wide v0
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 5

    .prologue
    .line 272

    const-string v0, "0000000000000000"
    return-object v0

    invoke-static {}, Lorg/tvp/kirikiri2/KR2Activity;->GetInstance()Lorg/tvp/kirikiri2/KR2Activity;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Lorg/tvp/kirikiri2/KR2Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 273
    .local v2, "mgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, "DeviceID":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 275
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DevID:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 284
    :goto_0
    return-object v3

    .line 277
    :cond_0
    invoke-static {}, Lorg/tvp/kirikiri2/KR2Activity;->GetInstance()Lorg/tvp/kirikiri2/KR2Activity;

    move-result-object v3

    invoke-virtual {v3}, Lorg/tvp/kirikiri2/KR2Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "android_id"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 278
    .local v1, "androidId":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-le v3, v4, :cond_1

    .line 279
    const-string v3, "9774d56d682e549c"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 280
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AndroidID:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 281
    :cond_1
    sget-object v3, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    if-eqz v3, :cond_2

    sget-object v3, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_2

    .line 282
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AndroidID:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 284
    :cond_2
    const-string v3, ""

    goto :goto_0
.end method

.method public static getDocumentFile(Ljava/io/File;ZLandroid/content/Context;)Landroid/support/v4/provider/DocumentFile;
    .locals 17
    .param p0, "file"    # Ljava/io/File;
    .param p1, "isDirectory"    # Z
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 916
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lorg/tvp/kirikiri2/KR2Activity;->getExtSdCardFolder(Ljava/io/File;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 917
    .local v3, "baseFolder":Ljava/lang/String;
    const/4 v10, 0x0

    .line 918
    .local v10, "originalDirectory":Z
    if-nez v3, :cond_1

    .line 919
    const/4 v4, 0x0

    .line 964
    :cond_0
    :goto_0
    return-object v4

    .line 922
    :cond_1
    const/4 v12, 0x0

    .line 924
    .local v12, "relativePath":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v7

    .line 925
    .local v7, "fullPath":Ljava/lang/String;
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 926
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v7, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v12

    .line 936
    .end local v7    # "fullPath":Ljava/lang/String;
    :goto_1
    invoke-static/range {p2 .. p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v14

    const-string v15, "URI"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 938
    .local v2, "as":Ljava/lang/String;
    const/4 v13, 0x0

    .line 939
    .local v13, "treeUri":Landroid/net/Uri;
    if-eqz v2, :cond_2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 940
    :cond_2
    if-nez v13, :cond_4

    .line 941
    const/4 v4, 0x0

    goto :goto_0

    .line 927
    .end local v2    # "as":Ljava/lang/String;
    .end local v13    # "treeUri":Landroid/net/Uri;
    .restart local v7    # "fullPath":Ljava/lang/String;
    :cond_3
    const/4 v10, 0x1

    goto :goto_1

    .line 929
    .end local v7    # "fullPath":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 930
    .local v5, "e":Ljava/io/IOException;
    const/4 v4, 0x0

    goto :goto_0

    .line 932
    .end local v5    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v6

    .line 933
    .local v6, "f":Ljava/lang/Exception;
    const/4 v10, 0x1

    goto :goto_1

    .line 945
    .end local v6    # "f":Ljava/lang/Exception;
    .restart local v2    # "as":Ljava/lang/String;
    .restart local v13    # "treeUri":Landroid/net/Uri;
    :cond_4
    move-object/from16 v0, p2

    invoke-static {v0, v13}, Landroid/support/v4/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v4

    .line 946
    .local v4, "document":Landroid/support/v4/provider/DocumentFile;
    if-nez v10, :cond_0

    .line 947
    const-string v14, "\\/"

    invoke-virtual {v12, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 948
    .local v11, "parts":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    array-length v14, v11

    if-ge v8, v14, :cond_0

    .line 949
    aget-object v14, v11, v8

    invoke-virtual {v4, v14}, Landroid/support/v4/provider/DocumentFile;->findFile(Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v9

    .line 950
    .local v9, "nextDocument":Landroid/support/v4/provider/DocumentFile;
    if-nez v9, :cond_6

    .line 952
    :try_start_1
    array-length v14, v11

    add-int/lit8 v14, v14, -0x1

    if-lt v8, v14, :cond_5

    if-eqz p1, :cond_7

    .line 953
    :cond_5
    aget-object v14, v11, v8

    invoke-virtual {v4, v14}, Landroid/support/v4/provider/DocumentFile;->createDirectory(Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v9

    .line 961
    :cond_6
    :goto_3
    move-object v4, v9

    .line 948
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 955
    :cond_7
    const-string v14, "image"

    aget-object v15, v11, v8

    invoke-virtual {v4, v14, v15}, Landroid/support/v4/provider/DocumentFile;->createFile(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v9

    goto :goto_3

    .line 957
    :catch_2
    move-exception v5

    .line 958
    .local v5, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static getExtSdCardFolder(Ljava/io/File;Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "file"    # Ljava/io/File;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 896
    sget-object v3, Lorg/tvp/kirikiri2/KR2Activity;->_extSdPaths:[Ljava/lang/String;

    if-nez v3, :cond_0

    .line 897
    invoke-static {p1}, Lorg/tvp/kirikiri2/KR2Activity;->getExtSdCardPaths(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lorg/tvp/kirikiri2/KR2Activity;->_extSdPaths:[Ljava/lang/String;

    .line 899
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    sget-object v3, Lorg/tvp/kirikiri2/KR2Activity;->_extSdPaths:[Ljava/lang/String;

    array-length v3, v3

    if-lt v1, v3, :cond_1

    .line 908
    :goto_1
    return-object v2

    .line 900
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/tvp/kirikiri2/KR2Activity;->_extSdPaths:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 901
    sget-object v3, Lorg/tvp/kirikiri2/KR2Activity;->_extSdPaths:[Ljava/lang/String;

    aget-object v2, v3, v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 899
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 905
    :catch_0
    move-exception v0

    .line 906
    .local v0, "e":Ljava/io/IOException;
    goto :goto_1
.end method

.method private static getExtSdCardPaths(Landroid/content/Context;)[Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 872
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 873
    .local v3, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "external"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v6

    array-length v7, v6

    move v4, v5

    :goto_0
    if-lt v4, v7, :cond_0

    .line 891
    new-array v4, v5, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    return-object v4

    .line 873
    :cond_0
    aget-object v0, v6, v4

    .line 874
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_1

    const-string v8, "external"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 875
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const-string v9, "/Android/data"

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 876
    .local v1, "index":I
    if-gez v1, :cond_2

    .line 877
    const-string v8, "FileUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Unexpected external file dir: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    .end local v1    # "index":I
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 879
    .restart local v1    # "index":I
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 881
    .local v2, "path":Ljava/lang/String;
    :try_start_0
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 886
    :goto_2
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 883
    :catch_0
    move-exception v8

    goto :goto_2
.end method

.method public static getLocaleName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1224
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 1225
    .local v1, "defloc":Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 1226
    .local v2, "lang":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 1227
    .local v0, "country":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1228
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1229
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1231
    :cond_0
    return-object v2
.end method

.method public static getOutputStream(Ljava/io/File;Landroid/content/Context;J)Ljava/io/OutputStream;
    .locals 7
    .param p0, "target"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "s"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1064
    const/4 v1, 0x0

    .line 1067
    .local v1, "outStream":Ljava/io/OutputStream;
    :try_start_0
    invoke-static {p0}, Lorg/tvp/kirikiri2/KR2Activity;->isWritable(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1069
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .end local v1    # "outStream":Ljava/io/OutputStream;
    .local v2, "outStream":Ljava/io/OutputStream;
    move-object v1, v2

    .end local v2    # "outStream":Ljava/io/OutputStream;
    .restart local v1    # "outStream":Ljava/io/OutputStream;
    :cond_0
    :goto_0
    move-object v4, v1

    .line 1084
    :goto_1
    return-object v4

    .line 1071
    :cond_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_2

    .line 1073
    const/4 v4, 0x0

    invoke-static {p0, v4, p1}, Lorg/tvp/kirikiri2/KR2Activity;->getDocumentFile(Ljava/io/File;ZLandroid/content/Context;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v3

    .line 1074
    .local v3, "targetDocument":Landroid/support/v4/provider/DocumentFile;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v3}, Landroid/support/v4/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    .line 1075
    goto :goto_0

    .end local v3    # "targetDocument":Landroid/support/v4/provider/DocumentFile;
    :cond_2
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-ne v4, v5, :cond_0

    .line 1077
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lorg/tvp/kirikiri2/MediaStoreHack;->getOutputStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_1

    .line 1080
    :catch_0
    move-exception v0

    .line 1081
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "FileUtils"

    .line 1082
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error when copying file from "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1081
    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getUsedMemory()J
    .locals 2

    .prologue
    .line 268
    sget-object v0, Lorg/tvp/kirikiri2/KR2Activity;->mDbgMemoryInfo:Landroid/os/Debug$MemoryInfo;

    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method static guideDialogForLEXA(Ljava/lang/String;)V
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 780
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v2, Lorg/tvp/kirikiri2/KR2Activity;->sInstance:Lorg/tvp/kirikiri2/KR2Activity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 781
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v1, Landroid/widget/ImageView;

    sget-object v2, Lorg/tvp/kirikiri2/KR2Activity;->sInstance:Lorg/tvp/kirikiri2/KR2Activity;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 782
    .local v1, "image":Landroid/widget/ImageView;
    sget-object v2, Lorg/tvp/kirikiri2/KR2Activity;->sInstance:Lorg/tvp/kirikiri2/KR2Activity;

    invoke-virtual {v2}, Lorg/tvp/kirikiri2/KR2Activity;->get_res_sd_operate_step()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 784
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 785
    invoke-virtual {v2, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 786
    const-string v3, "OK"

    new-instance v4, Lorg/tvp/kirikiri2/KR2Activity$6;

    invoke-direct {v4}, Lorg/tvp/kirikiri2/KR2Activity$6;-><init>()V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 792
    const-string v3, "Cancel"

    new-instance v4, Lorg/tvp/kirikiri2/KR2Activity$7;

    invoke-direct {v4}, Lorg/tvp/kirikiri2/KR2Activity$7;-><init>()V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 798
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 799
    return-void
.end method

.method public static hideTextInput()V
    .locals 2

    .prologue
    .line 497
    sget-object v0, Lorg/tvp/kirikiri2/KR2Activity;->msgHandler:Landroid/os/Handler;

    new-instance v1, Lorg/tvp/kirikiri2/KR2Activity$4;

    invoke-direct {v1}, Lorg/tvp/kirikiri2/KR2Activity$4;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 507
    return-void
.end method

.method private static native initDump(Ljava/lang/String;)V
.end method

.method public static isOnExtSdCard(Ljava/io/File;Landroid/content/Context;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 912
    invoke-static {p0, p1}, Lorg/tvp/kirikiri2/KR2Activity;->getExtSdCardFolder(Ljava/io/File;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static final isWritable(Ljava/io/File;)Z
    .locals 5
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v3, 0x0

    .line 802
    if-nez p0, :cond_1

    .line 825
    :cond_0
    :goto_0
    return v3

    .line 804
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    .line 807
    .local v1, "isExisting":Z
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    invoke-direct {v2, p0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 809
    .local v2, "output":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 818
    :goto_1
    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result v3

    .line 821
    .local v3, "result":Z
    if-nez v1, :cond_0

    .line 822
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 815
    .end local v2    # "output":Ljava/io/FileOutputStream;
    .end local v3    # "result":Z
    :catch_0
    move-exception v0

    .line 816
    .local v0, "e":Ljava/io/FileNotFoundException;
    goto :goto_0

    .line 811
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "output":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method static final isWritableNormal(Ljava/lang/String;)Z
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 829
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 830
    .local v0, "f":Ljava/io/File;
    invoke-static {v0}, Lorg/tvp/kirikiri2/KR2Activity;->isWritable(Ljava/io/File;)Z

    move-result v1

    return v1
.end method

.method static final isWritableNormalOrSaf(Ljava/lang/String;)Z
    .locals 10
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 834
    sget-object v0, Lorg/tvp/kirikiri2/KR2Activity;->sInstance:Lorg/tvp/kirikiri2/KR2Activity;

    .line 835
    .local v0, "c":Landroid/content/Context;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 836
    .local v4, "folder":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_2

    :cond_0
    move v6, v7

    .line 867
    :cond_1
    :goto_0
    return v6

    .line 841
    :cond_2
    const/4 v5, 0x0

    .line 844
    .local v5, "i":I
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "AugendiagnoseDummyFile"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 845
    .local v3, "fileName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 847
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_3

    .line 850
    invoke-static {v2}, Lorg/tvp/kirikiri2/KR2Activity;->isWritable(Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 855
    invoke-static {v2, v7, v0}, Lorg/tvp/kirikiri2/KR2Activity;->getDocumentFile(Ljava/io/File;ZLandroid/content/Context;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v1

    .line 857
    .local v1, "document":Landroid/support/v4/provider/DocumentFile;
    if-nez v1, :cond_4

    move v6, v7

    .line 858
    goto :goto_0

    .line 862
    :cond_4
    invoke-virtual {v1}, Landroid/support/v4/provider/DocumentFile;->canWrite()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 865
    .local v6, "result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/support/v4/provider/DocumentFile;->delete()Z

    goto :goto_0

    .end local v6    # "result":Z
    :cond_5
    move v6, v7

    .line 862
    goto :goto_1
.end method

.method public static native nativeCharInput(I)V
.end method

.method public static native nativeCommitText(Ljava/lang/String;I)V
.end method

.method public static native nativeDeleteBackward()V
.end method

.method private static native nativeGetContentText()Ljava/lang/String;
.end method

.method private static native nativeGetHideSystemButton()Z
.end method

.method private static native nativeHoverMoved(FF)V
.end method

.method private static native nativeInsertText(Ljava/lang/String;)V
.end method

.method public static native nativeKeyAction(IZ)Z
.end method

.method private static native nativeMouseScrolled(F)V
.end method

.method private static native nativeOnLowMemory()V
.end method

.method private static native nativeTouchesBegin(IFF)V
.end method

.method private static native nativeTouchesCancel([I[F[F)V
.end method

.method private static native nativeTouchesEnd(IFF)V
.end method

.method private static native nativeTouchesMove([I[F[F)V
.end method

.method public static native onBannerSizeChanged(II)V
.end method

.method private static native onMessageBoxOK(I)V
.end method

.method private static native onMessageBoxText(Ljava/lang/String;)V
.end method

.method private static native onNativeExit()V
.end method

.method public static native onNativeInit()V
.end method

.method public static reqUpdateLicense()V
    .locals 1

    .prologue
    .line 431
    sget-object v0, Lorg/tvp/kirikiri2/KR2Activity;->sInstance:Lorg/tvp/kirikiri2/KR2Activity;

    invoke-virtual {v0}, Lorg/tvp/kirikiri2/KR2Activity;->updateLicense()V

    .line 432
    return-void
.end method

.method static requireLEXA(Ljava/lang/String;)V
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 772
    sget-object v0, Lorg/tvp/kirikiri2/KR2Activity;->msgHandler:Landroid/os/Handler;

    new-instance v1, Lorg/tvp/kirikiri2/KR2Activity$5;

    invoke-direct {v1, p0}, Lorg/tvp/kirikiri2/KR2Activity$5;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 778
    return-void
.end method

.method public static setOrientation(I)V
    .locals 2
    .param p0, "orient"    # I

    .prologue
    const/4 v1, 0x1

    .line 1242
    if-ne p0, v1, :cond_1

    .line 1243
    sget-object v0, Lorg/tvp/kirikiri2/KR2Activity;->sInstance:Lorg/tvp/kirikiri2/KR2Activity;

    invoke-virtual {v0, v1}, Lorg/tvp/kirikiri2/KR2Activity;->setRequestedOrientation(I)V

    .line 1247
    :cond_0
    :goto_0
    return-void

    .line 1244
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 1245
    sget-object v0, Lorg/tvp/kirikiri2/KR2Activity;->sInstance:Lorg/tvp/kirikiri2/KR2Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/tvp/kirikiri2/KR2Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public static showTextInput(IIII)V
    .locals 2
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 494
    sget-object v0, Lorg/tvp/kirikiri2/KR2Activity;->msgHandler:Landroid/os/Handler;

    new-instance v1, Lorg/tvp/kirikiri2/KR2Activity$ShowTextInputTask;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/tvp/kirikiri2/KR2Activity$ShowTextInputTask;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 495
    return-void
.end method

.method static splitFileName(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1088
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    .line 1089
    .local v1, "ret":[Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1090
    .local v0, "pos":I
    if-ltz v0, :cond_0

    .line 1091
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 1092
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 1097
    :goto_0
    return-object v1

    .line 1094
    :cond_0
    aput-object p0, v1, v3

    .line 1095
    const-string v2, ""

    aput-object v2, v1, v4

    goto :goto_0
.end method

.method public static triggerStorageAccessFramework()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 1251
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT_TREE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1252
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lorg/tvp/kirikiri2/KR2Activity;->sInstance:Lorg/tvp/kirikiri2/KR2Activity;

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Lorg/tvp/kirikiri2/KR2Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1253
    return-void
.end method

.method public static updateMemoryInfo()V
    .locals 2

    .prologue
    .line 256
    sget-object v0, Lorg/tvp/kirikiri2/KR2Activity;->mAcitivityManager:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    .line 257
    sget-object v0, Lorg/tvp/kirikiri2/KR2Activity;->sInstance:Lorg/tvp/kirikiri2/KR2Activity;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Lorg/tvp/kirikiri2/KR2Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    sput-object v0, Lorg/tvp/kirikiri2/KR2Activity;->mAcitivityManager:Landroid/app/ActivityManager;

    .line 259
    :cond_0
    sget-object v0, Lorg/tvp/kirikiri2/KR2Activity;->mAcitivityManager:Landroid/app/ActivityManager;

    sget-object v1, Lorg/tvp/kirikiri2/KR2Activity;->memoryInfo:Landroid/app/ActivityManager$MemoryInfo;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 260
    sget-object v0, Lorg/tvp/kirikiri2/KR2Activity;->mDbgMemoryInfo:Landroid/os/Debug$MemoryInfo;

    invoke-static {v0}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 261
    return-void
.end method


# virtual methods
.method doSetSystemUiVisibility()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 1207
    const/16 v0, 0x1706

    .line 1213
    .local v0, "uiOpts":I
    invoke-virtual {p0}, Lorg/tvp/kirikiri2/KR2Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1214
    return-void
.end method

.method public getStoragePath()[Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 539
    new-array v3, v5, [Ljava/lang/String;

    .line 540
    .local v3, "ret":[Ljava/lang/String;
    iget-object v5, p0, Lorg/tvp/kirikiri2/KR2Activity;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v5, :cond_0

    .line 541
    const-string v5, "storage"

    invoke-virtual {p0, v5}, Lorg/tvp/kirikiri2/KR2Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageManager;

    iput-object v5, p0, Lorg/tvp/kirikiri2/KR2Activity;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 543
    :try_start_0
    const-class v5, Landroid/os/storage/StorageManager;

    const-string v6, "getVolumePaths"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, p0, Lorg/tvp/kirikiri2/KR2Activity;->mMethodGetPaths:Ljava/lang/reflect/Method;

    .line 544
    const-class v5, Landroid/os/storage/StorageManager;

    const-string v6, "getVolumeState"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, p0, Lorg/tvp/kirikiri2/KR2Activity;->mGetVolumeState:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 549
    :cond_0
    :goto_0
    iget-object v5, p0, Lorg/tvp/kirikiri2/KR2Activity;->mMethodGetPaths:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_1

    .line 551
    :try_start_1
    iget-object v5, p0, Lorg/tvp/kirikiri2/KR2Activity;->mMethodGetPaths:Ljava/lang/reflect/Method;

    iget-object v6, p0, Lorg/tvp/kirikiri2/KR2Activity;->mStorageManager:Landroid/os/storage/StorageManager;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, [Ljava/lang/String;

    move-object v3, v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 563
    :cond_1
    :goto_1
    iget-object v5, p0, Lorg/tvp/kirikiri2/KR2Activity;->mGetVolumeState:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_2

    .line 565
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    :try_start_2
    array-length v5, v3
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-lt v2, v5, :cond_3

    .line 584
    .end local v2    # "i":I
    :cond_2
    :goto_3
    return-object v3

    .line 545
    :catch_0
    move-exception v1

    .line 546
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 566
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v2    # "i":I
    :cond_3
    :try_start_3
    iget-object v5, p0, Lorg/tvp/kirikiri2/KR2Activity;->mGetVolumeState:Ljava/lang/reflect/Method;

    iget-object v6, p0, Lorg/tvp/kirikiri2/KR2Activity;->mStorageManager:Landroid/os/storage/StorageManager;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aget-object v9, v3, v2

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 567
    .local v4, "status":Ljava/lang/String;
    const-string v5, "mounted"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "mounted_ro"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 565
    :cond_4
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 570
    :cond_5
    const/4 v5, 0x0

    aput-object v5, v3, v2
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    .line 573
    .end local v4    # "status":Ljava/lang/String;
    :catch_1
    move-exception v5

    goto :goto_3

    .line 579
    :catch_2
    move-exception v5

    goto :goto_3

    .line 577
    :catch_3
    move-exception v5

    goto :goto_3

    .line 575
    :catch_4
    move-exception v5

    goto :goto_3

    .line 558
    .end local v2    # "i":I
    :catch_5
    move-exception v5

    goto :goto_1

    .line 556
    :catch_6
    move-exception v5

    goto :goto_1

    .line 554
    :catch_7
    move-exception v5

    goto :goto_1

    .line 552
    :catch_8
    move-exception v5

    goto :goto_1
.end method

.method public get_res_sd_operate_step()I
    .locals 1

    .prologue
    .line 769
    const/4 v0, -0x1

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 426
    return-void
.end method

.method hideSystemUI()V
    .locals 2

    .prologue
    .line 1218
    invoke-static {}, Lorg/tvp/kirikiri2/KR2Activity;->nativeGetHideSystemButton()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 1219
    invoke-virtual {p0}, Lorg/tvp/kirikiri2/KR2Activity;->doSetSystemUiVisibility()V

    .line 1221
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "responseCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 1257
    const/4 v4, 0x3

    if-ne p1, v4, :cond_2

    .line 1258
    iget-object v4, p0, Lorg/tvp/kirikiri2/KR2Activity;->Sp:Landroid/content/SharedPreferences;

    const-string v5, "URI"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1259
    .local v1, "p":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1260
    .local v0, "oldUri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1261
    :cond_0
    const/4 v3, 0x0

    .line 1262
    .local v3, "treeUri":Landroid/net/Uri;
    if-ne p2, v7, :cond_1

    .line 1264
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 1266
    if-eqz v3, :cond_1

    iget-object v4, p0, Lorg/tvp/kirikiri2/KR2Activity;->Sp:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "URI"

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1270
    :cond_1
    if-eq p2, v7, :cond_3

    .line 1274
    if-eqz v3, :cond_2

    iget-object v4, p0, Lorg/tvp/kirikiri2/KR2Activity;->Sp:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "URI"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1285
    .end local v0    # "oldUri":Landroid/net/Uri;
    .end local v1    # "p":Ljava/lang/String;
    .end local v3    # "treeUri":Landroid/net/Uri;
    :cond_2
    :goto_0
    return-void

    .line 1280
    .restart local v0    # "oldUri":Landroid/net/Uri;
    .restart local v1    # "p":Ljava/lang/String;
    .restart local v3    # "treeUri":Landroid/net/Uri;
    :cond_3
    invoke-virtual {p3}, Landroid/content/Intent;->getFlags()I

    move-result v4

    and-int/lit8 v2, v4, 0x3

    .line 1283
    .local v2, "takeFlags":I
    invoke-virtual {p0}, Lorg/tvp/kirikiri2/KR2Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 297
    sput-object p0, Lorg/tvp/kirikiri2/KR2Activity;->sInstance:Lorg/tvp/kirikiri2/KR2Activity;

    .line 298
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lorg/tvp/kirikiri2/KR2Activity;->Sp:Landroid/content/SharedPreferences;

    .line 299
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onCreate(Landroid/os/Bundle;)V

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/tvp/kirikiri2/KR2Activity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/dump"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/tvp/kirikiri2/KR2Activity;->initDump(Ljava/lang/String;)V

    .line 310
    return-void
.end method

.method public onCreateView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;
    .locals 4

    .prologue
    .line 758
    new-instance v1, Lorg/tvp/kirikiri2/KR2Activity$KR2GLSurfaceView;

    invoke-direct {v1, p0, p0}, Lorg/tvp/kirikiri2/KR2Activity$KR2GLSurfaceView;-><init>(Lorg/tvp/kirikiri2/KR2Activity;Landroid/content/Context;)V

    .line 759
    .local v1, "glSurfaceView":Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;
    invoke-virtual {p0}, Lorg/tvp/kirikiri2/KR2Activity;->hideSystemUI()V

    .line 761
    iget-object v2, p0, Lorg/tvp/kirikiri2/KR2Activity;->mGLContextAttrs:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    if-lez v2, :cond_0

    invoke-virtual {v1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    const/4 v3, -0x3

    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 763
    :cond_0
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;

    iget-object v2, p0, Lorg/tvp/kirikiri2/KR2Activity;->mGLContextAttrs:[I

    invoke-direct {v0, p0, v2}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;-><init>(Lorg/cocos2dx/lib/Cocos2dxActivity;[I)V

    .line 764
    .local v0, "chooser":Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;
    invoke-virtual {v1, v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 766
    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 314
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onDestroy()V

    .line 315
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 316
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 320
    invoke-static {}, Lorg/tvp/kirikiri2/KR2Activity;->nativeOnLowMemory()V

    .line 321
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 1197
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onWindowFocusChanged(Z)V

    .line 1200
    if-eqz p1, :cond_0

    .line 1201
    invoke-virtual {p0}, Lorg/tvp/kirikiri2/KR2Activity;->hideSystemUI()V

    .line 1203
    :cond_0
    return-void
.end method

.method updateLicense()V
    .locals 0

    .prologue
    .line 428
    return-void
.end method
