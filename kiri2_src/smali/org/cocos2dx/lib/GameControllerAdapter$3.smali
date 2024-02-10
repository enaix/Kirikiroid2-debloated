.class Lorg/cocos2dx/lib/GameControllerAdapter$3;
.super Ljava/lang/Object;
.source "GameControllerAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/GameControllerAdapter;->onButtonEvent(Ljava/lang/String;IIZFZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$button:I

.field private final synthetic val$controller:I

.field private final synthetic val$isAnalog:Z

.field private final synthetic val$isPressed:Z

.field private final synthetic val$value:F

.field private final synthetic val$vendorName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;IIZFZ)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cocos2dx/lib/GameControllerAdapter$3;->val$vendorName:Ljava/lang/String;

    iput p2, p0, Lorg/cocos2dx/lib/GameControllerAdapter$3;->val$controller:I

    iput p3, p0, Lorg/cocos2dx/lib/GameControllerAdapter$3;->val$button:I

    iput-boolean p4, p0, Lorg/cocos2dx/lib/GameControllerAdapter$3;->val$isPressed:Z

    iput p5, p0, Lorg/cocos2dx/lib/GameControllerAdapter$3;->val$value:F

    iput-boolean p6, p0, Lorg/cocos2dx/lib/GameControllerAdapter$3;->val$isAnalog:Z

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 57
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerAdapter$3;->val$vendorName:Ljava/lang/String;

    iget v1, p0, Lorg/cocos2dx/lib/GameControllerAdapter$3;->val$controller:I

    iget v2, p0, Lorg/cocos2dx/lib/GameControllerAdapter$3;->val$button:I

    iget-boolean v3, p0, Lorg/cocos2dx/lib/GameControllerAdapter$3;->val$isPressed:Z

    iget v4, p0, Lorg/cocos2dx/lib/GameControllerAdapter$3;->val$value:F

    iget-boolean v5, p0, Lorg/cocos2dx/lib/GameControllerAdapter$3;->val$isAnalog:Z

    invoke-static/range {v0 .. v5}, Lorg/cocos2dx/lib/GameControllerAdapter;->access$2(Ljava/lang/String;IIZFZ)V

    .line 58
    return-void
.end method
