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

# ENXHACK This function calls waps service

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 91
    iget v4, p1, Landroid/os/Message;->what:I

    const v5, 0x10001

    if-ne v4, v5, :cond_2

    .line 92
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_1

    .line 93
    invoke-static {p0}, Lcn/waps/AppConnect;->getInstance(Landroid/content/Context;)Lcn/waps/AppConnect;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcn/waps/AppConnect;->showPopAd(Landroid/content/Context;)V

    .line 94
    invoke-static {p0}, Lcn/waps/AppConnect;->getInstance(Landroid/content/Context;)Lcn/waps/AppConnect;

    move-result-object v3

    invoke-virtual {v3}, Lcn/waps/AppConnect;->getPopAdDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 95
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 115
    .end local v0    # "dialog":Landroid/app/Dialog;
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    invoke-static {p0}, Lcn/waps/AppConnect;->getInstance(Landroid/content/Context;)Lcn/waps/AppConnect;

    move-result-object v3

    invoke-virtual {v3}, Lcn/waps/AppConnect;->getPopAdDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 100
    .restart local v0    # "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 101
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 104
    .end local v0    # "dialog":Landroid/app/Dialog;
    :cond_2
    iget v4, p1, Landroid/os/Message;->what:I

    const v5, 0x10002

    if-ne v4, v5, :cond_4

    .line 105
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_3

    :goto_1
    invoke-virtual {p0, v3}, Lorg/tvp/kirikiri2_yuri_10309/Kirikiroid2;->showBannerAd(Z)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 106
    :cond_4
    iget v4, p1, Landroid/os/Message;->what:I

    const v5, 0x10003

    if-ne v4, v5, :cond_0

    .line 107
    invoke-virtual {p0, v3}, Lorg/tvp/kirikiri2_yuri_10309/Kirikiroid2;->showBannerAd(Z)V

    .line 108
    iget-object v3, p0, Lorg/tvp/kirikiri2_yuri_10309/Kirikiroid2;->bannerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    .line 109
    .local v1, "h":I
    iget-object v3, p0, Lorg/tvp/kirikiri2_yuri_10309/Kirikiroid2;->bannerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    .line 110
    .local v2, "w":I
    iget-object v3, p0, Lorg/tvp/kirikiri2_yuri_10309/Kirikiroid2;->bannerLayout:Landroid/widget/LinearLayout;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLeft(I)V

    .line 111
    iget-object v3, p0, Lorg/tvp/kirikiri2_yuri_10309/Kirikiroid2;->bannerLayout:Landroid/widget/LinearLayout;

    iget v4, p1, Landroid/os/Message;->arg1:I

    add-int/2addr v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setRight(I)V

    .line 112
    iget-object v3, p0, Lorg/tvp/kirikiri2_yuri_10309/Kirikiroid2;->bannerLayout:Landroid/widget/LinearLayout;

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setTop(I)V

    .line 113
    iget-object v3, p0, Lorg/tvp/kirikiri2_yuri_10309/Kirikiroid2;->bannerLayout:Landroid/widget/LinearLayout;

    iget v4, p1, Landroid/os/Message;->arg2:I

    add-int/2addr v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBottom(I)V

    goto :goto_0
.end method

# ENXHACK Another waps caller function

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v8, 0x53

    const/4 v7, -0x1

    const/4 v6, -0x2

    .line 22
    invoke-super {p0, p1}, Lorg/tvp/kirikiri2/KR2Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-static {p0}, Lcn/waps/AppConnect;->getInstance(Landroid/content/Context;)Lcn/waps/AppConnect;

    move-result-object v1

    .line 25
    .local v1, "app":Lcn/waps/AppConnect;
    invoke-virtual {v1}, Lcn/waps/AppConnect;->initAdInfo()V

    .line 26
    invoke-virtual {v1, p0}, Lcn/waps/AppConnect;->initPopAd(Landroid/content/Context;)V

    .line 28
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 29
    .local v4, "rootLay":Landroid/widget/LinearLayout;
    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 30
    const v5, 0xffffff

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 31
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 37
    .local v2, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 38
    .local v0, "adBannerLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 40
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .end local v2    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v2, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 49
    .restart local v2    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lorg/tvp/kirikiri2_yuri_10309/Kirikiroid2;->bannerLayout:Landroid/widget/LinearLayout;

    .line 50
    iget-object v5, p0, Lorg/tvp/kirikiri2_yuri_10309/Kirikiroid2;->bannerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 51
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 54
    .local v3, "layoutParams2":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0xc

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 55
    invoke-static {p0}, Lcn/waps/AppConnect;->getInstance(Landroid/content/Context;)Lcn/waps/AppConnect;

    move-result-object v5

    iget-object v6, p0, Lorg/tvp/kirikiri2_yuri_10309/Kirikiroid2;->bannerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, p0, v6}, Lcn/waps/AppConnect;->showBannerAd(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    .line 57
    iget-object v5, p0, Lorg/tvp/kirikiri2_yuri_10309/Kirikiroid2;->bannerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v5, v3}, Lorg/tvp/kirikiri2_yuri_10309/Kirikiroid2;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    return-void
.end method

# ENXHACK Destructor that also calls waps

.method public onDestroy()V
    .locals 1

    .prologue
    .line 80
    invoke-static {p0}, Lcn/waps/AppConnect;->getInstance(Landroid/content/Context;)Lcn/waps/AppConnect;

    move-result-object v0

    invoke-virtual {v0}, Lcn/waps/AppConnect;->close()V

    .line 81
    return-void
.end method

.method showBannerAd(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 86
    iget-object v1, p0, Lorg/tvp/kirikiri2_yuri_10309/Kirikiroid2;->bannerLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 87
    return-void

    .line 86
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method
