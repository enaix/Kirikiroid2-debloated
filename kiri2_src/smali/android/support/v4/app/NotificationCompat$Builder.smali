.class public Landroid/support/v4/app/NotificationCompat$Builder;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final MAX_CHARSEQUENCE_LENGTH:I = 0x1400


# instance fields
.field public mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/NotificationCompat$Action;",
            ">;"
        }
    .end annotation
.end field

.field mCategory:Ljava/lang/String;

.field mColor:I

.field public mContentInfo:Ljava/lang/CharSequence;

.field mContentIntent:Landroid/app/PendingIntent;

.field public mContentText:Ljava/lang/CharSequence;

.field public mContentTitle:Ljava/lang/CharSequence;

.field public mContext:Landroid/content/Context;

.field mExtras:Landroid/os/Bundle;

.field mFullScreenIntent:Landroid/app/PendingIntent;

.field mGroupKey:Ljava/lang/String;

.field mGroupSummary:Z

.field public mLargeIcon:Landroid/graphics/Bitmap;

.field mLocalOnly:Z

.field public mNotification:Landroid/app/Notification;

.field public mNumber:I

.field public mPeople:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPriority:I

.field mProgress:I

.field mProgressIndeterminate:Z

.field mProgressMax:I

.field mPublicVersion:Landroid/app/Notification;

.field mShowWhen:Z

.field mSortKey:Ljava/lang/String;

.field public mStyle:Landroid/support/v4/app/NotificationCompat$Style;

.field public mSubText:Ljava/lang/CharSequence;

.field mTickerView:Landroid/widget/RemoteViews;

.field public mUseChronometer:Z

.field mVisibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 933
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 896
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mShowWhen:Z

    .line 910
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    .line 911
    iput-boolean v4, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mLocalOnly:Z

    .line 914
    iput v4, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mColor:I

    .line 915
    iput v4, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mVisibility:I

    .line 919
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 934
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    .line 937
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/app/Notification;->when:J

    .line 938
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 939
    iput v4, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mPriority:I

    .line 940
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mPeople:Ljava/util/ArrayList;

    .line 941
    return-void
.end method

.method protected static limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v1, 0x1400

    .line 1570
    if-nez p0, :cond_1

    .line 1574
    :cond_0
    :goto_0
    return-object p0

    .line 1571
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 1572
    const/4 v0, 0x0

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0
.end method

.method private setFlag(IZ)V
    .locals 3
    .param p1, "mask"    # I
    .param p2, "value"    # Z

    .prologue
    .line 1289
    if-eqz p2, :cond_0

    .line 1290
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/2addr v1, p1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 1294
    :goto_0
    return-void

    .line 1292
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, v0, Landroid/app/Notification;->flags:I

    goto :goto_0
.end method


# virtual methods
.method public addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 2
    .param p1, "icon"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1459
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    new-instance v1, Landroid/support/v4/app/NotificationCompat$Action;

    invoke-direct {v1, p1, p2, p3}, Landroid/support/v4/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1460
    return-object p0
.end method

.method public addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1
    .param p1, "action"    # Landroid/support/v4/app/NotificationCompat$Action;

    .prologue
    .line 1478
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1479
    return-object p0
.end method

