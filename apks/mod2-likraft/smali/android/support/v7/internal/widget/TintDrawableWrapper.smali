.class Landroid/support/v7/internal/widget/TintDrawableWrapper;
.super Landroid/support/v7/internal/widget/DrawableWrapper;
.source "TintDrawableWrapper.java"


# instance fields
.field private mCurrentColor:I

.field private final mTintMode:Landroid/graphics/PorterDuff$Mode;

.field private final mTintStateList:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 36
    sget-object v0, Landroid/support/v7/internal/widget/TintManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/internal/widget/TintDrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 42
    iput-object p2, p0, Landroid/support/v7/internal/widget/TintDrawableWrapper;->mTintStateList:Landroid/content/res/ColorStateList;

    .line 43
    iput-object p3, p0, Landroid/support/v7/internal/widget/TintDrawableWrapper;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method private updateTint([I)Z
    .locals 2

    .line 59
    iget-object v0, p0, Landroid/support/v7/internal/widget/TintDrawableWrapper;->mTintStateList:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    .line 60
    iget v1, p0, Landroid/support/v7/internal/widget/TintDrawableWrapper;->mCurrentColor:I

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    .line 61
    iget v0, p0, Landroid/support/v7/internal/widget/TintDrawableWrapper;->mCurrentColor:I

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_0

    .line 63
    iget-object v0, p0, Landroid/support/v7/internal/widget/TintDrawableWrapper;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/internal/widget/TintDrawableWrapper;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/TintDrawableWrapper;->clearColorFilter()V

    .line 67
    :goto_0
    iput p1, p0, Landroid/support/v7/internal/widget/TintDrawableWrapper;->mCurrentColor:I

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public isStateful()Z
    .locals 1

    .line 48
    iget-object v0, p0, Landroid/support/v7/internal/widget/TintDrawableWrapper;->mTintStateList:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/support/v7/internal/widget/DrawableWrapper;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setState([I)Z
    .locals 1

    .line 53
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/DrawableWrapper;->setState([I)Z

    move-result v0

    .line 54
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/TintDrawableWrapper;->updateTint([I)Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
