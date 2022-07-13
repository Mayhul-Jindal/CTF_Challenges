.class public Landroid/support/v7/widget/LinearLayoutCompat;
.super Landroid/view/ViewGroup;
.source "LinearLayoutCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;,
        Landroid/support/v7/widget/LinearLayoutCompat$DividerMode;,
        Landroid/support/v7/widget/LinearLayoutCompat$OrientationMode;
    }
.end annotation


# static fields
.field public static final HORIZONTAL:I = 0x0

.field private static final INDEX_BOTTOM:I = 0x2

.field private static final INDEX_CENTER_VERTICAL:I = 0x0

.field private static final INDEX_FILL:I = 0x3

.field private static final INDEX_TOP:I = 0x1

.field public static final SHOW_DIVIDER_BEGINNING:I = 0x1

.field public static final SHOW_DIVIDER_END:I = 0x4

.field public static final SHOW_DIVIDER_MIDDLE:I = 0x2

.field public static final SHOW_DIVIDER_NONE:I = 0x0

.field public static final VERTICAL:I = 0x1

.field private static final VERTICAL_GRAVITY_COUNT:I = 0x4


# instance fields
.field private mBaselineAligned:Z

.field private mBaselineAlignedChildIndex:I

.field private mBaselineChildTop:I

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mDividerPadding:I

.field private mDividerWidth:I

.field private mGravity:I

