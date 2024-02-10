.class public Lorg/cocos2dx/lib/Cocos2dxMusic;
.super Ljava/lang/Object;
.source "Cocos2dxMusic.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

.field private final mContext:Landroid/content/Context;

.field private mCurrentPath:Ljava/lang/String;

.field private mIsLoop:Z

.field private mLeftVolume:F

.field private mManualPaused:Z

.field private mPaused:Z

.field private mRightVolume:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxMusic;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mIsLoop:Z

    .line 52
    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mManualPaused:Z

    .line 60
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mContext:Landroid/content/Context;

    .line 62
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->initData()V

    .line 63
    return-void
.end method

.method private createMediaplayer(Ljava/lang/String;)Landroid/media/MediaPlayer;
    .locals 9
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 245
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 248
    .local v0, "mediaPlayer":Landroid/media/MediaPlayer;
    :try_start_0
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 250
    .local v8, "fis":Ljava/io/FileInputStream;
    invoke-virtual {v8}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 251
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 257
    .end local v8    # "fis":Ljava/io/FileInputStream;
    :goto_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 259
    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mLeftVolume:F

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mRightVolume:F

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 265
    :goto_1
    return-object v0

    .line 253
    :cond_0
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 254
    .local v6, "assetFileDescritor":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 260
    .end local v6    # "assetFileDescritor":Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v7

    .line 261
    .local v7, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 262
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxMusic;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private initData()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/high16 v0, 0x3f000000    # 0.5f

    .line 230
    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mLeftVolume:F

    .line 231
    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mRightVolume:F

    .line 232
    iput-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    .line 233
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mPaused:Z

    .line 234
    iput-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mCurrentPath:Ljava/lang/String;

    .line 235
    return-void
.end method


# virtual methods
.method public end()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 187
    :cond_0
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->initData()V

    .line 188
    return-void
.end method

.method public getBackgroundVolume()F
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 192
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mLeftVolume:F

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mRightVolume:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 194
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBackgroundMusicPlaying()Z
    .locals 2

    .prologue
    .line 171
    const/4 v0, 0x0

    .line 173
    .local v0, "ret":Z
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    .line 174
    const/4 v0, 0x0

    .line 179
    :goto_0
    return v0

    .line 176
    :cond_0
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    goto :goto_0
.end method

.method public onEnterBackground()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mPaused:Z

    .line 218
    :cond_0
    return-void
.end method

.method public onEnterForeground()V
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mManualPaused:Z

    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mPaused:Z

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 224
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mPaused:Z

    .line 227
    :cond_0
    return-void
.end method

.method public pauseBackgroundMusic()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 149
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 151
    iput-boolean v1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mPaused:Z

    .line 152
    iput-boolean v1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mManualPaused:Z

    .line 154
    :cond_0
    return-void
.end method

.method public playBackgroundMusic(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "isLoop"    # Z

    .prologue
    .line 94
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mCurrentPath:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 96
    invoke-direct {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxMusic;->createMediaplayer(Ljava/lang/String;)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    .line 97
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mCurrentPath:Ljava/lang/String;

    .line 113
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_3

    .line 114
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxMusic;->TAG:Ljava/lang/String;

    const-string v2, "playBackgroundMusic: background media player is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :goto_1
    return-void

    .line 99
    :cond_1
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2

    .line 104
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 106
    :cond_2
    invoke-direct {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxMusic;->createMediaplayer(Ljava/lang/String;)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    .line 109
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mCurrentPath:Ljava/lang/String;

    goto :goto_0

    .line 118
    :cond_3
    :try_start_0
    iget-boolean v1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mPaused:Z

    if-eqz v1, :cond_4

    .line 119
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 120
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 126
    :goto_2
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 127
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mPaused:Z

    .line 128
    iput-boolean p2, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mIsLoop:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxMusic;->TAG:Ljava/lang/String;

    const-string v2, "playBackgroundMusic: error state"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 121
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_1
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 122
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    goto :goto_2

    .line 124
    :cond_5
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public preloadBackgroundMusic(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 78
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mCurrentPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 82
    :cond_0
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 86
    :cond_1
    invoke-direct {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxMusic;->createMediaplayer(Ljava/lang/String;)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    .line 89
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mCurrentPath:Ljava/lang/String;

    .line 91
    :cond_2
    return-void
.end method

.method public resumeBackgroundMusic()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 157
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mPaused:Z

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 159
    iput-boolean v1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mPaused:Z

    .line 160
    iput-boolean v1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mManualPaused:Z

    .line 162
    :cond_0
    return-void
.end method

.method public rewindBackgroundMusic()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mCurrentPath:Ljava/lang/String;

    iget-boolean v1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mIsLoop:Z

    invoke-virtual {p0, v0, v1}, Lorg/cocos2dx/lib/Cocos2dxMusic;->playBackgroundMusic(Ljava/lang/String;Z)V

    .line 168
    :cond_0
    return-void
.end method

.method public setBackgroundVolume(F)V
    .locals 3
    .param p1, "volume"    # F

    .prologue
    .line 199
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 200
    const/4 p1, 0x0

    .line 203
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 204
    const/high16 p1, 0x3f800000    # 1.0f

    .line 207
    :cond_1
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mRightVolume:F

    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mLeftVolume:F

    .line 208
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 209
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mLeftVolume:F

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mRightVolume:F

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 211
    :cond_2
    return-void
.end method

.method public stopBackgroundMusic()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 138
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mCurrentPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->createMediaplayer(Ljava/lang/String;)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mPaused:Z

    .line 146
    :cond_0
    return-void
.end method
