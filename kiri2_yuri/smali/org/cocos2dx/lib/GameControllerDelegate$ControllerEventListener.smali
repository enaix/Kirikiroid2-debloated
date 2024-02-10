.class public interface abstract Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;
.super Ljava/lang/Object;
.source "GameControllerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/lib/GameControllerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ControllerEventListener"
.end annotation


# virtual methods
.method public abstract onAxisEvent(Ljava/lang/String;IIFZ)V
.end method

.method public abstract onButtonEvent(Ljava/lang/String;IIZFZ)V
.end method

.method public abstract onConnected(Ljava/lang/String;I)V
.end method

.method public abstract onDisconnected(Ljava/lang/String;I)V
.end method
