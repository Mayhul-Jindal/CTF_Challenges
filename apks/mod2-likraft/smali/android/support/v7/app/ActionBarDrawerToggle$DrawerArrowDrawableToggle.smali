.class Landroid/support/v7/app/ActionBarDrawerToggle$DrawerArrowDrawableToggle;
.super Landroid/support/v7/app/DrawerArrowDrawable;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Landroid/support/v7/app/ActionBarDrawerToggle$DrawerToggle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/ActionBarDrawerToggle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DrawerArrowDrawableToggle"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;)V
    .locals 0

    .line 469
    invoke-direct {p0, p2}, Landroid/support/v7/app/DrawerArrowDrawable;-><init>(Landroid/content/Context;)V

    .line 470
    iput-object p1, p0, Landroid/support/v7/app/ActionBarDrawerToggle$DrawerArrowDrawableToggle;->mActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public getPosition()F
    .locals 1

    .line 489
    invoke-super {p0}, Landroid/support/v7/app/DrawerArrowDrawable;->getProgress()F

    move-result v0

    return v0
.end method

.method isLayoutRtl()Z
    .locals 2

    .line 484
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle$DrawerArrowDrawableToggle;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setPosition(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 475
    invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBarDrawerToggle$DrawerArrowDrawableToggle;->setVerticalMirror(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 477
    invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBarDrawerToggle$DrawerArrowDrawableToggle;->setVerticalMirror(Z)V

    .line 479
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/app/DrawerArrowDrawable;->setProgress(F)V

    return-void
.end method
