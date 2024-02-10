.class public Lorg/tvp/kirikiri2_yuri_10309/Kirikiroid2;
.super Lorg/tvp/kirikiri2/KR2Activity;
.source "Kirikiroid2.java"

# ENXHACK Overall, this class seems to overload some other methods. It's possible to disable them

# instance fields
.field bannerLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lorg/tvp/kirikiri2/KR2Activity;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tvp/kirikiri2_yuri_10309/Kirikiroid2;->bannerLayout:Landroid/widget/LinearLayout;

    .line 19
    return-void
.end method


# virtual methods
.method public get_res_sd_operate_step()I
    .locals 1

    .prologue
    .line 118
    const v0, 0x7f020006

    return v0
.end method
