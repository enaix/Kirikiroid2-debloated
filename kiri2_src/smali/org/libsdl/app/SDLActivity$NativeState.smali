.class public final enum Lorg/libsdl/app/SDLActivity$NativeState;
.super Ljava/lang/Enum;
.source "SDLActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/libsdl/app/SDLActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NativeState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/libsdl/app/SDLActivity$NativeState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/libsdl/app/SDLActivity$NativeState;

.field public static final enum INIT:Lorg/libsdl/app/SDLActivity$NativeState;

.field public static final enum PAUSED:Lorg/libsdl/app/SDLActivity$NativeState;

.field public static final enum RESUMED:Lorg/libsdl/app/SDLActivity$NativeState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Lorg/libsdl/app/SDLActivity$NativeState;

    const-string v1, "INIT"

    invoke-direct {v0, v1, v2}, Lorg/libsdl/app/SDLActivity$NativeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/libsdl/app/SDLActivity$NativeState;->INIT:Lorg/libsdl/app/SDLActivity$NativeState;

    new-instance v0, Lorg/libsdl/app/SDLActivity$NativeState;

    const-string v1, "RESUMED"

    invoke-direct {v0, v1, v3}, Lorg/libsdl/app/SDLActivity$NativeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/libsdl/app/SDLActivity$NativeState;->RESUMED:Lorg/libsdl/app/SDLActivity$NativeState;

    new-instance v0, Lorg/libsdl/app/SDLActivity$NativeState;

    const-string v1, "PAUSED"

    invoke-direct {v0, v1, v4}, Lorg/libsdl/app/SDLActivity$NativeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/libsdl/app/SDLActivity$NativeState;->PAUSED:Lorg/libsdl/app/SDLActivity$NativeState;

    .line 41
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/libsdl/app/SDLActivity$NativeState;

    sget-object v1, Lorg/libsdl/app/SDLActivity$NativeState;->INIT:Lorg/libsdl/app/SDLActivity$NativeState;

    aput-object v1, v0, v2

    sget-object v1, Lorg/libsdl/app/SDLActivity$NativeState;->RESUMED:Lorg/libsdl/app/SDLActivity$NativeState;

    aput-object v1, v0, v3

    sget-object v1, Lorg/libsdl/app/SDLActivity$NativeState;->PAUSED:Lorg/libsdl/app/SDLActivity$NativeState;

    aput-object v1, v0, v4

    sput-object v0, Lorg/libsdl/app/SDLActivity$NativeState;->ENUM$VALUES:[Lorg/libsdl/app/SDLActivity$NativeState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/libsdl/app/SDLActivity$NativeState;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/libsdl/app/SDLActivity$NativeState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/libsdl/app/SDLActivity$NativeState;

    return-object v0
.end method

.method public static values()[Lorg/libsdl/app/SDLActivity$NativeState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/libsdl/app/SDLActivity$NativeState;->ENUM$VALUES:[Lorg/libsdl/app/SDLActivity$NativeState;

    array-length v1, v0

    new-array v2, v1, [Lorg/libsdl/app/SDLActivity$NativeState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
