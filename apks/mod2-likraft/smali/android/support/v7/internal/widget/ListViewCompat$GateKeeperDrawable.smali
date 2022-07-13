.class Landroid/support/v7/internal/widget/ListViewCompat$GateKeeperDrawable;
.super Landroid/support/v7/internal/widget/DrawableWrapper;
.source "ListViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/internal/widget/ListViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GateKeeperDrawable"
.end annotation


# instance fields
.field private mEnabled:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 332
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    .line 333
    iput-boolean p1, p0, Landroid/support/v7/internal/widget/ListViewCompat$GateKeeperDrawable;->mEnabled:Z

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 350
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ListViewCompat$GateKeeperDrawable;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 351
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/DrawableWrapper;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method setEnabled(Z)V
    .locals 0

    .line 337
    iput-boolean p1, p0, Landroid/support/v7/internal/widget/ListViewCompat$GateKeeperDrawable;->mEnabled:Z

    return-void
.end method

.method public setHotspot(FF)V
    .locals 1

    .line 357
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ListViewCompat$GateKeeperDrawable;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 358
    invoke-super {p0, p1, p2}, Landroid/support/v7/internal/widget/DrawableWrapper;->setHotspot(FF)V

    :cond_0
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .locals 1

    .line 364
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ListViewCompat$GateKeeperDrawable;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 365
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/internal/widget/DrawableWrapper;->setHotspotBounds(IIII)V

    :cond_0
    return-void
.end method

.method public setState([I)Z
    .locals 1

    .line 342
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ListViewCompat$GateKeeperDrawable;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 343
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/DrawableWrapper;->setState([I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setVisible(ZZ)Z
    .locals 1

    .line 371
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ListViewCompat$GateKeeperDrawable;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 372
    invoke-super {p0, p1, p2}, Landroid/support/v7/internal/widget/DrawableWrapper;->setVisible(ZZ)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
