.class public Lorg/cocos2dx/lib/Cocos2dxLuaJavaBridge;
.super Ljava/lang/Object;
.source "Cocos2dxLuaJavaBridge.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native callLuaFunctionWithString(ILjava/lang/String;)I
.end method

.method public static native callLuaGlobalFunctionWithString(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native releaseLuaFunction(I)I
.end method

.method public static native retainLuaFunction(I)I
.end method