.method public addExtras(Landroid/os/Bundle;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1398
    if-eqz p1, :cond_0

    .line 1399
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_1

    .line 1400
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    .line 1405
    :cond_0
    :goto_0
    return-object p0

    .line 1402
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public addPerson(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 1341
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mPeople:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1342
    return-object p0
.end method

.method public build()Landroid/app/Notification;
    .locals 2

    .prologue
    .line 1559
    invoke-static {}, Landroid/support/v4/app/NotificationCompat;->access$200()Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$Builder;->getExtender()Landroid/support/v4/app/NotificationCompat$BuilderExtender;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;->build(Landroid/support/v4/app/NotificationCompat$Builder;Landroid/support/v4/app/NotificationCompat$BuilderExtender;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public extend(Landroid/support/v4/app/NotificationCompat$Extender;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0
    .param p1, "extender"    # Landroid/support/v4/app/NotificationCompat$Extender;

    .prologue
    .line 1542
    invoke-interface {p1, p0}, Landroid/support/v4/app/NotificationCompat$Extender;->extend(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1543
    return-object p0
.end method

.method protected getExtender()Landroid/support/v4/app/NotificationCompat$BuilderExtender;
    .locals 1

    .prologue
    .line 1566
    new-instance v0, Landroid/support/v4/app/NotificationCompat$BuilderExtender;

    invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$BuilderExtender;-><init>()V

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 1436
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 1437
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    .line 1439
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getNotification()Landroid/app/Notification;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1551
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1
    .param p1, "autoCancel"    # Z

    .prologue
    .line 1243
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setFlag(IZ)V

    .line 1244
    return-object p0
.end method

.method public setCategory(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 1266
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mCategory:Ljava/lang/String;

    .line 1267
    return-object p0
.end method

.method public setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0
    .param p1, "argb"    # I

    .prologue
    .line 1508
    iput p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mColor:I

    .line 1509
    return-object p0
.end method

.method public setContent(Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1
    .param p1, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 1068
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1069
    return-object p0
.end method

.method public setContentInfo(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1
    .param p1, "info"    # Ljava/lang/CharSequence;

    .prologue
    .line 1049
    invoke-static {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    .line 1050
    return-object p0
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1081
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    .line 1082
    return-object p0
.end method

.method public setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1017
    invoke-static {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    .line 1018
    return-object p0
.end method

.method public setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 1009
    invoke-static {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 1010
    return-object p0
.end method

.method public setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 2
    .param p1, "defaults"    # I

    .prologue
    .line 1281
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->defaults:I

    .line 1282
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    .line 1283
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 1285
    :cond_0
    return-object p0
.end method

.method public setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1093
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 1094
    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1421
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    .line 1422
    return-object p0
.end method

.method public setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "highPriority"    # Z

    .prologue
    .line 1116
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    .line 1117
    const/16 v0, 0x80

    invoke-direct {p0, v0, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setFlag(IZ)V

    .line 1118
    return-object p0
.end method

.method public setGroup(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0
    .param p1, "groupKey"    # Ljava/lang/String;

    .prologue
    .line 1357
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mGroupKey:Ljava/lang/String;

    .line 1358
    return-object p0
.end method

.method public setGroupSummary(Z)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0
    .param p1, "isGroupSummary"    # Z

    .prologue
    .line 1369
    iput-boolean p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mGroupSummary:Z

    .line 1370
    return-object p0
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1145
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    .line 1146
    return-object p0
.end method

.method public setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 5
    .param p1, "argb"    # I
    .param p2, "onMs"    # I
    .param p3, "offMs"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1202
    iget-object v3, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p1, v3, Landroid/app/Notification;->ledARGB:I

    .line 1203
    iget-object v3, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p2, v3, Landroid/app/Notification;->ledOnMS:I

    .line 1204
    iget-object v3, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p3, v3, Landroid/app/Notification;->ledOffMS:I

    .line 1205
    iget-object v3, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->ledOnMS:I

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->ledOffMS:I

    if-eqz v3, :cond_0

    move v0, v1

    .line 1206
    .local v0, "showLights":Z
    :goto_0
    iget-object v3, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget-object v4, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, -0x2

    if-eqz v0, :cond_1

    :goto_1
    or-int/2addr v1, v4

    iput v1, v3, Landroid/app/Notification;->flags:I

    .line 1208
    return-object p0

    .end local v0    # "showLights":Z
    :cond_0
    move v0, v2

    .line 1205
    goto :goto_0

    .restart local v0    # "showLights":Z
    :cond_1
    move v1, v2

    .line 1206
    goto :goto_1
.end method

.method public setLocalOnly(Z)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 1254
    iput-boolean p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mLocalOnly:Z

    .line 1255
    return-object p0
.end method

.method public setNumber(I)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0
    .param p1, "number"    # I

    .prologue
    .line 1041
    iput p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNumber:I

    .line 1042
    return-object p0
.end method

.method public setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1
    .param p1, "ongoing"    # Z

    .prologue
    .line 1223
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setFlag(IZ)V

    .line 1224
    return-object p0
.end method

.method public setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1
    .param p1, "onlyAlertOnce"    # Z

    .prologue
    .line 1232
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setFlag(IZ)V

    .line 1233
    return-object p0
.end method

.method public setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0
    .param p1, "pri"    # I

    .prologue
    .line 1314
    iput p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mPriority:I

    .line 1315
    return-object p0
.end method

.method public setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0
    .param p1, "max"    # I
    .param p2, "progress"    # I
    .param p3, "indeterminate"    # Z

    .prologue
    .line 1058
    iput p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mProgressMax:I

    .line 1059
    iput p2, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mProgress:I

    .line 1060
    iput-boolean p3, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mProgressIndeterminate:Z

    .line 1061
    return-object p0
.end method

.method public setPublicVersion(Landroid/app/Notification;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0
    .param p1, "n"    # Landroid/app/Notification;

    .prologue
    .line 1533
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mPublicVersion:Landroid/app/Notification;

    .line 1534
    return-object p0
.end method

.method public setShowWhen(Z)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 957
    iput-boolean p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mShowWhen:Z

    .line 958
    return-object p0
.end method

.method public setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1
    .param p1, "icon"    # I

    .prologue
    .line 985
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    .line 986
    return-object p0
.end method

.method public setSmallIcon(II)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1
    .param p1, "icon"    # I
    .param p2, "level"    # I

    .prologue
    .line 1000
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    .line 1001
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->iconLevel:I

    .line 1002
    return-object p0
.end method

.method public setSortKey(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0
    .param p1, "sortKey"    # Ljava/lang/String;

    .prologue
    .line 1386
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mSortKey:Ljava/lang/String;

    .line 1387
    return-object p0
.end method

.method public setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 2
    .param p1, "sound"    # Landroid/net/Uri;

    .prologue
    .line 1158
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1159
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 1160
    return-object p0
.end method

.method public setSound(Landroid/net/Uri;I)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1
    .param p1, "sound"    # Landroid/net/Uri;
    .param p2, "streamType"    # I

    .prologue
    .line 1175
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1176
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->audioStreamType:I

    .line 1177
    return-object p0
.end method

.method public setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1
    .param p1, "style"    # Landroid/support/v4/app/NotificationCompat$Style;

    .prologue
    .line 1491
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    if-eq v0, p1, :cond_0

    .line 1492
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    .line 1493
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    if-eqz v0, :cond_0

    .line 1494
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/NotificationCompat$Style;->setBuilder(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 1497
    :cond_0
    return-object p0
.end method

.method public setSubText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1031
    invoke-static {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    .line 1032
    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 2
    .param p1, "tickerText"    # Ljava/lang/CharSequence;

    .prologue
    .line 1126
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    invoke-static {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1127
    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 2
    .param p1, "tickerText"    # Ljava/lang/CharSequence;
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 1136
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    invoke-static {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1137
    iput-object p2, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mTickerView:Landroid/widget/RemoteViews;

    .line 1138
    return-object p0
.end method

.method public setUsesChronometer(Z)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 973
    iput-boolean p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mUseChronometer:Z

    .line 974
    return-object p0
.end method

.method public setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1
    .param p1, "pattern"    # [J

    .prologue
    .line 1192
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->vibrate:[J

    .line 1193
    return-object p0
.end method

.method public setVisibility(I)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 1520
    iput p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mVisibility:I

    .line 1521
    return-object p0
.end method

.method public setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1
    .param p1, "when"    # J

    .prologue
    .line 948
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-wide p1, v0, Landroid/app/Notification;->when:J

    .line 949
    return-object p0
.end method
