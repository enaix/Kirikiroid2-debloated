.class Lorg/cocos2dx/lib/ResizeLayout$1;
.super Ljava/lang/Object;
.source "ResizeLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/ResizeLayout;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/lib/ResizeLayout;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/ResizeLayout;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cocos2dx/lib/ResizeLayout$1;->this$0:Lorg/cocos2dx/lib/ResizeLayout;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/cocos2dx/lib/ResizeLayout$1;->this$0:Lorg/cocos2dx/lib/ResizeLayout;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/ResizeLayout;->requestLayout()V

    .line 60
    iget-object v0, p0, Lorg/cocos2dx/lib/ResizeLayout$1;->this$0:Lorg/cocos2dx/lib/ResizeLayout;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/ResizeLayout;->invalidate()V

    .line 61
    return-void
.end method
