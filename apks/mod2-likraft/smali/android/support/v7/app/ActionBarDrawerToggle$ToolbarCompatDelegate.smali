.class Landroid/support/v7/app/ActionBarDrawerToggle$ToolbarCompatDelegate;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/ActionBarDrawerToggle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ToolbarCompatDelegate"
.end annotation


# instance fields
.field final mToolbar:Landroid/support/v7/widget/Toolbar;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/Toolbar;)V
    .locals 0

    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 605
    iput-object p1, p0, Landroid/support/v7/app/ActionBarDrawerToggle$ToolbarCompatDelegate;->mToolbar:Landroid/support/v7/widget/Toolbar;

    return-void
.end method


# virtual methods
.method public getActionBarThemedContext()Landroid/content/Context;
    .locals 1

    .line 630
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle$ToolbarCompatDelegate;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 621
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle$ToolbarCompatDelegate;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x102002c

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 623
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 624
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1
.end method

.method public setActionBarDescription(I)V
    .locals 1

    .line 616
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle$ToolbarCompatDelegate;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(I)V

    return-void
.end method

.method public setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    .line 610
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle$ToolbarCompatDelegate;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 611
    iget-object p1, p0, Landroid/support/v7/app/ActionBarDrawerToggle$ToolbarCompatDelegate;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(I)V

    return-void
.end method
