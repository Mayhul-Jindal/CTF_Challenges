.class Landroid/support/v7/internal/widget/ActionBarBackgroundDrawableV21;
.super Landroid/support/v7/internal/widget/ActionBarBackgroundDrawable;
.source "ActionBarBackgroundDrawableV21.java"


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/widget/ActionBarContainer;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/ActionBarBackgroundDrawable;-><init>(Landroid/support/v7/internal/widget/ActionBarContainer;)V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/graphics/Outline;)V
    .locals 1

    .line 15
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarBackgroundDrawableV21;->mContainer:Landroid/support/v7/internal/widget/ActionBarContainer;

    iget-boolean v0, v0, Landroid/support/v7/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarBackgroundDrawableV21;->mContainer:Landroid/support/v7/internal/widget/ActionBarContainer;

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 17
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarBackgroundDrawableV21;->mContainer:Landroid/support/v7/internal/widget/ActionBarContainer;

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarBackgroundDrawableV21;->mContainer:Landroid/support/v7/internal/widget/ActionBarContainer;

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 22
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarBackgroundDrawableV21;->mContainer:Landroid/support/v7/internal/widget/ActionBarContainer;

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    :cond_1
    :goto_0
    return-void
.end method
