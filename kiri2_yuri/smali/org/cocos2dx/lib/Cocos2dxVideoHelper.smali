.class public Lorg/cocos2dx/lib/Cocos2dxVideoHelper;
.super Ljava/lang/Object;
.source "Cocos2dxVideoHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoEventRunnable;,
        Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;
    }
.end annotation


# static fields
.field static final KeyEventBack:I = 0x3e8

.field private static final VideoTaskCreate:I = 0x0

.field private static final VideoTaskFullScreen:I = 0xc

.field private static final VideoTaskKeepRatio:I = 0xb

.field private static final VideoTaskPause:I = 0x5

.field private static final VideoTaskRemove:I = 0x1

.field private static final VideoTaskRestart:I = 0xa

.field private static final VideoTaskResume:I = 0x6

.field private static final VideoTaskSeek:I = 0x8

.field private static final VideoTaskSetRect:I = 0x3

.field private static final VideoTaskSetSource:I = 0x2

.field private static final VideoTaskSetVisible:I = 0x9

.field private static final VideoTaskStart:I = 0x4

.field private static final VideoTaskStop:I = 0x7

.field static mVideoHandler:Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;

.field private static videoTag:I


# instance fields
.field private mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

.field private mLayout:Landroid/widget/FrameLayout;

.field private sVideoViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/cocos2dx/lib/Cocos2dxVideoView;",
            ">;"
        }
    .end annotation
.end field

.field videoEventListener:Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->mVideoHandler:Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;

    .line 54
    const/4 v0, 0x0

    sput v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->videoTag:I

    .line 68
    return-void
.end method

.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxActivity;Landroid/widget/FrameLayout;)V
    .locals 1
    .param p1, "activity"    # Lorg/cocos2dx/lib/Cocos2dxActivity;
    .param p2, "layout"    # Landroid/widget/FrameLayout;

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->mLayout:Landroid/widget/FrameLayout;

    .line 41
    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 42
    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->sVideoViews:Landroid/util/SparseArray;

    .line 190
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$1;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$1;-><init>(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;)V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->videoEventListener:Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;

    .line 47
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 48
    iput-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->mLayout:Landroid/widget/FrameLayout;

    .line 50
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;-><init>(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;)V

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->mVideoHandler:Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;

    .line 51
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->sVideoViews:Landroid/util/SparseArray;

    .line 52
    return-void
.end method

