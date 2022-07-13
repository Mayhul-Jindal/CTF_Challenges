.class Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;
.super Landroid/support/v7/internal/widget/TintImageView;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverflowMenuButton"
.end annotation


# instance fields
.field private final mTempPts:[F

.field final synthetic this$0:Landroid/support/v7/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 2

    .line 587
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 588
    sget v0, Landroid/support/v7/appcompat/R$attr;->actionOverflowButtonStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1, v0}, Landroid/support/v7/internal/widget/TintImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x2

    new-array p2, p2, [F

    .line 585
    iput-object p2, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->mTempPts:[F

    const/4 p2, 0x1

    .line 590
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->setClickable(Z)V

    .line 591
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->setFocusable(Z)V

    const/4 v0, 0x0

    .line 592
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->setVisibility(I)V

    .line 593
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->setEnabled(Z)V

    .line 595
    new-instance p2, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton$1;

    invoke-direct {p2, p0, p0, p1}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton$1;-><init>(Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;Landroid/view/View;Landroid/support/v7/widget/ActionMenuPresenter;)V

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public needsDividerAfter()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public needsDividerBefore()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public performClick()Z
    .locals 2

    .line 628
    invoke-super {p0}, Landroid/support/v7/internal/widget/TintImageView;->performClick()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 632
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->playSoundEffect(I)V

    .line 633
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->showOverflowMenu()Z

    return v1
.end method

.method protected setFrame(IIII)Z
    .locals 2

    .line 649
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/internal/widget/TintImageView;->setFrame(IIII)Z

    move-result p1

    .line 652
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 653
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 655
    iget-object p4, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->mTempPts:[F

    .line 656
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result p2

    int-to-float p2, p2

    const/4 v0, 0x0

    aput p2, p4, v0

    .line 657
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p2, p4}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 658
    aget p2, p4, v0

    float-to-int p2, p2

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->getWidth()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    sub-int/2addr p2, p4

    .line 659
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->getWidth()I

    move-result p4

    add-int/2addr p4, p2

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->getHeight()I

    move-result v1

    invoke-static {p3, p2, v0, p4, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V

    :cond_0
    return p1
.end method
