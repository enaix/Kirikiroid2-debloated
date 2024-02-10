.class public abstract Lcom/enhance/gameservice/IGameTuningService$Stub;
.super Landroid/os/Binder;
.source "IGameTuningService.java"

# interfaces
.implements Lcom/enhance/gameservice/IGameTuningService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/enhance/gameservice/IGameTuningService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/enhance/gameservice/IGameTuningService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.enhance.gameservice.IGameTuningService"

.field static final TRANSACTION_boostUp:I = 0x3

.field static final TRANSACTION_getAbstractTemperature:I = 0x4

.field static final TRANSACTION_setFramePerSecond:I = 0x2

.field static final TRANSACTION_setGamePowerSaving:I = 0x5

.field static final TRANSACTION_setPreferredResolution:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.enhance.gameservice.IGameTuningService"

    invoke-virtual {p0, p0, v0}, Lcom/enhance/gameservice/IGameTuningService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/enhance/gameservice/IGameTuningService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.enhance.gameservice.IGameTuningService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/enhance/gameservice/IGameTuningService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/enhance/gameservice/IGameTuningService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/enhance/gameservice/IGameTuningService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/enhance/gameservice/IGameTuningService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 94
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 42
    :sswitch_0
    const-string v3, "com.enhance.gameservice.IGameTuningService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v3, "com.enhance.gameservice.IGameTuningService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 50
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/enhance/gameservice/IGameTuningService$Stub;->setPreferredResolution(I)I

    move-result v1

    .line 51
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 57
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :sswitch_2
    const-string v3, "com.enhance.gameservice.IGameTuningService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 60
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/enhance/gameservice/IGameTuningService$Stub;->setFramePerSecond(I)I

    move-result v1

    .line 61
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 67
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :sswitch_3
    const-string v3, "com.enhance.gameservice.IGameTuningService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 70
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/enhance/gameservice/IGameTuningService$Stub;->boostUp(I)I

    move-result v1

    .line 71
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 77
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :sswitch_4
    const-string v3, "com.enhance.gameservice.IGameTuningService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/enhance/gameservice/IGameTuningService$Stub;->getAbstractTemperature()I

    move-result v1

    .line 79
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 85
    .end local v1    # "_result":I
    :sswitch_5
    const-string v3, "com.enhance.gameservice.IGameTuningService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    .line 88
    .local v0, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/enhance/gameservice/IGameTuningService$Stub;->setGamePowerSaving(Z)I

    move-result v1

    .line 89
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 87
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