.method private _createVideoView(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/4 v3, -0x2

    .line 209
    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxVideoView;

    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-direct {v1, v2, p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;-><init>(Lorg/cocos2dx/lib/Cocos2dxActivity;I)V

    .line 210
    .local v1, "videoView":Lorg/cocos2dx/lib/Cocos2dxVideoView;
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->sVideoViews:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 211
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 214
    .local v0, "lParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->setZOrderOnTop(Z)V

    .line 216
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->videoEventListener:Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;

    invoke-virtual {v1, v2}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->setOnCompletionListener(Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;)V

    .line 217
    return-void
.end method

.method private _pauseVideo(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 329
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->sVideoViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoView;

    .line 330
    .local v0, "videoView":Lorg/cocos2dx/lib/Cocos2dxVideoView;
    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->pause()V

    .line 333
    :cond_0
    return-void
.end method

.method private _removeVideoView(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 227
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->sVideoViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoView;

    .line 228
    .local v0, "view":Lorg/cocos2dx/lib/Cocos2dxVideoView;
    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->stopPlayback()V

    .line 230
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->sVideoViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 231
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 233
    :cond_0
    return-void
.end method

.method private _restartVideo(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 371
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->sVideoViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoView;

    .line 372
    .local v0, "videoView":Lorg/cocos2dx/lib/Cocos2dxVideoView;
    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->restart()V

    .line 375
    :cond_0
    return-void
.end method

.method private _resumeVideo(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 343
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->sVideoViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoView;

    .line 344
    .local v0, "videoView":Lorg/cocos2dx/lib/Cocos2dxVideoView;
    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->resume()V

    .line 347
    :cond_0
    return-void
.end method

.method private _seekVideoTo(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "msec"    # I

    .prologue
    .line 386
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->sVideoViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoView;

    .line 387
    .local v0, "videoView":Lorg/cocos2dx/lib/Cocos2dxVideoView;
    if-eqz v0, :cond_0

    .line 388
    invoke-virtual {v0, p2}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->seekTo(I)V

    .line 390
    :cond_0
    return-void
.end method

.method private _setFullScreenEnabled(IZII)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "enabled"    # Z
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 289
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->sVideoViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoView;

    .line 290
    .local v0, "videoView":Lorg/cocos2dx/lib/Cocos2dxVideoView;
    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {v0, p2, p3, p4}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->setFullScreenEnabled(ZII)V

    .line 293
    :cond_0
    return-void
.end method

.method private _setVideoKeepRatio(IZ)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 430
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->sVideoViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoView;

    .line 431
    .local v0, "videoView":Lorg/cocos2dx/lib/Cocos2dxVideoView;
    if-eqz v0, :cond_0

    .line 432
    invoke-virtual {v0, p2}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->setKeepRatio(Z)V

    .line 434
    :cond_0
    return-void
.end method

.method private _setVideoRect(IIIII)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "maxWidth"    # I
    .param p5, "maxHeight"    # I

    .prologue
    .line 269
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->sVideoViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoView;

    .line 270
    .local v0, "videoView":Lorg/cocos2dx/lib/Cocos2dxVideoView;
    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {v0, p2, p3, p4, p5}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->setVideoRect(IIII)V

    .line 273
    :cond_0
    return-void
.end method

.method private _setVideoURL(IILjava/lang/String;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "videoSource"    # I
    .param p3, "videoUrl"    # Ljava/lang/String;

    .prologue
    .line 245
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->sVideoViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoView;

    .line 246
    .local v0, "videoView":Lorg/cocos2dx/lib/Cocos2dxVideoView;
    if-eqz v0, :cond_0

    .line 247
    packed-switch p2, :pswitch_data_0

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 249
    :pswitch_0
    invoke-virtual {v0, p3}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->setVideoFileName(Ljava/lang/String;)V

    goto :goto_0

    .line 252
    :pswitch_1
    invoke-virtual {v0, p3}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->setVideoURL(Ljava/lang/String;)V

    goto :goto_0

    .line 247
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private _setVideoVisible(IZ)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "visible"    # Z

    .prologue
    .line 406
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->sVideoViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoView;

    .line 407
    .local v0, "videoView":Lorg/cocos2dx/lib/Cocos2dxVideoView;
    if-eqz v0, :cond_0

    .line 408
    if-eqz p2, :cond_1

    .line 409
    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->fixSize()V

    .line 410
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->setVisibility(I)V

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->setVisibility(I)V

    goto :goto_0
.end method

.method private _startVideo(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 315
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->sVideoViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoView;

    .line 316
    .local v0, "videoView":Lorg/cocos2dx/lib/Cocos2dxVideoView;
    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->start()V

    .line 319
    :cond_0
    return-void
.end method

.method private _stopVideo(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 357
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->sVideoViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoView;

    .line 358
    .local v0, "videoView":Lorg/cocos2dx/lib/Cocos2dxVideoView;
    if-eqz v0, :cond_0

    .line 359
    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->stop()V

    .line 361
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;)Lorg/cocos2dx/lib/Cocos2dxActivity;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    return-object v0
.end method

.method static synthetic access$1(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;I)V
    .locals 0

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_createVideoView(I)V

    return-void
.end method

.method static synthetic access$10(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;II)V
    .locals 0

    .prologue
    .line 385
    invoke-direct {p0, p1, p2}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_seekVideoTo(II)V

    return-void
.end method

.method static synthetic access$11(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;IZ)V
    .locals 0

    .prologue
    .line 405
    invoke-direct {p0, p1, p2}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_setVideoVisible(IZ)V

    return-void
.end method

.method static synthetic access$12(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;I)V
    .locals 0

    .prologue
    .line 370
    invoke-direct {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_restartVideo(I)V

    return-void
.end method

.method static synthetic access$13(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;IZ)V
    .locals 0

    .prologue
    .line 429
    invoke-direct {p0, p1, p2}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_setVideoKeepRatio(IZ)V

    return-void
.end method

.method static synthetic access$14(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;)V
    .locals 0

    .prologue
    .line 295
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->onBackKeyEvent()V

    return-void
.end method

.method static synthetic access$2(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;I)V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_removeVideoView(I)V

    return-void
.end method

.method static synthetic access$3(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;IILjava/lang/String;)V
    .locals 0

    .prologue
    .line 244
    invoke-direct {p0, p1, p2, p3}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_setVideoURL(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;I)V
    .locals 0

    .prologue
    .line 314
    invoke-direct {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_startVideo(I)V

    return-void
.end method

.method static synthetic access$5(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;IIIII)V
    .locals 0

    .prologue
    .line 268
    invoke-direct/range {p0 .. p5}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_setVideoRect(IIIII)V

    return-void
.end method

.method static synthetic access$6(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;IZII)V
    .locals 0

    .prologue
    .line 288
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_setFullScreenEnabled(IZII)V

    return-void
.end method

.method static synthetic access$7(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;I)V
    .locals 0

    .prologue
    .line 328
    invoke-direct {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_pauseVideo(I)V

    return-void
.end method

.method static synthetic access$8(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;I)V
    .locals 0

    .prologue
    .line 342
    invoke-direct {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_resumeVideo(I)V

    return-void
.end method

.method static synthetic access$9(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;I)V
    .locals 0

    .prologue
    .line 356
    invoke-direct {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_stopVideo(I)V

    return-void
.end method

.method public static createVideoWidget()I
    .locals 3

    .prologue
    .line 200
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 201
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 202
    sget v1, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->videoTag:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 203
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->mVideoHandler:Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;

    invoke-virtual {v1, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->sendMessage(Landroid/os/Message;)Z

    .line 205
    sget v1, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->videoTag:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->videoTag:I

    return v1
.end method

.method public static native nativeExecuteVideoCallback(II)V
.end method

.method private onBackKeyEvent()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 296
    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->sVideoViews:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 297
    .local v3, "viewCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v3, :cond_0

    .line 305
    return-void

    .line 298
    :cond_0
    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->sVideoViews:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 299
    .local v1, "key":I
    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->sVideoViews:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/cocos2dx/lib/Cocos2dxVideoView;

    .line 300
    .local v2, "videoView":Lorg/cocos2dx/lib/Cocos2dxVideoView;
    if-eqz v2, :cond_1

    .line 301
    invoke-virtual {v2, v7, v7, v7}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->setFullScreenEnabled(ZII)V

    .line 302
    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v5, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoEventRunnable;

    const/16 v6, 0x3e8

    invoke-direct {v5, p0, v1, v6}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoEventRunnable;-><init>(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;II)V

    invoke-virtual {v4, v5}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 297
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static pauseVideo(I)V
    .locals 2
    .param p0, "index"    # I

    .prologue
    .line 322
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 323
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 324
    iput p0, v0, Landroid/os/Message;->arg1:I

    .line 325
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->mVideoHandler:Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;

    invoke-virtual {v1, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->sendMessage(Landroid/os/Message;)Z

    .line 326
    return-void
.end method

.method public static removeVideoWidget(I)V
    .locals 2
    .param p0, "index"    # I

    .prologue
    .line 220
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 221
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 222
    iput p0, v0, Landroid/os/Message;->arg1:I

    .line 223
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->mVideoHandler:Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;

    invoke-virtual {v1, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->sendMessage(Landroid/os/Message;)Z

    .line 224
    return-void
.end method

.method public static restartVideo(I)V
    .locals 2
    .param p0, "index"    # I

    .prologue
    .line 364
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 365
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    .line 366
    iput p0, v0, Landroid/os/Message;->arg1:I

    .line 367
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->mVideoHandler:Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;

    invoke-virtual {v1, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->sendMessage(Landroid/os/Message;)Z

    .line 368
    return-void
.end method

.method public static resumeVideo(I)V
    .locals 2
    .param p0, "index"    # I

    .prologue
    .line 336
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 337
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 338
    iput p0, v0, Landroid/os/Message;->arg1:I

    .line 339
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->mVideoHandler:Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;

    invoke-virtual {v1, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->sendMessage(Landroid/os/Message;)Z

    .line 340
    return-void
.end method

.method public static seekVideoTo(II)V
    .locals 2
    .param p0, "index"    # I
    .param p1, "msec"    # I

    .prologue
    .line 378
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 379
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 380
    iput p0, v0, Landroid/os/Message;->arg1:I

    .line 381
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 382
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->mVideoHandler:Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;

    invoke-virtual {v1, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->sendMessage(Landroid/os/Message;)Z

    .line 383
    return-void
.end method

.method public static setFullScreenEnabled(IZII)V
    .locals 3
    .param p0, "index"    # I
    .param p1, "enabled"    # Z
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v2, 0x0

    .line 276
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 277
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xc

    iput v1, v0, Landroid/os/Message;->what:I

    .line 278
    iput p0, v0, Landroid/os/Message;->arg1:I

    .line 279
    if-eqz p1, :cond_0

    .line 280
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 284
    :goto_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v2, v2, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 285
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->mVideoHandler:Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;

    invoke-virtual {v1, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->sendMessage(Landroid/os/Message;)Z

    .line 286
    return-void

    .line 282
    :cond_0
    iput v2, v0, Landroid/os/Message;->arg2:I

    goto :goto_0
.end method

.method public static setVideoKeepRatioEnabled(IZ)V
    .locals 2
    .param p0, "index"    # I
    .param p1, "enable"    # Z

    .prologue
    .line 418
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 419
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xb

    iput v1, v0, Landroid/os/Message;->what:I

    .line 420
    iput p0, v0, Landroid/os/Message;->arg1:I

    .line 421
    if-eqz p1, :cond_0

    .line 422
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 426
    :goto_0
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->mVideoHandler:Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;

    invoke-virtual {v1, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->sendMessage(Landroid/os/Message;)Z

    .line 427
    return-void

    .line 424
    :cond_0
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg2:I

    goto :goto_0
.end method

.method public static setVideoRect(IIIII)V
    .locals 2
    .param p0, "index"    # I
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "maxWidth"    # I
    .param p4, "maxHeight"    # I

    .prologue
    .line 261
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 262
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 263
    iput p0, v0, Landroid/os/Message;->arg1:I

    .line 264
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 265
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->mVideoHandler:Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;

    invoke-virtual {v1, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->sendMessage(Landroid/os/Message;)Z

    .line 266
    return-void
.end method

.method public static setVideoUrl(IILjava/lang/String;)V
    .locals 2
    .param p0, "index"    # I
    .param p1, "videoSource"    # I
    .param p2, "videoUrl"    # Ljava/lang/String;

    .prologue
    .line 236
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 237
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 238
    iput p0, v0, Landroid/os/Message;->arg1:I

    .line 239
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 240
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 241
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->mVideoHandler:Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;

    invoke-virtual {v1, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->sendMessage(Landroid/os/Message;)Z

    .line 242
    return-void
.end method

.method public static setVideoVisible(IZ)V
    .locals 2
    .param p0, "index"    # I
    .param p1, "visible"    # Z

    .prologue
    .line 393
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 394
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x9

    iput v1, v0, Landroid/os/Message;->what:I

    .line 395
    iput p0, v0, Landroid/os/Message;->arg1:I

    .line 396
    if-eqz p1, :cond_0

    .line 397
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 402
    :goto_0
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->mVideoHandler:Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;

    invoke-virtual {v1, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->sendMessage(Landroid/os/Message;)Z

    .line 403
    return-void

    .line 399
    :cond_0
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg2:I

    goto :goto_0
.end method

.method public static startVideo(I)V
    .locals 2
    .param p0, "index"    # I

    .prologue
    .line 308
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 309
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 310
    iput p0, v0, Landroid/os/Message;->arg1:I

    .line 311
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->mVideoHandler:Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;

    invoke-virtual {v1, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->sendMessage(Landroid/os/Message;)Z

    .line 312
    return-void
.end method

.method public static stopVideo(I)V
    .locals 2
    .param p0, "index"    # I

    .prologue
    .line 350
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 351
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    .line 352
    iput p0, v0, Landroid/os/Message;->arg1:I

    .line 353
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->mVideoHandler:Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;

    invoke-virtual {v1, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->sendMessage(Landroid/os/Message;)Z

    .line 354
    return-void
.end method
