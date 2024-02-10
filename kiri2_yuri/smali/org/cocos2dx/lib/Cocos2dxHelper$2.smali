.class Lorg/cocos2dx/lib/Cocos2dxHelper$2;
.super Ljava/lang/Object;
.source "Cocos2dxHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxHelper;->setEditTextDialogResult(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$bytesUTF8:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxHelper$2;->val$bytesUTF8:[B

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxHelper$2;->val$bytesUTF8:[B

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->access$3([B)V

    .line 356
    return-void
.end method
