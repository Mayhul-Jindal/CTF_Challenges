.class Landroid/support/v4/view/ViewCompat$MarshmallowViewCompatImpl;
.super Landroid/support/v4/view/ViewCompat$LollipopViewCompatImpl;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MarshmallowViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1631
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$LollipopViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getScrollIndicators(Landroid/view/View;)I
    .locals 0

    .line 1644
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatMarshmallow;->getScrollIndicators(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public setScrollIndicators(Landroid/view/View;I)V
    .locals 0

    .line 1634
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatMarshmallow;->setScrollIndicators(Landroid/view/View;I)V

    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;II)V
    .locals 0

    .line 1639
    invoke-static {p1, p2, p3}, Landroid/support/v4/view/ViewCompatMarshmallow;->setScrollIndicators(Landroid/view/View;II)V

    return-void
.end method
