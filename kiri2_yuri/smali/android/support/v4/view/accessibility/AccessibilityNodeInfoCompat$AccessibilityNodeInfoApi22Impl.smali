.class Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi22Impl;
.super Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi21Impl;
.source "AccessibilityNodeInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityNodeInfoApi22Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1253
    invoke-direct {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi21Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public getTraversalAfter(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 2
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 1276
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatApi22;->getTraversalAfter(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1277
    .local v0, "nodeInfo":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 1278
    const/4 v1, 0x0

    .line 1281
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    invoke-direct {v1, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getTraversalBefore(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 2
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 1256
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatApi22;->getTraversalBefore(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1257
    .local v0, "nodeInfo":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 1258
    const/4 v1, 0x0

    .line 1261
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    invoke-direct {v1, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setTraversalAfter(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 1286
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatApi22;->setTraversalAfter(Ljava/lang/Object;Landroid/view/View;)V

    .line 1287
    return-void
.end method

.method public setTraversalAfter(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "root"    # Landroid/view/View;
    .param p3, "virtualDescendantId"    # I

    .prologue
    .line 1291
    invoke-static {p1, p2, p3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatApi22;->setTraversalAfter(Ljava/lang/Object;Landroid/view/View;I)V

    .line 1292
    return-void
.end method

.method public setTraversalBefore(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 1266
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatApi22;->setTraversalBefore(Ljava/lang/Object;Landroid/view/View;)V

    .line 1267
    return-void
.end method

.method public setTraversalBefore(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "root"    # Landroid/view/View;
    .param p3, "virtualDescendantId"    # I

    .prologue
    .line 1271
    invoke-static {p1, p2, p3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatApi22;->setTraversalBefore(Ljava/lang/Object;Landroid/view/View;I)V

    .line 1272
    return-void
.end method