.field private mMaxAscent:[I

.field private mMaxDescent:[I

.field private mOrientation:I

.field private mShowDividers:I

.field private mTotalLength:I

.field private mUseLargestChild:Z

.field private mWeightSum:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 142
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 146
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 150
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 97
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAligned:Z

    const/4 v1, -0x1

    .line 106
    iput v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    const/4 v2, 0x0

    .line 113
    iput v2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineChildTop:I

    const v3, 0x800033

    .line 117
    iput v3, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    .line 152
    sget-object v3, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat:[I

    invoke-static {p1, p2, v3, p3, v2}, Landroid/support/v7/internal/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/internal/widget/TintTypedArray;

    move-result-object p1

    .line 155
    sget p2, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_android_orientation:I

    invoke-virtual {p1, p2, v1}, Landroid/support/v7/internal/widget/TintTypedArray;->getInt(II)I

    move-result p2

    if-ltz p2, :cond_0

    .line 157
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->setOrientation(I)V

    .line 160
    :cond_0
    sget p2, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_android_gravity:I

    invoke-virtual {p1, p2, v1}, Landroid/support/v7/internal/widget/TintTypedArray;->getInt(II)I

    move-result p2

    if-ltz p2, :cond_1

    .line 162
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->setGravity(I)V

    .line 165
    :cond_1
    sget p2, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_android_baselineAligned:I

    invoke-virtual {p1, p2, v0}, Landroid/support/v7/internal/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p2

    if-nez p2, :cond_2

    .line 167
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->setBaselineAligned(Z)V

    .line 170
    :cond_2
    sget p2, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_android_weightSum:I

    const/high16 p3, -0x40800000    # -1.0f

    invoke-virtual {p1, p2, p3}, Landroid/support/v7/internal/widget/TintTypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mWeightSum:F

    .line 172
    sget p2, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_android_baselineAlignedChildIndex:I

    invoke-virtual {p1, p2, v1}, Landroid/support/v7/internal/widget/TintTypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 175
    sget p2, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_measureWithLargestChild:I

    invoke-virtual {p1, p2, v2}, Landroid/support/v7/internal/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mUseLargestChild:Z

    .line 177
    sget p2, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_divider:I

    invoke-virtual {p1, p2}, Landroid/support/v7/internal/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 178
    sget p2, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_showDividers:I

    invoke-virtual {p1, p2, v2}, Landroid/support/v7/internal/widget/TintTypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mShowDividers:I

    .line 179
    sget p2, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_dividerPadding:I

    invoke-virtual {p1, p2, v2}, Landroid/support/v7/internal/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerPadding:I

    .line 181
    invoke-virtual {p1}, Landroid/support/v7/internal/widget/TintTypedArray;->recycle()V

    return-void
.end method

.method private forceUniformHeight(II)V
    .locals 10

    .line 1313
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 1316
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1317
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_0

    .line 1318
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 1320
    iget v2, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 1323
    iget v9, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 1324
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iput v2, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, p2

    move v6, v0

    .line 1327
    invoke-virtual/range {v2 .. v7}, Landroid/support/v7/widget/LinearLayoutCompat;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1328
    iput v9, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private forceUniformWidth(II)V
    .locals 10

    .line 890
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 893
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 894
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_0

    .line 895
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 897
    iget v2, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 900
    iget v9, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 901
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, v0

    move v6, p2

    .line 904
    invoke-virtual/range {v2 .. v7}, Landroid/support/v7/widget/LinearLayoutCompat;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 905
    iput v9, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setChildFrame(Landroid/view/View;IIII)V
    .locals 0

    add-int/2addr p4, p2

    add-int/2addr p5, p3

    .line 1641
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1737
    instance-of p1, p1, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    return p1
.end method

.method drawDividersHorizontal(Landroid/graphics/Canvas;)V
    .locals 6

    .line 318
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v0

    .line 319
    invoke-static {p0}, Landroid/support/v7/internal/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 321
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 323
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    .line 324
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 325
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    if-eqz v1, :cond_0

    .line 328
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    goto :goto_1

    .line 330
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget v4, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    sub-int/2addr v3, v4

    .line 332
    :goto_1
    invoke-virtual {p0, p1, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 337
    :cond_2
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_6

    add-int/lit8 v0, v0, -0x1

    .line 338
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_4

    if-eqz v1, :cond_3

    .line 342
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v0

    goto :goto_3

    .line 344
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    goto :goto_2

    .line 347
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    if-eqz v1, :cond_5

    .line 349
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    :goto_2
    sub-int/2addr v0, v1

    goto :goto_3

    .line 351
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget v1, v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    .line 354
    :goto_3
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    :cond_6
    return-void
.end method

.method drawDividersVertical(Landroid/graphics/Canvas;)V
    .locals 5

    .line 291
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 293
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 295
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 296
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 297
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 298
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    sub-int/2addr v2, v3

    .line 299
    invoke-virtual {p0, p1, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 304
    :cond_1
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, -0x1

    .line 305
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    .line 308
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    sub-int/2addr v0, v1

    goto :goto_1

    .line 310
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 311
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    .line 313
    :goto_1
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    :cond_3
    return-void
.end method

.method drawHorizontalDivider(Landroid/graphics/Canvas;I)V
    .locals 4

    .line 359
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerPadding:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerPadding:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v3, p2

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 361
    iget-object p2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method drawVerticalDivider(Landroid/graphics/Canvas;I)V
    .locals 5

    .line 365
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerPadding:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v2, p2

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerPadding:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 367
    iget-object p2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .locals 3

    .line 1720
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v1, -0x2

    if-nez v0, :cond_0

    .line 1721
    new-instance v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    return-object v0

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1723
    new-instance v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 56
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->generateDefaultLayoutParams()Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .locals 2

    .line 1707
    new-instance v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .locals 1

    .line 1730
    new-instance v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public getBaseline()I
    .locals 5

    .line 419
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    if-gez v0, :cond_0

    .line 420
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    return v0

    .line 423
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildCount()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    if-le v0, v1, :cond_6

    .line 428
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 429
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 432
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    if-nez v0, :cond_1

    return v2

    .line 438
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 448
    :cond_2
    iget v2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineChildTop:I

    .line 450
    iget v3, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 451
    iget v3, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v3, v3, 0x70

    const/16 v4, 0x30

    if-eq v3, v4, :cond_5

    const/16 v4, 0x10

    if-eq v3, v4, :cond_4

    const/16 v4, 0x50

    if-eq v3, v4, :cond_3

    goto :goto_0

    .line 455
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v2, v3

    goto :goto_0

    .line 459
    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 466
    :cond_5
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 467
    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v2, v0

    add-int/2addr v2, v1

    return v2

    .line 424
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBaselineAlignedChildIndex()I
    .locals 1

    .line 476
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    return v0
.end method

.method getChildrenSkipCount(Landroid/view/View;I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getDividerDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 218
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerPadding()I
    .locals 1

    .line 265
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerPadding:I

    return v0
.end method

.method public getDividerWidth()I
    .locals 1

    .line 274
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    return v0
.end method

.method getLocationOffset(Landroid/view/View;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method getNextLocationOffset(Landroid/view/View;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getOrientation()I
    .locals 1

    .line 1663
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    return v0
.end method

.method public getShowDividers()I
    .locals 1

    .line 209
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mShowDividers:I

    return v0
.end method

.method getVirtualChildAt(I)Landroid/view/View;
    .locals 0

    .line 501
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method getVirtualChildCount()I
    .locals 1

    .line 514
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getWeightSum()F
    .locals 1

    .line 525
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mWeightSum:F

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 562
    iget p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mShowDividers:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_0

    move v0, v1

    :cond_0
    return v0

    .line 563
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildCount()I

    move-result v2

    if-ne p1, v2, :cond_3

    .line 564
    iget p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mShowDividers:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_2

    move v0, v1

    :cond_2
    return v0

    .line 565
    :cond_3
    iget v2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mShowDividers:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_5

    sub-int/2addr p1, v1

    :goto_0
    if-ltz p1, :cond_5

    .line 568
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_5
    :goto_1
    return v0
.end method

.method public isBaselineAligned()Z
    .locals 1

    .line 377
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAligned:Z

    return v0
.end method

.method public isMeasureWithLargestChildEnabled()Z
    .locals 1

    .line 400
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mUseLargestChild:Z

    return v0
.end method

.method layoutHorizontal(IIII)V
    .locals 24

    move-object/from16 v6, p0

    .line 1517
    invoke-static/range {p0 .. p0}, Landroid/support/v7/internal/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    .line 1518
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v7

    sub-int v1, p4, p2

    .line 1525
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v2

    sub-int v8, v1, v2

    sub-int/2addr v1, v7

    .line 1528
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v2

    sub-int v9, v1, v2

    .line 1530
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v10

    .line 1532
    iget v1, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    const v2, 0x800007

    and-int/2addr v2, v1

    and-int/lit8 v11, v1, 0x70

    .line 1535
    iget-boolean v12, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAligned:Z

    .line 1537
    iget-object v13, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxAscent:[I

    .line 1538
    iget-object v14, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxDescent:[I

    .line 1540
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    .line 1541
    invoke-static {v2, v1}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v1

    const/4 v15, 0x2

    const/4 v5, 0x1

    if-eq v1, v5, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 1554
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v1

    goto :goto_0

    .line 1544
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v1

    add-int v1, v1, p3

    sub-int v1, v1, p1

    iget v2, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v1, v2

    goto :goto_0

    .line 1549
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v1

    sub-int v2, p3, p1

    iget v3, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v2, v3

    div-int/2addr v2, v15

    add-int/2addr v1, v2

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    add-int/lit8 v0, v10, -0x1

    move/from16 v16, v0

    const/16 v17, -0x1

    goto :goto_1

    :cond_2
    move/from16 v16, v2

    move/from16 v17, v5

    :goto_1
    move v3, v2

    :goto_2
    if-ge v3, v10, :cond_d

    mul-int v0, v17, v3

    add-int v2, v16, v0

    .line 1568
    invoke-virtual {v6, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1571
    invoke-virtual {v6, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v0

    add-int/2addr v1, v0

    move/from16 v21, v5

    move/from16 v22, v7

    move/from16 v19, v10

    move/from16 v20, v11

    goto/16 :goto_6

    .line 1572
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v15, 0x8

    if-eq v5, v15, :cond_c

    .line 1573
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    .line 1574
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 1577
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    move-object/from16 v4, v18

    check-cast v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    move/from16 v18, v3

    if-eqz v12, :cond_4

    .line 1580
    iget v3, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    move/from16 v19, v10

    const/4 v10, -0x1

    if-eq v3, v10, :cond_5

    .line 1581
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v10

    goto :goto_3

    :cond_4
    move/from16 v19, v10

    :cond_5
    const/4 v10, -0x1

    .line 1584
    :goto_3
    iget v3, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    if-gez v3, :cond_6

    move v3, v11

    :cond_6
    and-int/lit8 v3, v3, 0x70

    move/from16 v20, v11

    const/16 v11, 0x10

    if-eq v3, v11, :cond_a

    const/16 v11, 0x30

    if-eq v3, v11, :cond_8

    const/16 v11, 0x50

    if-eq v3, v11, :cond_7

    move v3, v7

    const/4 v11, -0x1

    goto :goto_4

    :cond_7
    sub-int v3, v8, v5

    .line 1614
    iget v11, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    sub-int/2addr v3, v11

    const/4 v11, -0x1

    if-eq v10, v11, :cond_9

    .line 1616
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    sub-int v21, v21, v10

    const/4 v10, 0x2

    .line 1617
    aget v22, v14, v10

    sub-int v22, v22, v21

    sub-int v3, v3, v22

    goto :goto_4

    :cond_8
    const/4 v11, -0x1

    .line 1591
    iget v3, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v3, v7

    if-eq v10, v11, :cond_9

    const/16 v21, 0x1

    .line 1593
    aget v22, v13, v21

    sub-int v22, v22, v10

    add-int v3, v3, v22

    goto :goto_5

    :cond_9
    :goto_4
    const/16 v21, 0x1

    goto :goto_5

    :cond_a
    const/4 v11, -0x1

    const/16 v21, 0x1

    sub-int v3, v9, v5

    const/4 v10, 0x2

    .line 1609
    div-int/2addr v3, v10

    add-int/2addr v3, v7

    iget v10, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v3, v10

    iget v10, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    sub-int/2addr v3, v10

    .line 1625
    :goto_5
    invoke-virtual {v6, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 1626
    iget v10, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v1, v10

    .line 1629
    :cond_b
    iget v10, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v10, v1

    .line 1630
    invoke-virtual {v6, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->getLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int v22, v10, v1

    move-object v1, v0

    move-object/from16 v0, p0

    move-object/from16 p1, v1

    move v11, v2

    move/from16 v2, v22

    move/from16 v22, v7

    const/16 v23, -0x1

    move-object v7, v4

    move v4, v15

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/LinearLayoutCompat;->setChildFrame(Landroid/view/View;IIII)V

    .line 1632
    iget v0, v7, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v15, v0

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int/2addr v15, v1

    add-int/2addr v10, v15

    .line 1635
    invoke-virtual {v6, v0, v11}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v0

    add-int v3, v18, v0

    move v1, v10

    goto :goto_7

    :cond_c
    move/from16 v18, v3

    move/from16 v22, v7

    move/from16 v19, v10

    move/from16 v20, v11

    const/16 v21, 0x1

    :goto_6
    const/16 v23, -0x1

    :goto_7
    add-int/lit8 v3, v3, 0x1

    move/from16 v10, v19

    move/from16 v11, v20

    move/from16 v5, v21

    move/from16 v7, v22

    const/4 v15, 0x2

    goto/16 :goto_2

    :cond_d
    return-void
.end method

.method layoutVertical(IIII)V
    .locals 17

    move-object/from16 v6, p0

    .line 1422
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v7

    sub-int v0, p3, p1

    .line 1429
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v1

    sub-int v8, v0, v1

    sub-int/2addr v0, v7

    .line 1432
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v1

    sub-int v9, v0, v1

    .line 1434
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v10

    .line 1436
    iget v0, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v1, v0, 0x70

    const v2, 0x800007

    and-int v11, v0, v2

    const/16 v0, 0x10

    if-eq v1, v0, :cond_1

    const/16 v0, 0x50

    if-eq v1, v0, :cond_0

    .line 1452
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v0

    goto :goto_0

    .line 1442
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v0

    add-int v0, v0, p4

    sub-int v0, v0, p2

    iget v1, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 1447
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v0

    sub-int v1, p4, p2

    iget v2, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    :goto_0
    const/4 v1, 0x0

    move v12, v1

    :goto_1
    if-ge v12, v10, :cond_8

    .line 1457
    invoke-virtual {v6, v12}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x1

    if-nez v13, :cond_2

    .line 1459
    invoke-virtual {v6, v12}, Landroid/support/v7/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v1

    add-int/2addr v0, v1

    goto/16 :goto_4

    .line 1460
    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_7

    .line 1461
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 1462
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    .line 1464
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 1467
    iget v1, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    if-gez v1, :cond_3

    move v1, v11

    .line 1471
    :cond_3
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    .line 1472
    invoke-static {v1, v2}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    if-eq v1, v14, :cond_5

    const/4 v2, 0x5

    if-eq v1, v2, :cond_4

    .line 1486
    iget v1, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v1, v7

    goto :goto_3

    :cond_4
    sub-int v1, v8, v4

    .line 1481
    iget v2, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    goto :goto_2

    :cond_5
    sub-int v1, v9, v4

    .line 1476
    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v7

    iget v2, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    :goto_2
    sub-int/2addr v1, v2

    :goto_3
    move v2, v1

    .line 1490
    invoke-virtual {v6, v12}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1491
    iget v1, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v0, v1

    .line 1494
    :cond_6
    iget v1, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int v16, v0, v1

    .line 1495
    invoke-virtual {v6, v13}, Landroid/support/v7/widget/LinearLayoutCompat;->getLocationOffset(Landroid/view/View;)I

    move-result v0

    add-int v3, v16, v0

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v14, v5

    move v5, v15

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/LinearLayoutCompat;->setChildFrame(Landroid/view/View;IIII)V

    .line 1497
    iget v0, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v15, v0

    invoke-virtual {v6, v13}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v0

    add-int/2addr v15, v0

    add-int v16, v16, v15

    .line 1499
    invoke-virtual {v6, v13, v12}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v0

    add-int/2addr v12, v0

    move/from16 v0, v16

    const/4 v1, 0x1

    goto :goto_5

    :cond_7
    :goto_4
    move v1, v14

    :goto_5
    add-int/2addr v12, v1

    goto/16 :goto_1

    :cond_8
    return-void
.end method

.method measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 1373
    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/LinearLayoutCompat;->measureChildWithMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method measureHorizontal(II)V
    .locals 36

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    const/4 v10, 0x0

    .line 923
    iput v10, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 931
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v11

    .line 933
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 934
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 939
    iget-object v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxAscent:[I

    const/4 v14, 0x4

    if-eqz v0, :cond_0

    iget-object v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxDescent:[I

    if-nez v0, :cond_1

    :cond_0
    new-array v0, v14, [I

    .line 940
    iput-object v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxAscent:[I

    new-array v0, v14, [I

    .line 941
    iput-object v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxDescent:[I

    .line 944
    :cond_1
    iget-object v15, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxAscent:[I

    .line 945
    iget-object v6, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxDescent:[I

    const/16 v16, 0x3

    const/4 v5, -0x1

    .line 947
    aput v5, v15, v16

    const/16 v17, 0x2

    aput v5, v15, v17

    const/16 v18, 0x1

    aput v5, v15, v18

    aput v5, v15, v10

    .line 948
    aput v5, v6, v16

    aput v5, v6, v17

    aput v5, v6, v18

    aput v5, v6, v10

    .line 950
    iget-boolean v4, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAligned:Z

    .line 951
    iget-boolean v3, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mUseLargestChild:Z

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v12, v2, :cond_2

    move/from16 v19, v18

    goto :goto_0

    :cond_2
    move/from16 v19, v10

    :goto_0
    const/16 v20, 0x0

    move v0, v10

    move/from16 v22, v0

    move/from16 v23, v22

    move/from16 v24, v23

    move/from16 v25, v24

    move/from16 v26, v25

    move/from16 v28, v26

    move/from16 v27, v18

    move/from16 v21, v20

    const/high16 v14, -0x80000000

    :goto_1
    move-object/from16 v29, v6

    const/16 v1, 0x8

    if-ge v0, v11, :cond_15

    .line 959
    invoke-virtual {v7, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_3

    .line 962
    iget v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v7, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v6

    add-int/2addr v1, v6

    iput v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    :goto_2
    move v1, v0

    move v0, v2

    move/from16 v32, v3

    move/from16 v35, v4

    goto/16 :goto_f

    .line 966
    :cond_3
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-ne v5, v1, :cond_4

    .line 967
    invoke-virtual {v7, v6, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_2

    .line 971
    :cond_4
    invoke-virtual {v7, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 972
    iget v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    iget v5, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v1, v5

    iput v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 975
    :cond_5
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 978
    iget v1, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    add-float v21, v21, v1

    if-ne v12, v2, :cond_8

    .line 980
    iget v1, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    if-nez v1, :cond_8

    iget v1, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v1, v1, v20

    if-lez v1, :cond_8

    if-eqz v19, :cond_6

    .line 985
    iget v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    iget v2, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    iget v10, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v2, v10

    add-int/2addr v1, v2

    iput v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_3

    .line 987
    :cond_6
    iget v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 988
    iget v2, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v2, v1

    iget v10, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v2, v10

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    :goto_3
    if-eqz v4, :cond_7

    const/4 v1, 0x0

    .line 998
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 999
    invoke-virtual {v6, v2, v2}, Landroid/view/View;->measure(II)V

    move/from16 v34, v0

    move/from16 v32, v3

    move/from16 v35, v4

    move-object v9, v5

    move-object v3, v6

    const/16 v31, -0x2

    goto/16 :goto_7

    :cond_7
    move/from16 v34, v0

    move/from16 v32, v3

    move/from16 v35, v4

    move-object v9, v5

    move-object v3, v6

    move/from16 v25, v18

    const/high16 v0, 0x40000000    # 2.0f

    const/16 v31, -0x2

    goto/16 :goto_8

    .line 1006
    :cond_8
    iget v1, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    if-nez v1, :cond_9

    iget v1, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v1, v1, v20

    if-lez v1, :cond_9

    const/4 v10, -0x2

    .line 1012
    iput v10, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/4 v2, 0x0

    goto :goto_4

    :cond_9
    const/4 v10, -0x2

    const/high16 v2, -0x80000000

    :goto_4
    cmpl-float v1, v21, v20

    if-nez v1, :cond_a

    .line 1019
    iget v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v31, v1

    goto :goto_5

    :cond_a
    const/16 v31, 0x0

    :goto_5
    const/16 v33, 0x0

    move v1, v0

    move-object/from16 v0, p0

    move/from16 v34, v1

    const/high16 v10, -0x80000000

    move-object v1, v6

    move v10, v2

    move/from16 v2, v34

    move/from16 v32, v3

    move/from16 v3, p1

    move/from16 v35, v4

    move/from16 v4, v31

    move-object v9, v5

    move/from16 v5, p2

    move-object/from16 v30, v6

    const/16 v31, -0x2

    move/from16 v6, v33

    invoke-virtual/range {v0 .. v6}, Landroid/support/v7/widget/LinearLayoutCompat;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    const/high16 v0, -0x80000000

    if-eq v10, v0, :cond_b

    .line 1024
    iput v10, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 1027
    :cond_b
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-eqz v19, :cond_c

    .line 1029
    iget v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    iget v2, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v2, v0

    iget v3, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    move-object/from16 v3, v30

    invoke-virtual {v7, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v1, v2

    iput v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_6

    :cond_c
    move-object/from16 v3, v30

    .line 1032
    iget v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    add-int v2, v1, v0

    .line 1033
    iget v4, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v2, v4

    iget v4, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v2, v4

    invoke-virtual {v7, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    :goto_6
    if-eqz v32, :cond_d

    .line 1038
    invoke-static {v0, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    :cond_d
    :goto_7
    const/high16 v0, 0x40000000    # 2.0f

    :goto_8
    if-eq v13, v0, :cond_e

    .line 1043
    iget v1, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_e

    move/from16 v1, v18

    move/from16 v28, v1

    goto :goto_9

    :cond_e
    const/4 v1, 0x0

    .line 1051
    :goto_9
    iget v2, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    iget v4, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v4

    .line 1052
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v2

    .line 1053
    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v5

    move/from16 v10, v26

    invoke-static {v10, v5}, Landroid/support/v7/internal/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v26

    if-eqz v35, :cond_10

    .line 1057
    invoke-virtual {v3}, Landroid/view/View;->getBaseline()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_10

    .line 1061
    iget v6, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    if-gez v6, :cond_f

    iget v6, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    goto :goto_a

    :cond_f
    iget v6, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    :goto_a
    and-int/lit8 v6, v6, 0x70

    const/4 v10, 0x4

    shr-int/2addr v6, v10

    and-int/lit8 v6, v6, -0x2

    shr-int/lit8 v6, v6, 0x1

    .line 1066
    aget v10, v15, v6

    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v10

    aput v10, v15, v6

    .line 1067
    aget v10, v29, v6

    sub-int v5, v4, v5

    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    aput v5, v29, v6

    :cond_10
    move/from16 v5, v22

    .line 1071
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v22

    if-eqz v27, :cond_11

    .line 1073
    iget v5, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_11

    move/from16 v27, v18

    goto :goto_b

    :cond_11
    const/16 v27, 0x0

    .line 1074
    :goto_b
    iget v5, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v5, v5, v20

    if-lez v5, :cond_13

    if-eqz v1, :cond_12

    goto :goto_c

    :cond_12
    move v2, v4

    :goto_c
    move/from16 v6, v24

    .line 1079
    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v24

    goto :goto_e

    :cond_13
    move/from16 v6, v24

    if-eqz v1, :cond_14

    goto :goto_d

    :cond_14
    move v2, v4

    :goto_d
    move/from16 v4, v23

    .line 1082
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v23

    move/from16 v24, v6

    :goto_e
    move/from16 v10, v34

    .line 1086
    invoke-virtual {v7, v3, v10}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v1

    add-int/2addr v1, v10

    :goto_f
    add-int/lit8 v1, v1, 0x1

    move/from16 v9, p2

    move v2, v0

    move v0, v1

    move-object/from16 v6, v29

    move/from16 v3, v32

    move/from16 v4, v35

    const/4 v5, -0x1

    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_15
    move v0, v2

    move/from16 v32, v3

    move/from16 v35, v4

    move/from16 v5, v22

    move/from16 v4, v23

    move/from16 v6, v24

    move/from16 v10, v26

    const/16 v31, -0x2

    .line 1089
    iget v2, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    if-lez v2, :cond_16

    invoke-virtual {v7, v11}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1090
    iget v2, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    iget v3, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v2, v3

    iput v2, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1095
    :cond_16
    aget v2, v15, v18

    const/4 v3, -0x1

    if-ne v2, v3, :cond_18

    const/4 v2, 0x0

    aget v9, v15, v2

    if-ne v9, v3, :cond_18

    aget v2, v15, v17

    if-ne v2, v3, :cond_18

    aget v2, v15, v16

    if-eq v2, v3, :cond_17

    goto :goto_10

    :cond_17
    move v0, v5

    goto :goto_11

    .line 1099
    :cond_18
    :goto_10
    aget v2, v15, v16

    const/4 v3, 0x0

    aget v9, v15, v3

    aget v0, v15, v18

    aget v1, v15, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1102
    aget v1, v29, v16

    aget v2, v29, v3

    aget v3, v29, v18

    aget v9, v29, v17

    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1105
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_11
    if-eqz v32, :cond_1d

    const/high16 v1, -0x80000000

    if-eq v12, v1, :cond_19

    if-nez v12, :cond_1d

    :cond_19
    const/4 v1, 0x0

    .line 1110
    iput v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v11, :cond_1d

    .line 1113
    invoke-virtual {v7, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1a

    .line 1116
    iget v2, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v7, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_13

    .line 1120
    :cond_1a
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-ne v3, v5, :cond_1b

    .line 1121
    invoke-virtual {v7, v2, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v2

    add-int/2addr v1, v2

    :goto_13
    move/from16 v23, v0

    goto :goto_14

    .line 1125
    :cond_1b
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    if-eqz v19, :cond_1c

    .line 1128
    iget v5, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    iget v9, v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v9, v14

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v9, v3

    invoke-virtual {v7, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v2

    add-int/2addr v9, v2

    add-int/2addr v5, v9

    iput v5, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_13

    .line 1131
    :cond_1c
    iget v5, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    add-int v9, v5, v14

    move/from16 v23, v0

    .line 1132
    iget v0, v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v9, v0

    iget v0, v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v9, v0

    invoke-virtual {v7, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v0

    add-int/2addr v9, v0

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    :goto_14
    add-int/lit8 v1, v1, 0x1

    move/from16 v0, v23

    goto :goto_12

    :cond_1d
    move/from16 v23, v0

    .line 1139
    iget v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1144
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    .line 1147
    invoke-static {v0, v8, v1}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v0

    const v1, 0xffffff

    and-int/2addr v1, v0

    .line 1153
    iget v2, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v1, v2

    if-nez v25, :cond_22

    if-eqz v1, :cond_1e

    cmpl-float v3, v21, v20

    if-lez v3, :cond_1e

    goto :goto_17

    .line 1265
    :cond_1e
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-eqz v32, :cond_21

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v12, v3, :cond_21

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v11, :cond_21

    .line 1271
    invoke-virtual {v7, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_20

    .line 1273
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1f

    goto :goto_16

    .line 1277
    :cond_1f
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 1280
    iget v5, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v5, v5, v20

    if-lez v5, :cond_20

    const/high16 v5, 0x40000000    # 2.0f

    .line 1282
    invoke-static {v14, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-static {v9, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v4, v6, v9}, Landroid/view/View;->measure(II)V

    :cond_20
    :goto_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_21
    move/from16 v8, p2

    move v4, v1

    move/from16 v26, v10

    move/from16 v25, v11

    move/from16 v1, v23

    goto/16 :goto_26

    .line 1155
    :cond_22
    :goto_17
    iget v3, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mWeightSum:F

    cmpl-float v5, v3, v20

    if-lez v5, :cond_23

    move/from16 v21, v3

    :cond_23
    const/4 v3, -0x1

    .line 1157
    aput v3, v15, v16

    aput v3, v15, v17

    aput v3, v15, v18

    const/4 v5, 0x0

    aput v3, v15, v5

    .line 1158
    aput v3, v29, v16

    aput v3, v29, v17

    aput v3, v29, v18

    aput v3, v29, v5

    .line 1161
    iput v5, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move v5, v3

    const/4 v6, 0x0

    :goto_18
    if-ge v6, v11, :cond_32

    .line 1164
    invoke-virtual {v7, v6}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_31

    .line 1166
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v14

    const/16 v3, 0x8

    if-ne v14, v3, :cond_24

    goto/16 :goto_22

    .line 1170
    :cond_24
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 1173
    iget v3, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v23, v3, v20

    if-lez v23, :cond_29

    int-to-float v2, v1

    mul-float/2addr v2, v3

    div-float v2, v2, v21

    float-to-int v2, v2

    sub-float v21, v21, v3

    sub-int/2addr v1, v2

    .line 1180
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v24

    add-int v3, v3, v24

    move/from16 v24, v1

    iget v1, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v3, v1

    iget v1, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v1

    iget v1, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    move/from16 v8, p2

    move/from16 v25, v11

    const/4 v11, -0x1

    invoke-static {v8, v3, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildMeasureSpec(III)I

    move-result v1

    .line 1187
    iget v3, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    if-nez v3, :cond_27

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v12, v3, :cond_25

    goto :goto_1a

    :cond_25
    if-lez v2, :cond_26

    goto :goto_19

    :cond_26
    const/4 v2, 0x0

    .line 1200
    :goto_19
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v9, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_1b

    :cond_27
    const/high16 v3, 0x40000000    # 2.0f

    .line 1190
    :goto_1a
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    add-int v2, v26, v2

    if-gez v2, :cond_28

    const/4 v2, 0x0

    .line 1195
    :cond_28
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v9, v2, v1}, Landroid/view/View;->measure(II)V

    .line 1206
    :goto_1b
    invoke-static {v9}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v1

    const/high16 v2, -0x1000000

    and-int/2addr v1, v2

    invoke-static {v10, v1}, Landroid/support/v7/internal/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v10

    move/from16 v1, v24

    goto :goto_1c

    :cond_29
    move/from16 v8, p2

    move/from16 v25, v11

    const/4 v11, -0x1

    :goto_1c
    if-eqz v19, :cond_2a

    .line 1211
    iget v2, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget v11, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v3, v11

    iget v11, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v3, v11

    invoke-virtual {v7, v9}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v11

    add-int/2addr v3, v11

    add-int/2addr v2, v3

    iput v2, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_1d

    .line 1214
    :cond_2a
    iget v2, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1215
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v2

    iget v11, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v3, v11

    iget v11, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v3, v11

    invoke-virtual {v7, v9}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v11

    add-int/2addr v3, v11

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    :goto_1d
    const/high16 v2, 0x40000000    # 2.0f

    if-eq v13, v2, :cond_2b

    .line 1219
    iget v2, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2b

    move/from16 v2, v18

    goto :goto_1e

    :cond_2b
    const/4 v2, 0x0

    .line 1222
    :goto_1e
    iget v3, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    iget v11, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v11

    .line 1223
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v11, v3

    .line 1224
    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-eqz v2, :cond_2c

    goto :goto_1f

    :cond_2c
    move v3, v11

    .line 1225
    :goto_1f
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eqz v27, :cond_2d

    .line 1228
    iget v3, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2e

    move/from16 v3, v18

    goto :goto_20

    :cond_2d
    const/4 v4, -0x1

    :cond_2e
    const/4 v3, 0x0

    :goto_20
    if-eqz v35, :cond_30

    .line 1231
    invoke-virtual {v9}, Landroid/view/View;->getBaseline()I

    move-result v9

    if-eq v9, v4, :cond_30

    .line 1234
    iget v4, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    if-gez v4, :cond_2f

    iget v4, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    goto :goto_21

    :cond_2f
    iget v4, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    :goto_21
    and-int/lit8 v4, v4, 0x70

    const/4 v14, 0x4

    shr-int/2addr v4, v14

    and-int/lit8 v4, v4, -0x2

    shr-int/lit8 v4, v4, 0x1

    .line 1239
    aget v14, v15, v4

    invoke-static {v14, v9}, Ljava/lang/Math;->max(II)I

    move-result v14

    aput v14, v15, v4

    .line 1240
    aget v14, v29, v4

    sub-int/2addr v11, v9

    invoke-static {v14, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, v29, v4

    :cond_30
    move v4, v2

    move/from16 v27, v3

    goto :goto_23

    :cond_31
    :goto_22
    move/from16 v8, p2

    move/from16 v25, v11

    :goto_23
    add-int/lit8 v6, v6, 0x1

    move/from16 v8, p1

    move/from16 v11, v25

    const/4 v3, -0x1

    goto/16 :goto_18

    :cond_32
    move/from16 v8, p2

    move/from16 v25, v11

    .line 1247
    iget v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1252
    aget v1, v15, v18

    const/4 v2, -0x1

    if-ne v1, v2, :cond_34

    const/4 v1, 0x0

    aget v3, v15, v1

    if-ne v3, v2, :cond_34

    aget v1, v15, v17

    if-ne v1, v2, :cond_34

    aget v1, v15, v16

    if-eq v1, v2, :cond_33

    goto :goto_24

    :cond_33
    move v1, v5

    goto :goto_25

    .line 1256
    :cond_34
    :goto_24
    aget v1, v15, v16

    const/4 v2, 0x0

    aget v3, v15, v2

    aget v6, v15, v18

    aget v9, v15, v17

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1259
    aget v3, v29, v16

    aget v2, v29, v2

    aget v6, v29, v18

    aget v9, v29, v17

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 1262
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_25
    move/from16 v26, v10

    :goto_26
    if-nez v27, :cond_35

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v13, v2, :cond_35

    move v1, v4

    .line 1295
    :cond_35
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 1298
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/high16 v2, -0x1000000

    and-int v2, v26, v2

    or-int/2addr v0, v2

    shl-int/lit8 v2, v26, 0x10

    .line 1300
    invoke-static {v1, v8, v2}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v1

    invoke-virtual {v7, v0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->setMeasuredDimension(II)V

    if-eqz v28, :cond_36

    move/from16 v0, p1

    move/from16 v1, v25

    .line 1305
    invoke-direct {v7, v1, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->forceUniformHeight(II)V

    :cond_36
    return-void
.end method

.method measureNullChild(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method measureVertical(II)V
    .locals 32

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    const/4 v10, 0x0

    .line 590
    iput v10, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 598
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v11

    .line 600
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 601
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 606
    iget v14, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 607
    iget-boolean v15, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mUseLargestChild:Z

    const/16 v16, 0x0

    const/16 v17, 0x1

    move v1, v10

    move v3, v1

    move v5, v3

    move/from16 v18, v5

    move/from16 v20, v18

    move/from16 v21, v20

    move/from16 v0, v16

    move/from16 v19, v17

    const/high16 v2, -0x80000000

    :goto_0
    if-ge v5, v11, :cond_10

    .line 613
    invoke-virtual {v7, v5}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    .line 616
    iget v4, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v7, v5}, Landroid/support/v7/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v22

    add-int v4, v4, v22

    iput v4, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v22, v11

    move/from16 v26, v13

    const/high16 v9, -0x80000000

    goto/16 :goto_a

    .line 620
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v6

    move/from16 v26, v1

    const/16 v1, 0x8

    if-ne v6, v1, :cond_1

    .line 621
    invoke-virtual {v7, v4, v5}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v1

    add-int/2addr v5, v1

    move/from16 v22, v11

    move/from16 v1, v26

    const/high16 v9, -0x80000000

    move/from16 v26, v13

    goto/16 :goto_a

    .line 625
    :cond_1
    invoke-virtual {v7, v5}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 626
    iget v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    iget v6, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v1, v6

    iput v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 629
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 631
    iget v1, v6, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    add-float v23, v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v13, v1, :cond_3

    .line 633
    iget v0, v6, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    if-nez v0, :cond_3

    iget v0, v6, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v0, v0, v16

    if-lez v0, :cond_3

    .line 637
    iget v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 638
    iget v1, v6, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v1, v0

    move/from16 v27, v2

    iget v2, v6, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v25, v3

    move-object v3, v4

    move/from16 v22, v11

    move/from16 v18, v17

    move/from16 v28, v21

    move/from16 v8, v26

    move/from16 v2, v27

    const/high16 v9, -0x80000000

    move v11, v5

    move/from16 v26, v13

    move-object v13, v6

    goto/16 :goto_3

    :cond_3
    move/from16 v27, v2

    .line 643
    iget v0, v6, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    if-nez v0, :cond_4

    iget v0, v6, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v0, v0, v16

    if-lez v0, :cond_4

    const/4 v0, -0x2

    .line 649
    iput v0, v6, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    const/high16 v2, -0x80000000

    :goto_1
    const/16 v28, 0x0

    cmpl-float v0, v23, v16

    if-nez v0, :cond_5

    .line 656
    iget v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v29, v0

    goto :goto_2

    :cond_5
    const/16 v29, 0x0

    :goto_2
    move-object/from16 v0, p0

    move/from16 v8, v26

    const/high16 v24, 0x40000000    # 2.0f

    move-object v1, v4

    move/from16 v31, v2

    move/from16 v30, v27

    move v2, v5

    move v9, v3

    move/from16 v3, p1

    move/from16 v22, v11

    move/from16 v26, v13

    move/from16 v13, v21

    move/from16 v11, v24

    move-object/from16 v21, v4

    move/from16 v4, v28

    move v11, v5

    move/from16 v5, p2

    move/from16 v25, v9

    move/from16 v28, v13

    const/high16 v9, -0x80000000

    move-object v13, v6

    move/from16 v6, v29

    invoke-virtual/range {v0 .. v6}, Landroid/support/v7/widget/LinearLayoutCompat;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    move/from16 v0, v31

    if-eq v0, v9, :cond_6

    .line 661
    iput v0, v13, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 664
    :cond_6
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 665
    iget v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    add-int v2, v1, v0

    .line 666
    iget v3, v13, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v13, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    move-object/from16 v3, v21

    invoke-virtual {v7, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v6, v30

    if-eqz v15, :cond_7

    .line 670
    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_3

    :cond_7
    move v2, v6

    :goto_3
    if-ltz v14, :cond_8

    add-int/lit8 v5, v11, 0x1

    if-ne v14, v5, :cond_8

    .line 679
    iget v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    iput v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineChildTop:I

    :cond_8
    if-ge v11, v14, :cond_a

    .line 685
    iget v0, v13, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v0, v0, v16

    if-gtz v0, :cond_9

    goto :goto_4

    .line 686
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_4
    const/high16 v0, 0x40000000    # 2.0f

    if-eq v12, v0, :cond_b

    .line 693
    iget v0, v13, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    move/from16 v0, v17

    move/from16 v20, v0

    goto :goto_5

    :cond_b
    const/4 v0, 0x0

    .line 702
    :goto_5
    iget v1, v13, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    iget v4, v13, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v1, v4

    .line 703
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v1

    .line 704
    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 705
    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v6

    invoke-static {v10, v6}, Landroid/support/v7/internal/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v6

    if-eqz v19, :cond_c

    .line 708
    iget v8, v13, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/4 v10, -0x1

    if-ne v8, v10, :cond_c

    move/from16 v8, v17

    goto :goto_6

    :cond_c
    const/4 v8, 0x0

    .line 709
    :goto_6
    iget v10, v13, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v10, v10, v16

    if-lez v10, :cond_e

    if-eqz v0, :cond_d

    goto :goto_7

    :cond_d
    move v1, v4

    :goto_7
    move/from16 v13, v25

    .line 714
    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v13, v0

    move/from16 v4, v28

    goto :goto_9

    :cond_e
    move/from16 v13, v25

    if-eqz v0, :cond_f

    goto :goto_8

    :cond_f
    move v1, v4

    :goto_8
    move/from16 v4, v28

    .line 717
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 721
    :goto_9
    invoke-virtual {v7, v3, v11}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v0

    add-int/2addr v0, v11

    move/from16 v21, v4

    move v1, v5

    move v10, v6

    move/from16 v19, v8

    move v3, v13

    move v5, v0

    move/from16 v0, v23

    :goto_a
    add-int/lit8 v5, v5, 0x1

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v11, v22

    move/from16 v13, v26

    goto/16 :goto_0

    :cond_10
    move v8, v1

    move v6, v2

    move/from16 v22, v11

    move/from16 v26, v13

    move/from16 v4, v21

    const/high16 v9, -0x80000000

    move v13, v3

    .line 724
    iget v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    if-lez v1, :cond_11

    move/from16 v1, v22

    invoke-virtual {v7, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 725
    iget v2, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    iget v3, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v2, v3

    iput v2, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_b

    :cond_11
    move/from16 v1, v22

    :cond_12
    :goto_b
    move/from16 v2, v26

    if-eqz v15, :cond_16

    if-eq v2, v9, :cond_13

    if-nez v2, :cond_16

    :cond_13
    const/4 v3, 0x0

    .line 730
    iput v3, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v1, :cond_16

    .line 733
    invoke-virtual {v7, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_14

    .line 736
    iget v5, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v7, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v9

    add-int/2addr v5, v9

    iput v5, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v21, v3

    goto :goto_d

    .line 740
    :cond_14
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v11, 0x8

    if-ne v9, v11, :cond_15

    .line 741
    invoke-virtual {v7, v5, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_e

    .line 745
    :cond_15
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 748
    iget v11, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    add-int v14, v11, v6

    move/from16 v21, v3

    .line 749
    iget v3, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v14, v3

    iget v3, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v14, v3

    invoke-virtual {v7, v5}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v3

    add-int/2addr v14, v3

    invoke-static {v11, v14}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    :goto_d
    move/from16 v3, v21

    :goto_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 755
    :cond_16
    iget v3, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v9

    add-int/2addr v5, v9

    add-int/2addr v3, v5

    iput v3, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 760
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getSuggestedMinimumHeight()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    move/from16 v5, p2

    move v9, v13

    const/4 v11, 0x0

    .line 763
    invoke-static {v3, v5, v11}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v3

    const v11, 0xffffff

    and-int/2addr v11, v3

    .line 769
    iget v13, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v11, v13

    if-nez v18, :cond_1b

    if-eqz v11, :cond_17

    cmpl-float v13, v0, v16

    if-lez v13, :cond_17

    goto :goto_11

    .line 842
    :cond_17
    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz v15, :cond_1a

    const/high16 v4, 0x40000000    # 2.0f

    if-eq v2, v4, :cond_1a

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_1a

    .line 850
    invoke-virtual {v7, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_19

    .line 852
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v11, 0x8

    if-ne v9, v11, :cond_18

    goto :goto_10

    .line 856
    :cond_18
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 859
    iget v9, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v9, v9, v16

    if-lez v9, :cond_19

    .line 861
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v9, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-static {v6, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-virtual {v4, v9, v13}, Landroid/view/View;->measure(II)V

    :cond_19
    :goto_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_1a
    move/from16 v11, p1

    goto/16 :goto_1b

    .line 771
    :cond_1b
    :goto_11
    iget v6, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mWeightSum:F

    cmpl-float v9, v6, v16

    if-lez v9, :cond_1c

    move v0, v6

    :cond_1c
    const/4 v6, 0x0

    .line 773
    iput v6, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move v9, v4

    move v4, v6

    :goto_12
    if-ge v4, v1, :cond_27

    .line 776
    invoke-virtual {v7, v4}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 778
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-ne v14, v15, :cond_1d

    move/from16 v26, v2

    move v6, v11

    move/from16 v11, p1

    goto/16 :goto_1a

    .line 782
    :cond_1d
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 784
    iget v6, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v18, v6, v16

    if-lez v18, :cond_22

    int-to-float v15, v11

    mul-float/2addr v15, v6

    div-float/2addr v15, v0

    float-to-int v15, v15

    sub-float/2addr v0, v6

    sub-int/2addr v11, v15

    .line 791
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v18

    add-int v6, v6, v18

    move/from16 v18, v0

    iget v0, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v6, v0

    iget v0, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v6, v0

    iget v0, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    move/from16 v21, v11

    move/from16 v11, p1

    invoke-static {v11, v6, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildMeasureSpec(III)I

    move-result v0

    .line 797
    iget v6, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    if-nez v6, :cond_20

    const/high16 v6, 0x40000000    # 2.0f

    if-eq v2, v6, :cond_1e

    goto :goto_14

    :cond_1e
    if-lez v15, :cond_1f

    goto :goto_13

    :cond_1f
    const/4 v15, 0x0

    .line 810
    :goto_13
    invoke-static {v15, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    invoke-virtual {v13, v0, v15}, Landroid/view/View;->measure(II)V

    goto :goto_15

    :cond_20
    const/high16 v6, 0x40000000    # 2.0f

    .line 800
    :goto_14
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    add-int v15, v22, v15

    if-gez v15, :cond_21

    const/4 v15, 0x0

    .line 805
    :cond_21
    invoke-static {v15, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    invoke-virtual {v13, v0, v15}, Landroid/view/View;->measure(II)V

    .line 816
    :goto_15
    invoke-static {v13}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v0

    and-int/lit16 v0, v0, -0x100

    invoke-static {v10, v0}, Landroid/support/v7/internal/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v10

    move/from16 v0, v18

    move/from16 v6, v21

    goto :goto_16

    :cond_22
    move v6, v11

    move/from16 v11, p1

    .line 821
    :goto_16
    iget v15, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    move/from16 v18, v0

    iget v0, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v15, v0

    .line 822
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v15

    .line 823
    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    move/from16 v21, v0

    const/high16 v0, 0x40000000    # 2.0f

    if-eq v12, v0, :cond_23

    .line 825
    iget v0, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    move/from16 v26, v2

    const/4 v2, -0x1

    if-ne v0, v2, :cond_24

    move/from16 v0, v17

    goto :goto_17

    :cond_23
    move/from16 v26, v2

    const/4 v2, -0x1

    :cond_24
    const/4 v0, 0x0

    :goto_17
    if-eqz v0, :cond_25

    goto :goto_18

    :cond_25
    move/from16 v15, v21

    .line 828
    :goto_18
    invoke-static {v9, v15}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz v19, :cond_26

    .line 831
    iget v9, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    if-ne v9, v2, :cond_26

    move/from16 v9, v17

    goto :goto_19

    :cond_26
    const/4 v9, 0x0

    .line 833
    :goto_19
    iget v15, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 834
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    add-int v19, v15, v19

    iget v2, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int v19, v19, v2

    iget v2, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int v19, v19, v2

    invoke-virtual {v7, v13}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v2

    add-int v2, v19, v2

    invoke-static {v15, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v19, v9

    move v9, v0

    move/from16 v0, v18

    :goto_1a
    add-int/lit8 v4, v4, 0x1

    move v11, v6

    move/from16 v2, v26

    const/4 v6, 0x0

    goto/16 :goto_12

    :cond_27
    move/from16 v11, p1

    .line 839
    iget v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v0, v2

    iput v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move v0, v9

    :goto_1b
    if-nez v19, :cond_28

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v12, v2, :cond_28

    goto :goto_1c

    :cond_28
    move v0, v8

    .line 875
    :goto_1c
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v0, v2

    .line 878
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 880
    invoke-static {v0, v11, v10}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v0

    invoke-virtual {v7, v0, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->setMeasuredDimension(II)V

    if-eqz v20, :cond_29

    .line 884
    invoke-direct {v7, v1, v5}, Landroid/support/v7/widget/LinearLayoutCompat;->forceUniformWidth(II)V

    :cond_29
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 279
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    .line 283
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 284
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->drawDividersVertical(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 286
    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->drawDividersHorizontal(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 1741
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 1742
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1743
    const-class v0, Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 1748
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 1749
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1750
    const-class v0, Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 1402
    iget p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1403
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/support/v7/widget/LinearLayoutCompat;->layoutVertical(IIII)V

    goto :goto_0

    .line 1405
    :cond_0
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/support/v7/widget/LinearLayoutCompat;->layoutHorizontal(IIII)V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 546
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 547
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->measureVertical(II)V

    goto :goto_0

    .line 549
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->measureHorizontal(II)V

    :goto_0
    return-void
.end method

.method public setBaselineAligned(Z)V
    .locals 0

    .line 388
    iput-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAligned:Z

    return-void
.end method

.method public setBaselineAlignedChildIndex(I)V
    .locals 2

    if-ltz p1, :cond_0

    .line 484
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 488
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    return-void

    .line 485
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "base aligned child index out of range (0, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 229
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    return-void

    .line 232
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 234
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    .line 235
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    goto :goto_0

    .line 237
    :cond_1
    iput v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    .line 238
    iput v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    :goto_0
    if-nez p1, :cond_2

    const/4 v0, 0x1

    .line 240
    :cond_2
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->setWillNotDraw(Z)V

    .line 241
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->requestLayout()V

    return-void
.end method

.method public setDividerPadding(I)V
    .locals 0

    .line 254
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerPadding:I

    return-void
.end method

.method public setGravity(I)V
    .locals 1

    .line 1675
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    if-eq v0, p1, :cond_2

    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    const v0, 0x800003

    or-int/2addr p1, v0

    :cond_0
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1

    or-int/lit8 p1, p1, 0x30

    .line 1684
    :cond_1
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    .line 1685
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->requestLayout()V

    :cond_2
    return-void
.end method

.method public setHorizontalGravity(I)V
    .locals 2

    const v0, 0x800007

    and-int/2addr p1, v0

    .line 1691
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    and-int/2addr v0, v1

    if-eq v0, p1, :cond_0

    const v0, -0x800008

    and-int/2addr v0, v1

    or-int/2addr p1, v0

    .line 1692
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    .line 1693
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setMeasureWithLargestChildEnabled(Z)V
    .locals 0

    .line 414
    iput-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mUseLargestChild:Z

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .line 1650
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 1651
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    .line 1652
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setShowDividers(I)V
    .locals 1

    .line 192
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mShowDividers:I

    if-eq p1, v0, :cond_0

    .line 193
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->requestLayout()V

    .line 195
    :cond_0
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mShowDividers:I

    return-void
.end method

.method public setVerticalGravity(I)V
    .locals 2

    and-int/lit8 p1, p1, 0x70

    .line 1699
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v1, v0, 0x70

    if-eq v1, p1, :cond_0

    and-int/lit8 v0, v0, -0x71

    or-int/2addr p1, v0

    .line 1700
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    .line 1701
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setWeightSum(F)V
    .locals 1

    const/4 v0, 0x0

    .line 541
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mWeightSum:F

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
