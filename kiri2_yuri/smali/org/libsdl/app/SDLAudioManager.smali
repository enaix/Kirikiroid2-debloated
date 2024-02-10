.class public Lorg/libsdl/app/SDLAudioManager;
.super Ljava/lang/Object;
.source "SDLAudioManager.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "SDLAudio"

.field protected static mAudioRecord:Landroid/media/AudioRecord;

.field protected static mAudioTrack:Landroid/media/AudioTrack;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static audioClose()V
    .locals 1

    .prologue
    .line 161
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 162
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 163
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 164
    const/4 v0, 0x0

    sput-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    .line 166
    :cond_0
    return-void
.end method

.method public static audioOpen(IZZI)I
    .locals 10
    .param p0, "sampleRate"    # I
    .param p1, "is16Bit"    # Z
    .param p2, "isStereo"    # Z
    .param p3, "desiredFrames"    # I

    .prologue
    const/high16 v9, 0x447a0000    # 1000.0f

    const/4 v1, 0x3

    const/4 v6, 0x1

    const/4 v8, 0x2

    .line 24
    if-eqz p2, :cond_0

    move v3, v1

    .line 25
    .local v3, "channelConfig":I
    :goto_0
    if-eqz p1, :cond_1

    move v4, v8

    .line 26
    .local v4, "audioFormat":I
    :goto_1
    if-eqz p2, :cond_2

    move v2, v8

    :goto_2
    if-eqz p1, :cond_3

    move v0, v8

    :goto_3
    mul-int v7, v2, v0

    .line 28
    .local v7, "frameSize":I
    const-string v2, "SDLAudio"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, "SDL audio: wanted "

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_4

    const-string v0, "stereo"

    :goto_4
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p1, :cond_5

    const-string v0, "16-bit"

    :goto_5
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-float v5, p0

    div-float/2addr v5, v9

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "kHz, "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " frames buffer"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-static {p0, v3, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    add-int/2addr v0, v7

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, v7

    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 35
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_7

    .line 36
    new-instance v0, Landroid/media/AudioTrack;

    .line 37
    mul-int v5, p3, v7

    move v2, p0

    .line 36
    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    sput-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    .line 43
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-eq v0, v6, :cond_6

    .line 44
    const-string v0, "SDLAudio"

    const-string v1, "Failed during initialization of Audio Track"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const/4 v0, 0x0

    sput-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    .line 46
    const/4 v0, -0x1

    .line 54
    :goto_6
    return v0

    .end local v3    # "channelConfig":I
    .end local v4    # "audioFormat":I
    .end local v7    # "frameSize":I
    :cond_0
    move v3, v8

    .line 24
    goto :goto_0

    .restart local v3    # "channelConfig":I
    :cond_1
    move v4, v1

    .line 25
    goto :goto_1

    .restart local v4    # "audioFormat":I
    :cond_2
    move v2, v6

    .line 26
    goto :goto_2

    :cond_3
    move v0, v6

    goto :goto_3

    .line 28
    .restart local v7    # "frameSize":I
    :cond_4
    const-string v0, "mono"

    goto :goto_4

    :cond_5
    const-string v0, "8-bit"

    goto :goto_5

    .line 49
    :cond_6
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 52
    :cond_7
    const-string v1, "SDLAudio"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "SDL audio: got "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getChannelCount()I

    move-result v0

    if-lt v0, v8, :cond_8

    const-string v0, "stereo"

    :goto_7
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioFormat()I

    move-result v0

    if-ne v0, v8, :cond_9

    const-string v0, "16-bit"

    :goto_8
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v9

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "kHz, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " frames buffer"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const/4 v0, 0x0

    goto :goto_6

    .line 52
    :cond_8
    const-string v0, "mono"

    goto :goto_7

    :cond_9
    const-string v0, "8-bit"

    goto :goto_8
.end method

.method public static audioWriteByteBuffer([B)V
    .locals 4
    .param p0, "buffer"    # [B

    .prologue
    .line 87
    sget-object v2, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    if-nez v2, :cond_1

    .line 88
    const-string v2, "SDLAudio"

    const-string v3, "Attempted to make audio call with uninitialized audio!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 93
    sget-object v2, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    array-length v3, p0

    sub-int/2addr v3, v0

    invoke-virtual {v2, p0, v0, v3}, Landroid/media/AudioTrack;->write([BII)I

    move-result v1

    .line 94
    .local v1, "result":I
    if-lez v1, :cond_2

    .line 95
    add-int/2addr v0, v1

    .line 96
    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    .line 98
    const-wide/16 v2, 0x1

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 99
    :catch_0
    move-exception v2

    goto :goto_1

    .line 103
    :cond_3
    const-string v2, "SDLAudio"

    const-string v3, "SDL audio: error return from write(byte)"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static audioWriteShortBuffer([S)V
    .locals 4
    .param p0, "buffer"    # [S

    .prologue
    .line 61
    sget-object v2, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    if-nez v2, :cond_1

    .line 62
    const-string v2, "SDLAudio"

    const-string v3, "Attempted to make audio call with uninitialized audio!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 67
    sget-object v2, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    array-length v3, p0

    sub-int/2addr v3, v0

    invoke-virtual {v2, p0, v0, v3}, Landroid/media/AudioTrack;->write([SII)I

    move-result v1

    .line 68
    .local v1, "result":I
    if-lez v1, :cond_2

    .line 69
    add-int/2addr v0, v1

    .line 70
    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    .line 72
    const-wide/16 v2, 0x1

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 73
    :catch_0
    move-exception v2

    goto :goto_1

    .line 77
    :cond_3
    const-string v2, "SDLAudio"

    const-string v3, "SDL audio: error return from write(short)"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static captureClose()V
    .locals 1

    .prologue
    .line 170
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 171
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 172
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 173
    const/4 v0, 0x0

    sput-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    .line 175
    :cond_0
    return-void
.end method

.method public static captureOpen(IZZI)I
    .locals 10
    .param p0, "sampleRate"    # I
    .param p1, "is16Bit"    # Z
    .param p2, "isStereo"    # Z
    .param p3, "desiredFrames"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x0

    const/high16 v9, 0x447a0000    # 1000.0f

    const/4 v8, 0x1

    const/4 v7, 0x2

    .line 113
    if-eqz p2, :cond_1

    move v3, v4

    .line 114
    .local v3, "channelConfig":I
    :goto_0
    if-eqz p1, :cond_0

    move v4, v7

    .line 115
    .local v4, "audioFormat":I
    :cond_0
    if-eqz p2, :cond_2

    move v2, v7

    :goto_1
    if-eqz p1, :cond_3

    move v0, v7

    :goto_2
    mul-int v6, v2, v0

    .line 117
    .local v6, "frameSize":I
    const-string v2, "SDLAudio"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, "SDL capture: wanted "

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_4

    const-string v0, "stereo"

    :goto_3
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p1, :cond_5

    const-string v0, "16-bit"

    :goto_4
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-float v5, p0

    div-float/2addr v5, v9

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "kHz, "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " frames buffer"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-static {p0, v3, v4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    add-int/2addr v0, v6

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, v6

    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 124
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    if-nez v0, :cond_7

    .line 125
    new-instance v0, Landroid/media/AudioRecord;

    .line 126
    mul-int v5, p3, v6

    move v2, p0

    .line 125
    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    sput-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    .line 129
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-eq v0, v8, :cond_6

    .line 130
    const-string v0, "SDLAudio"

    const-string v1, "Failed during initialization of AudioRecord"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 132
    const/4 v0, 0x0

    sput-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    .line 133
    const/4 v1, -0x1

    .line 141
    :goto_5
    return v1

    .end local v3    # "channelConfig":I
    .end local v4    # "audioFormat":I
    .end local v6    # "frameSize":I
    :cond_1
    move v3, v7

    .line 113
    goto/16 :goto_0

    .restart local v3    # "channelConfig":I
    .restart local v4    # "audioFormat":I
    :cond_2
    move v2, v8

    .line 115
    goto :goto_1

    :cond_3
    move v0, v8

    goto :goto_2

    .line 117
    .restart local v6    # "frameSize":I
    :cond_4
    const-string v0, "mono"

    goto :goto_3

    :cond_5
    const-string v0, "8-bit"

    goto :goto_4

    .line 136
    :cond_6
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 139
    :cond_7
    const-string v2, "SDLAudio"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, "SDL capture: got "

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getChannelCount()I

    move-result v0

    if-lt v0, v7, :cond_8

    const-string v0, "stereo"

    :goto_6
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getAudioFormat()I

    move-result v0

    if-ne v0, v7, :cond_9

    const-string v0, "16-bit"

    :goto_7
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v5, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v5}, Landroid/media/AudioRecord;->getSampleRate()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v9

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "kHz, "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " frames buffer"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_8
    const-string v0, "mono"

    goto :goto_6

    :cond_9
    const-string v0, "8-bit"

    goto :goto_7
.end method

.method public static captureReadByteBuffer([BZ)I
    .locals 3
    .param p0, "buffer"    # [B
    .param p1, "blocking"    # Z

    .prologue
    .line 155
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-virtual {v0, p0, v1, v2}, Landroid/media/AudioRecord;->read([BII)I

    move-result v0

    return v0
.end method

.method public static captureReadShortBuffer([SZ)I
    .locals 3
    .param p0, "buffer"    # [S
    .param p1, "blocking"    # Z

    .prologue
    .line 148
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-virtual {v0, p0, v1, v2}, Landroid/media/AudioRecord;->read([SII)I

    move-result v0

    return v0
.end method

.method public static initialize()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    sput-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    .line 15
    sput-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    .line 16
    return-void
.end method

.method public static native nativeSetupJNI()I
.end method
