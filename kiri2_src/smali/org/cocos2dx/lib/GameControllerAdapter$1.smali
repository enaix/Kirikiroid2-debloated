.class Lorg/cocos2dx/lib/GameControllerAdapter$1;
.super Ljava/lang/Object;
.source "GameControllerAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/GameControllerAdapter;->onConnected(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$controller:I

.field private final synthetic val$vendorName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cocos2dx/lib/GameControllerAdapter$1;->val$vendorName:Ljava/lang/String;

    iput p2, p0, Lorg/cocos2dx/lib/GameControllerAdapter$1;->val$controller:I

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerAdapter$1;->val$vendorName:Ljava/lang/String;

    iget v1, p0, Lorg/cocos2dx/lib/GameControllerAdapter$1;->val$controller:I

    invoke-static {v0, v1}, Lorg/cocos2dx/lib/GameControllerAdapter;->access$0(Ljava/lang/String;I)V

    .line 36
    return-void
.end method
