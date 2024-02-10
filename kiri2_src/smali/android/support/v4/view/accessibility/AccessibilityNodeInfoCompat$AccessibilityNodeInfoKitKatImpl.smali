.class Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoKitKatImpl;
.super Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanMr2Impl;
.source "AccessibilityNodeInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityNodeInfoKitKatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1086
    invoke-direct {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanMr2Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public getCollectionInfo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 1099
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->getCollectionInfo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getCollectionInfoColumnCount(Ljava/lang/Object;)I
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 1123
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$CollectionInfo;->getColumnCount(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getCollectionInfoRowCount(Ljava/lang/Object;)I
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 1128
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$CollectionInfo;->getRowCount(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getCollectionItemColumnIndex(Ljava/lang/Object;)I
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 1148
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$CollectionItemInfo;->getColumnIndex(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getCollectionItemColumnSpan(Ljava/lang/Object;)I
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 1153
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$CollectionItemInfo;->getColumnSpan(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getCollectionItemInfo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 1138
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->getCollectionItemInfo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getCollectionItemRowIndex(Ljava/lang/Object;)I
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 1158
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$CollectionItemInfo;->getRowIndex(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getCollectionItemRowSpan(Ljava/lang/Object;)I
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 1163
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$CollectionItemInfo;->getRowSpan(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getLiveRegion(Ljava/lang/Object;)I
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 1089
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->getLiveRegion(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getRangeInfo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 1143
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->getRangeInfo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isCollectionInfoHierarchical(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 1133
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$CollectionInfo;->isHierarchical(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isCollectionItemHeading(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 1168
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$CollectionItemInfo;->isHeading(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isContentInvalid(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 1183
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->isContentInvalid(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public obtainCollectionInfo(IIZI)Ljava/lang/Object;
    .locals 1
    .param p1, "rowCount"    # I
    .param p2, "columnCount"    # I
    .param p3, "hierarchical"    # Z
    .param p4, "selectionMode"    # I

    .prologue
    .line 1110
    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->obtainCollectionInfo(IIZI)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public obtainCollectionItemInfo(IIIIZZ)Ljava/lang/Object;
    .locals 1
    .param p1, "rowIndex"    # I
    .param p2, "rowSpan"    # I
    .param p3, "columnIndex"    # I
    .param p4, "columnSpan"    # I
    .param p5, "heading"    # Z
    .param p6, "selected"    # Z

    .prologue
    .line 1117
    invoke-static {p1, p2, p3, p4, p5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->obtainCollectionItemInfo(IIIIZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setCollectionInfo(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "collectionInfo"    # Ljava/lang/Object;

    .prologue
    .line 1104
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->setCollectionInfo(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1105
    return-void
.end method

.method public setCollectionItemInfo(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "collectionItemInfo"    # Ljava/lang/Object;

    .prologue
    .line 1173
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->setCollectionItemInfo(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1174
    return-void
.end method

.method public setContentInvalid(Ljava/lang/Object;Z)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "contentInvalid"    # Z

    .prologue
    .line 1178
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->setContentInvalid(Ljava/lang/Object;Z)V

    .line 1179
    return-void
.end method

.method public setLiveRegion(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "mode"    # I

    .prologue
    .line 1094
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->setLiveRegion(Ljava/lang/Object;I)V

    .line 1095
    return-void
.end method
