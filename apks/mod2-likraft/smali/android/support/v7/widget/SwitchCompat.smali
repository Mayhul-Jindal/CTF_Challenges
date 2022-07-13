.class public Landroid/support/v7/widget/SwitchCompat;
.super Landroid/widget/CompoundButton;
.source "SwitchCompat.java"


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final MONOSPACE:I = 0x3

.field private static final SANS:I = 0x1

.field private static final SERIF:I = 0x2

.field private static final TEXT_APPEARANCE_ATTRS:[I

.field private static final THUMB_ANIMATION_DURATION:I = 0xfa

.field private static final TOUCH_MODE_DOWN:I = 0x1

.field private static final TOUCH_MODE_DRAGGING:I = 0x2

.field private static final TOUCH_MODE_IDLE:I


# instance fields
.field private mMinFlingVelocity:I

.field private mOffLayout:Landroid/text/Layout;

.field private mOnLayout:Landroid/text/Layout;

.field private mPositionAnimator:Landroid/view/animation/Animation;

.field private mShowText:Z

.field private mSplitTrack:Z

.field private mSwitchBottom:I

.field private mSwitchHeight:I

.field private mSwitchLeft:I

.field private mSwitchMinWidth:I

.field private mSwitchPadding:I

.field private mSwitchRight:I

.field private mSwitchTop:I

.field private mSwitchTransformationMethod:Landroid/text/method/TransformationMethod;

.field private mSwitchWidth:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTextColors:Landroid/content/res/ColorStateList;

.field private mTextOff:Ljava/lang/CharSequence;

.field private mTextOn:Ljava/lang/CharSequence;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbPosition:F

.field private mThumbTextPadding:I

.field private mThumbWidth:I

.field private final mTintManager:Landroid/support/v7/internal/widget/TintManager;

.field private mTouchMode:I

.field private mTouchSlop:I

.field private mTouchX:F

.field private mTouchY:F

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [I

    const v1, 0x1010098

    const/4 v2, 0x0

    aput v1, v0, v2

    const v1, 0x1010095

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 78
    sget v1, Landroid/support/v7/appcompat/R$attr;->textAllCaps:I

    const/4 v4, 0x2

    aput v1, v0, v4

    sput-object v0, Landroid/support/v7/widget/SwitchCompat;->TEXT_APPEARANCE_ATTRS:[I

    new-array v0, v3, [I

    const v1, 0x10100a0

    aput v1, v0, v2

    .line 150
    sput-object v0, Landroid/support/v7/widget/SwitchCompat;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 160
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/SwitchCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 171
    sget v0, Landroid/support/v7/appcompat/R$attr;->switchStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/SwitchCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 185
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 103
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 145
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    .line 187
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    .line 189
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 190
    iget-object v2, p0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, v2, Landroid/text/TextPaint;->density:F

    .line 192
    sget-object v0, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat:[I

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, p3, v2}, Landroid/support/v7/internal/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/internal/widget/TintTypedArray;

    move-result-object p2

    .line 194
    sget p3, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_android_thumb:I

    invoke-virtual {p2, p3}, Landroid/support/v7/internal/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 195
    sget p3, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_track:I

    invoke-virtual {p2, p3}, Landroid/support/v7/internal/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 196
    sget p3, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_android_textOn:I

    invoke-virtual {p2, p3}, Landroid/support/v7/internal/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    iput-object p3, p0, Landroid/support/v7/widget/SwitchCompat;->mTextOn:Ljava/lang/CharSequence;

    .line 197
    sget p3, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_android_textOff:I

    invoke-virtual {p2, p3}, Landroid/support/v7/internal/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    iput-object p3, p0, Landroid/support/v7/widget/SwitchCompat;->mTextOff:Ljava/lang/CharSequence;

    .line 198
    sget p3, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_showText:I

    invoke-virtual {p2, p3, v1}, Landroid/support/v7/internal/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Landroid/support/v7/widget/SwitchCompat;->mShowText:Z

    .line 199
    sget p3, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_thumbTextPadding:I

    invoke-virtual {p2, p3, v2}, Landroid/support/v7/internal/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbTextPadding:I

    .line 201
    sget p3, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_switchMinWidth:I

    invoke-virtual {p2, p3, v2}, Landroid/support/v7/internal/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchMinWidth:I

    .line 203
    sget p3, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_switchPadding:I

    invoke-virtual {p2, p3, v2}, Landroid/support/v7/internal/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchPadding:I

    .line 205
    sget p3, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_splitTrack:I

    invoke-virtual {p2, p3, v2}, Landroid/support/v7/internal/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Landroid/support/v7/widget/SwitchCompat;->mSplitTrack:Z

    .line 207
    sget p3, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_switchTextAppearance:I

    invoke-virtual {p2, p3, v2}, Landroid/support/v7/internal/widget/TintTypedArray;->getResourceId(II)I

    move-result p3

    if-eqz p3, :cond_0

    .line 210
    invoke-virtual {p0, p1, p3}, Landroid/support/v7/widget/SwitchCompat;->setSwitchTextAppearance(Landroid/content/Context;I)V

    .line 213
    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/internal/widget/TintTypedArray;->getTintManager()Landroid/support/v7/internal/widget/TintManager;

    move-result-object p3

    iput-object p3, p0, Landroid/support/v7/widget/SwitchCompat;->mTintManager:Landroid/support/v7/internal/widget/TintManager;

    .line 215
    invoke-virtual {p2}, Landroid/support/v7/internal/widget/TintTypedArray;->recycle()V

    .line 217
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 218
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchSlop:I

    .line 219
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/SwitchCompat;->mMinFlingVelocity:I

    .line 222
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->refreshDrawableState()V

    .line 223
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/widget/SwitchCompat;F)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SwitchCompat;->setThumbPosition(F)V

    return-void
.end method

.method private animateThumbToCheckedState(Z)V
    .locals 4

    .line 706
    iget v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbPosition:F

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sub-float/2addr p1, v0

    .line 710
    new-instance v1, Landroid/support/v7/widget/SwitchCompat$1;

    invoke-direct {v1, p0, v0, p1}, Landroid/support/v7/widget/SwitchCompat$1;-><init>(Landroid/support/v7/widget/SwitchCompat;FF)V

    iput-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->mPositionAnimator:Landroid/view/animation/Animation;

    const-wide/16 v2, 0xfa

    .line 716
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 717
    iget-object p1, p0, Landroid/support/v7/widget/SwitchCompat;->mPositionAnimator:Landroid/view/animation/Animation;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SwitchCompat;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private cancelPositionAnimator()V
    .locals 1

    .line 721
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mPositionAnimator:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 722
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->clearAnimation()V

    const/4 v0, 0x0

    .line 723
    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mPositionAnimator:Landroid/view/animation/Animation;

    :cond_0
    return-void
.end method

.method private cancelSuperTouch(Landroid/view/MotionEvent;)V
    .locals 1

    .line 671
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    const/4 v0, 0x3

    .line 672
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 673
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 674
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private static constrain(FFF)F
    .locals 1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    cmpl-float p1, p0, p2

    if-lez p1, :cond_1

    move p0, p2

    :cond_1
    :goto_0
    return p0
.end method

.method private getTargetCheckedState()Z
    .locals 2

    .line 728
    iget v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbPosition:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getThumbOffset()I
    .locals 2

    .line 947
    invoke-static {p0}, Landroid/support/v7/internal/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 948
    iget v1, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbPosition:F

    sub-float/2addr v0, v1

    goto :goto_0

    .line 950
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbPosition:F

    .line 952
    :goto_0
    invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->getThumbScrollRange()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getThumbScrollRange()I
    .locals 3

    .line 956
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 957
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    .line 958
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 959
    iget v0, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchWidth:I

    iget v2, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbWidth:I

    sub-int/2addr v0, v2

    iget v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private hitThumb(FF)Z
    .locals 5

    .line 580
    invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->getThumbOffset()I

    move-result v0

    .line 582
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/support/v7/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 583
    iget v1, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchTop:I

    iget v2, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchSlop:I

    sub-int/2addr v1, v2

    .line 584
    iget v3, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchLeft:I

    add-int/2addr v3, v0

    sub-int/2addr v3, v2

    .line 585
    iget v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbWidth:I

    add-int/2addr v0, v3

    iget-object v2, p0, Landroid/support/v7/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v2

    iget-object v2, p0, Landroid/support/v7/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v2

    iget v2, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchSlop:I

    add-int/2addr v0, v2

    .line 587
    iget v4, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchBottom:I

    add-int/2addr v4, v2

    int-to-float v2, v3

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    int-to-float p1, v1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_0

    int-to-float p1, v4

    cmpg-float p1, p2, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;
    .locals 8

    .line 566
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object p1

    :cond_0
    move-object v1, p1

    .line 570
    new-instance p1, Landroid/text/StaticLayout;

    iget-object v2, p0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v1, v2}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object p1
.end method

.method private setThumbPosition(F)V
    .locals 0

    .line 737
    iput p1, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbPosition:F

    .line 738
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->invalidate()V

    return-void
.end method

.method private stopDrag(Landroid/view/MotionEvent;)V
    .locals 5

    const/4 v0, 0x0

    .line 683
    iput v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchMode:I

    .line 687
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_3

    .line 690
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    invoke-virtual {v1, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 691
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    .line 692
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Landroid/support/v7/widget/SwitchCompat;->mMinFlingVelocity:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 693
    invoke-static {p0}, Landroid/support/v7/internal/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    cmpg-float v1, v1, v4

    if-gez v1, :cond_4

    goto :goto_1

    :cond_1
    cmpl-float v1, v1, v4

    if-lez v1, :cond_4

    :goto_1
    move v0, v2

    goto :goto_2

    .line 695
    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->getTargetCheckedState()Z

    move-result v0

    goto :goto_2

    .line 698
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    .line 701
    :cond_4
    :goto_2
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 702
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SwitchCompat;->cancelSuperTouch(Landroid/view/MotionEvent;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 820
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    .line 821
    iget v1, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchLeft:I

    .line 822
    iget v2, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchTop:I

    .line 823
    iget v3, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchRight:I

    .line 824
    iget v4, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchBottom:I

    .line 826
    invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->getThumbOffset()I

    move-result v5

    add-int/2addr v5, v1

    .line 829
    iget-object v6, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_0

    .line 830
    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 833
    iget v6, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    .line 840
    iget-object v6, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 844
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 845
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 847
    iget v1, v0, Landroid/graphics/Rect;->left:I

    sub-int v1, v5, v1

    .line 848
    iget v3, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbWidth:I

    add-int/2addr v5, v3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v0

    .line 849
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 851
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 853
    invoke-static {v0, v1, v2, v5, v4}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V

    .line 859
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1

    .line 993
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->drawableHotspotChanged(FF)V

    .line 995
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 996
    invoke-static {v0, p1, p2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    .line 999
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1000
    invoke-static {v0, p1, p2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    :cond_1
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 976
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 978
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getDrawableState()[I

    move-result-object v0

    .line 980
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 981
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 984
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 985
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 988
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->invalidate()V

    return-void
.end method

.method public getCompoundPaddingLeft()I
    .locals 2

    .line 917
    invoke-static {p0}, Landroid/support/v7/internal/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 918
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v0

    return v0

    .line 920
    :cond_0
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchWidth:I

    add-int/2addr v0, v1

    .line 921
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 922
    iget v1, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchPadding:I

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public getCompoundPaddingRight()I
    .locals 2

    .line 929
    invoke-static {p0}, Landroid/support/v7/internal/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 930
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v0

    return v0

    .line 932
    :cond_0
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchWidth:I

    add-int/2addr v0, v1

    .line 933
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 934
    iget v1, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchPadding:I

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public getShowText()Z
    .locals 1

    .line 488
    iget-boolean v0, p0, Landroid/support/v7/widget/SwitchCompat;->mShowText:Z

    return v0
.end method

.method public getSplitTrack()Z
    .locals 1

    .line 439
    iget-boolean v0, p0, Landroid/support/v7/widget/SwitchCompat;->mSplitTrack:Z

    return v0
.end method

.method public getSwitchMinWidth()I
    .locals 1

    .line 342
    iget v0, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchMinWidth:I

    return v0
.end method

.method public getSwitchPadding()I
    .locals 1

    .line 321
    iget v0, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchPadding:I

    return v0
.end method

.method public getTextOff()Ljava/lang/CharSequence;
    .locals 1

    .line 461
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTextOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextOn()Ljava/lang/CharSequence;
    .locals 1

    .line 446
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTextOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 420
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbTextPadding()I
    .locals 1

    .line 361
    iget v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbTextPadding:I

    return v0
.end method

.method public getTrackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 389
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 2

    .line 1011
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    .line 1012
    invoke-super {p0}, Landroid/widget/CompoundButton;->jumpDrawablesToCurrentState()V

    .line 1014
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1015
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1018
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1019
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1022
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mPositionAnimator:Landroid/view/animation/Animation;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mPositionAnimator:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1024
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->clearAnimation()V

    const/4 v0, 0x0

    .line 1025
    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mPositionAnimator:Landroid/view/animation/Animation;

    :cond_2
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 967
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 968
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 969
    sget-object v0, Landroid/support/v7/widget/SwitchCompat;->CHECKED_STATE_SET:[I

    invoke-static {p1, v0}, Landroid/support/v7/widget/SwitchCompat;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 864
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 866
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    .line 867
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 869
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_0

    .line 871
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 874
    :goto_0
    iget v2, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchTop:I

    .line 875
    iget v3, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchBottom:I

    .line 876
    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v4

    .line 877
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v0

    .line 879
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 881
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 884
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    if-eqz v0, :cond_2

    .line 887
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 890
    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->getTargetCheckedState()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/support/v7/widget/SwitchCompat;->mOnLayout:Landroid/text/Layout;

    goto :goto_1

    :cond_3
    iget-object v4, p0, Landroid/support/v7/widget/SwitchCompat;->mOffLayout:Landroid/text/Layout;

    :goto_1
    if-eqz v4, :cond_6

    .line 892
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getDrawableState()[I

    move-result-object v5

    .line 893
    iget-object v6, p0, Landroid/support/v7/widget/SwitchCompat;->mTextColors:Landroid/content/res/ColorStateList;

    if-eqz v6, :cond_4

    .line 894
    iget-object v7, p0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v6

    invoke-virtual {v7, v6}, Landroid/text/TextPaint;->setColor(I)V

    .line 896
    :cond_4
    iget-object v6, p0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    iput-object v5, v6, Landroid/text/TextPaint;->drawableState:[I

    if-eqz v0, :cond_5

    .line 900
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 901
    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v0

    goto :goto_2

    .line 903
    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getWidth()I

    move-result v5

    .line 906
    :goto_2
    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v4}, Landroid/text/Layout;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v5, v0

    add-int/2addr v2, v3

    .line 907
    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v4}, Landroid/text/Layout;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v2, v0

    int-to-float v0, v5

    int-to-float v2, v2

    .line 908
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 909
    invoke-virtual {v4, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 912
    :cond_6
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1033
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1034
    const-class v0, Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 1039
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    .line 1040
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1041
    const-class v0, Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1042
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTextOn:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTextOff:Ljava/lang/CharSequence;

    .line 1043
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1044
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1045
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1046
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1048
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1049
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1050
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 765
    invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V

    .line 769
    iget-object p1, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 770
    iget-object p1, p0, Landroid/support/v7/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    .line 771
    iget-object p2, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_0

    .line 772
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_0

    .line 774
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 783
    :cond_1
    :goto_0
    invoke-static {p0}, Landroid/support/v7/internal/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 784
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getPaddingLeft()I

    move-result p1

    add-int/lit8 p1, p1, 0x0

    .line 785
    iget p2, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchWidth:I

    add-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x0

    add-int/lit8 p2, p2, 0x0

    goto :goto_1

    .line 787
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    add-int/lit8 p2, p1, 0x0

    .line 788
    iget p1, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchWidth:I

    sub-int p1, p2, p1

    add-int/lit8 p1, p1, 0x0

    add-int/lit8 p1, p1, 0x0

    .line 793
    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getGravity()I

    move-result p3

    and-int/lit8 p3, p3, 0x70

    const/16 p4, 0x10

    if-eq p3, p4, :cond_4

    const/16 p4, 0x50

    if-eq p3, p4, :cond_3

    .line 796
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getPaddingTop()I

    move-result p3

    .line 797
    iget p4, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchHeight:I

    goto :goto_2

    .line 807
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getHeight()I

    move-result p3

    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getPaddingBottom()I

    move-result p4

    sub-int p4, p3, p4

    .line 808
    iget p3, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchHeight:I

    sub-int p3, p4, p3

    goto :goto_3

    .line 801
    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getPaddingTop()I

    move-result p3

    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getHeight()I

    move-result p4

    add-int/2addr p3, p4

    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getPaddingBottom()I

    move-result p4

    sub-int/2addr p3, p4

    div-int/lit8 p3, p3, 0x2

    iget p4, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchHeight:I

    div-int/lit8 p5, p4, 0x2

    sub-int/2addr p3, p5

    :goto_2
    add-int/2addr p4, p3

    .line 812
    :goto_3
    iput p1, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchLeft:I

    .line 813
    iput p3, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchTop:I

    .line 814
    iput p4, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchBottom:I

    .line 815
    iput p2, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchRight:I

    return-void
.end method

.method public onMeasure(II)V
    .locals 6

    .line 493
    iget-boolean v0, p0, Landroid/support/v7/widget/SwitchCompat;->mShowText:Z

    if-eqz v0, :cond_1

    .line 494
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mOnLayout:Landroid/text/Layout;

    if-nez v0, :cond_0

    .line 495
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTextOn:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SwitchCompat;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mOnLayout:Landroid/text/Layout;

    .line 498
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mOffLayout:Landroid/text/Layout;

    if-nez v0, :cond_1

    .line 499
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTextOff:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SwitchCompat;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mOffLayout:Landroid/text/Layout;

    .line 503
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    .line 506
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 508
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 509
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v3

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v3

    .line 510
    iget-object v3, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    goto :goto_0

    :cond_2
    move v1, v2

    move v3, v1

    .line 517
    :goto_0
    iget-boolean v4, p0, Landroid/support/v7/widget/SwitchCompat;->mShowText:Z

    if-eqz v4, :cond_3

    .line 518
    iget-object v4, p0, Landroid/support/v7/widget/SwitchCompat;->mOnLayout:Landroid/text/Layout;

    invoke-virtual {v4}, Landroid/text/Layout;->getWidth()I

    move-result v4

    iget-object v5, p0, Landroid/support/v7/widget/SwitchCompat;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbTextPadding:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    goto :goto_1

    :cond_3
    move v4, v2

    .line 524
    :goto_1
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbWidth:I

    .line 527
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    .line 528
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 529
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    goto :goto_2

    .line 531
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 537
    :goto_2
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 538
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 540
    iget v4, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchMinWidth:I

    iget v5, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbWidth:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v1

    add-int/2addr v5, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 542
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 543
    iput v0, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchWidth:I

    .line 544
    iput v1, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchHeight:I

    .line 546
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->onMeasure(II)V

    .line 548
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getMeasuredHeight()I

    move-result p1

    if-ge p1, v1, :cond_5

    .line 550
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getMeasuredWidthAndState(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, p1, v1}, Landroid/support/v7/widget/SwitchCompat;->setMeasuredDimension(II)V

    :cond_5
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 557
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 559
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTextOn:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTextOff:Ljava/lang/CharSequence;

    :goto_0
    if-eqz v0, :cond_1

    .line 561
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 593
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 594
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    const/4 v2, 0x2

    if-eq v0, v1, :cond_8

    if-eq v0, v2, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_8

    goto/16 :goto_1

    .line 608
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchMode:I

    if-eq v0, v1, :cond_6

    if-eq v0, v2, :cond_1

    goto/16 :goto_1

    .line 628
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 629
    invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->getThumbScrollRange()I

    move-result v0

    .line 630
    iget v2, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchX:F

    sub-float v2, p1, v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    int-to-float v0, v0

    div-float/2addr v2, v0

    goto :goto_0

    :cond_2
    cmpl-float v0, v2, v4

    if-lez v0, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    const/high16 v0, -0x40800000    # -1.0f

    move v2, v0

    .line 639
    :goto_0
    invoke-static {p0}, Landroid/support/v7/internal/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    neg-float v2, v2

    .line 642
    :cond_4
    iget v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbPosition:F

    add-float/2addr v0, v2

    invoke-static {v0, v4, v3}, Landroid/support/v7/widget/SwitchCompat;->constrain(FFF)F

    move-result v0

    .line 643
    iget v2, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbPosition:F

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_5

    .line 644
    iput p1, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchX:F

    .line 645
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SwitchCompat;->setThumbPosition(F)V

    :cond_5
    return v1

    .line 614
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 615
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 616
    iget v4, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchX:F

    sub-float v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_7

    iget v4, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchY:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_b

    .line 618
    :cond_7
    iput v2, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchMode:I

    .line 619
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 620
    iput v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchX:F

    .line 621
    iput v3, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchY:F

    return v1

    .line 655
    :cond_8
    iget v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchMode:I

    if-ne v0, v2, :cond_9

    .line 656
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SwitchCompat;->stopDrag(Landroid/view/MotionEvent;)V

    .line 658
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v1

    :cond_9
    const/4 v0, 0x0

    .line 661
    iput v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchMode:I

    .line 662
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1

    .line 597
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 598
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 599
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/SwitchCompat;->hitThumb(FF)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 600
    iput v1, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchMode:I

    .line 601
    iput v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchX:F

    .line 602
    iput v2, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchY:F

    .line 667
    :cond_b
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setChecked(Z)V
    .locals 1

    .line 748
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 752
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result p1

    .line 754
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 755
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SwitchCompat;->animateThumbToCheckedState(Z)V

    goto :goto_1

    .line 758
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->cancelPositionAnimator()V

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 759
    :goto_0
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SwitchCompat;->setThumbPosition(F)V

    :goto_1
    return-void
.end method

.method public setShowText(Z)V
    .locals 1

    .line 478
    iget-boolean v0, p0, Landroid/support/v7/widget/SwitchCompat;->mShowText:Z

    if-eq v0, p1, :cond_0

    .line 479
    iput-boolean p1, p0, Landroid/support/v7/widget/SwitchCompat;->mShowText:Z

    .line 480
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setSplitTrack(Z)V
    .locals 0

    .line 431
    iput-boolean p1, p0, Landroid/support/v7/widget/SwitchCompat;->mSplitTrack:Z

    .line 432
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->invalidate()V

    return-void
.end method

.method public setSwitchMinWidth(I)V
    .locals 0

    .line 331
    iput p1, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchMinWidth:I

    .line 332
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V

    return-void
.end method

.method public setSwitchPadding(I)V
    .locals 0

    .line 311
    iput p1, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchPadding:I

    .line 312
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V

    return-void
.end method

.method public setSwitchTextAppearance(Landroid/content/Context;I)V
    .locals 2

    .line 231
    sget-object v0, Landroid/support/v7/widget/SwitchCompat;->TEXT_APPEARANCE_ATTRS:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 236
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 238
    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTextColors:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 241
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTextColors:Landroid/content/res/ColorStateList;

    :goto_0
    const/4 v0, 0x1

    .line 244
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-eqz v0, :cond_1

    int-to-float v0, v0

    .line 246
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    .line 247
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 248
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V

    :cond_1
    const/4 v0, 0x2

    .line 252
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 254
    new-instance p2, Landroid/support/v7/internal/text/AllCapsTransformationMethod;

    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/support/v7/internal/text/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod;

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    .line 256
    iput-object p2, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod;

    .line 259
    :goto_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 297
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 298
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 300
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V

    .line 301
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->invalidate()V

    :cond_0
    return-void
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-lez p2, :cond_4

    if-nez p1, :cond_0

    .line 271
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    .line 273
    :cond_0
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 276
    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SwitchCompat;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    if-eqz p1, :cond_1

    .line 278
    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result p1

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    not-int p1, p1

    and-int/2addr p1, p2

    .line 280
    iget-object p2, p0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 281
    iget-object p2, p0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    const/high16 v0, -0x41800000    # -0.25f

    :cond_3
    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    goto :goto_2

    .line 283
    :cond_4
    iget-object p2, p0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 284
    iget-object p2, p0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 285
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SwitchCompat;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    :goto_2
    return-void
.end method

.method public setTextOff(Ljava/lang/CharSequence;)V
    .locals 0

    .line 468
    iput-object p1, p0, Landroid/support/v7/widget/SwitchCompat;->mTextOff:Ljava/lang/CharSequence;

    .line 469
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V

    return-void
.end method

.method public setTextOn(Ljava/lang/CharSequence;)V
    .locals 0

    .line 453
    iput-object p1, p0, Landroid/support/v7/widget/SwitchCompat;->mTextOn:Ljava/lang/CharSequence;

    .line 454
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V

    return-void
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 399
    iput-object p1, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 400
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V

    return-void
.end method

.method public setThumbResource(I)V
    .locals 1

    .line 410
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTintManager:Landroid/support/v7/internal/widget/TintManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/TintManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SwitchCompat;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setThumbTextPadding(I)V
    .locals 0

    .line 351
    iput p1, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbTextPadding:I

    .line 352
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V

    return-void
.end method

.method public setTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 370
    iput-object p1, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 371
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V

    return-void
.end method

.method public setTrackResource(I)V
    .locals 1

    .line 380
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTintManager:Landroid/support/v7/internal/widget/TintManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/TintManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SwitchCompat;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public toggle()V
    .locals 1

    .line 743
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 1006
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

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
