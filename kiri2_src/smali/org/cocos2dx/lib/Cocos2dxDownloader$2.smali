.class Lorg/cocos2dx/lib/Cocos2dxDownloader$2;
.super Ljava/lang/Object;
.source "Cocos2dxDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxDownloader;->onFinish(IILjava/lang/String;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/lib/Cocos2dxDownloader;

.field private final synthetic val$data:[B

.field private final synthetic val$errCode:I

.field private final synthetic val$errStr:Ljava/lang/String;

.field private final synthetic val$id:I


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxDownloader;IILjava/lang/String;[B)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$2;->val$id:I

    iput p3, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$2;->val$errCode:I

    iput-object p4, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$2;->val$errStr:Ljava/lang/String;

    iput-object p5, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$2;->val$data:[B

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 204
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    invoke-static {v1}, Lorg/cocos2dx/lib/Cocos2dxDownloader;->access$0(Lorg/cocos2dx/lib/Cocos2dxDownloader;)I

    move-result v1

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$2;->val$id:I

    iget v3, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$2;->val$errCode:I

    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$2;->val$errStr:Ljava/lang/String;

    iget-object v5, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$2;->val$data:[B

    invoke-virtual/range {v0 .. v5}, Lorg/cocos2dx/lib/Cocos2dxDownloader;->nativeOnFinish(IIILjava/lang/String;[B)V

    .line 205
    return-void
.end method
