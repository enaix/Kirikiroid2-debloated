.class public Lorg/cocos2dx/lib/Cocos2dxSound$OnLoadCompletedListener;
.super Ljava/lang/Object;
.source "Cocos2dxSound.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/lib/Cocos2dxSound;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnLoadCompletedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/lib/Cocos2dxSound;


# direct methods
.method public constructor <init>(Lorg/cocos2dx/lib/Cocos2dxSound;)V
    .locals 0

    .prologue
    .line 344
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxSound$OnLoadCompletedListener;->this$0:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 8
    .param p1, "soundPool"    # Landroid/media/SoundPool;
    .param p2, "sampleId"    # I
    .param p3, "status"    # I

    .prologue
    .line 348
    if-nez p3, :cond_0

    .line 350
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound$OnLoadCompletedListener;->this$0:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxSound;->access$0(Lorg/cocos2dx/lib/Cocos2dxSound;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;

    .line 351
    .local v7, "info":Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;
    if-eqz v7, :cond_0

    .line 352
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound$OnLoadCompletedListener;->this$0:Lorg/cocos2dx/lib/Cocos2dxSound;

    iget-object v1, v7, Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;->path:Ljava/lang/String;

    iget-boolean v3, v7, Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;->isLoop:Z

    iget v4, v7, Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;->pitch:F

    iget v5, v7, Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;->pan:F

    iget v6, v7, Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;->gain:F

    move v2, p2

    invoke-static/range {v0 .. v6}, Lorg/cocos2dx/lib/Cocos2dxSound;->access$1(Lorg/cocos2dx/lib/Cocos2dxSound;Ljava/lang/String;IZFFF)I

    move-result v0

    iput v0, v7, Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;->effectID:I

    .line 353
    monitor-enter v7

    .line 354
    :try_start_0
    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 353
    monitor-exit v7

    .line 358
    .end local v7    # "info":Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;
    :cond_0
    return-void

    .line 353
    .restart local v7    # "info":Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
