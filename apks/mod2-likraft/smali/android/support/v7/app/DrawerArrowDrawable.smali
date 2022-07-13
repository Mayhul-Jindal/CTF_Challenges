.class abstract Landroid/support/v7/app/DrawerArrowDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "DrawerArrowDrawable.java"


# static fields
.field private static final ARROW_HEAD_ANGLE:F


# instance fields
.field private final mBarGap:F

.field private final mBarSize:F

.field private final mBarThickness:F

.field private final mMiddleArrowSize:F

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPath:Landroid/graphics/Path;

.field private mProgress:F

.field private final mSize:I

.field private final mSpin:Z

.field private final mTopBottomArrowSize:F

.field private mVerticalMirror:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, 0x4046800000000000L    # 45.0

    .line 38
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Landroid/support/v7/app/DrawerArrowDrawable;->ARROW_HEAD_ANGLE:F

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 63
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    .line 52
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Landroid/support/v7/app/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    const/4 v1, 0x0

    .line 56
    iput-boolean v1, p0, Landroid/support/v7/app/DrawerArrowDrawable;->mVerticalMirror:Z

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v2, Landroid/support/v7/appcompat/R$styleable;->DrawerArrowToggle:[I

    sget v3, Landroid/support/v7/appcompat/R$attr;->drawerArrowStyle:I

    sget v4, Landroid/support/v7/appcompat/R$style;->Base_Widget_AppCompat_DrawerArrowToggle:I

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v2, v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v2, 0x1

    .line 68
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 69
    sget v3, Landroid/support/v7/appcompat/R$styleable;->DrawerArrowToggle_color:I

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    sget v3, Landroid/support/v7/appcompat/R$styleable;->DrawerArrowToggle_drawableSize:I

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/DrawerArrowDrawable;->mSize:I

    .line 71
    sget v1, Landroid/support/v7/appcompat/R$styleable;->DrawerArrowToggle_barSize:I

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Landroid/support/v7/app/DrawerArrowDrawable;->mBarSize:F

    .line 72
    sget v1, Landroid/support/v7/appcompat/R$styleable;->DrawerArrowToggle_topBottomBarArrowSize:I

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Landroid/support/v7/app/DrawerArrowDrawable;->mTopBottomArrowSize:F

    .line 74
    sget v1, Landroid/support/v7/appcompat/R$styleable;->DrawerArrowToggle_thickness:I

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Landroid/support/v7/app/DrawerArrowDrawable;->mBarThickness:F

    .line 75
    sget v4, Landroid/support/v7/appcompat/R$styleable;->DrawerArrowToggle_gapBetweenBars:I

    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Landroid/support/v7/app/DrawerArrowDrawable;->mBarGap:F

    .line 76
    sget v4, Landroid/support/v7/appcompat/R$styleable;->DrawerArrowToggle_spinBars:I

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Landroid/support/v7/app/DrawerArrowDrawable;->mSpin:Z

    .line 77
    sget v2, Landroid/support/v7/appcompat/R$styleable;->DrawerArrowToggle_middleBarArrowSize:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroid/support/v7/app/DrawerArrowDrawable;->mMiddleArrowSize:F

    .line 79
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 82
    sget-object p1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 83
    sget-object p1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 84
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private static lerp(FFF)F
    .locals 0

    sub-float/2addr p1, p0

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    return p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 98
    invoke-virtual {p0}, Landroid/support/v7/app/DrawerArrowDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 99
    invoke-virtual {p0}, Landroid/support/v7/app/DrawerArrowDrawable;->isLayoutRtl()Z

    move-result v1

    .line 101
    iget v2, p0, Landroid/support/v7/app/DrawerArrowDrawable;->mBarSize:F

    iget v3, p0, Landroid/support/v7/app/DrawerArrowDrawable;->mTopBottomArrowSize:F

    iget v4, p0, Landroid/support/v7/app/DrawerArrowDrawable;->mProgress:F

    invoke-static {v2, v3, v4}, Landroid/support/v7/app/DrawerArrowDrawable;->lerp(FFF)F

    move-result v2

    .line 102
    iget v3, p0, Landroid/support/v7/app/DrawerArrowDrawable;->mBarSize:F

    iget v4, p0, Landroid/support/v7/app/DrawerArrowDrawable;->mMiddleArrowSize:F

    iget v5, p0, Landroid/support/v7/app/DrawerArrowDrawable;->mProgress:F

    invoke-static {v3, v4, v5}, Landroid/support/v7/app/DrawerArrowDrawable;->lerp(FFF)F

    move-result v3

    .line 104
    iget v4, p0, Landroid/support/v7/app/DrawerArrowDrawable;->mBarThickness:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget v6, p0, Landroid/support/v7/app/DrawerArrowDrawable;->mProgress:F

    const/4 v7, 0x0

    invoke-static {v7, v4, v6}, Landroid/support/v7/app/DrawerArrowDrawable;->lerp(FFF)F

    move-result v4

    .line 106
    sget v6, Landroid/support/v7/app/DrawerArrowDrawable;->ARROW_HEAD_ANGLE:F

    iget v8, p0, Landroid/support/v7/app/DrawerArrowDrawable;->mProgress:F

    invoke-static {v7, v6, v8}, Landroid/support/v7/app/DrawerArrowDrawable;->lerp(FFF)F

    move-result v6

    if-eqz v1, :cond_0

    move v8, v7

    goto :goto_0

    :cond_0
    const/high16 v8, -0x3ccc0000    # -180.0f

    :goto_0
    const/high16 v9, 0x43340000    # 180.0f

    if-eqz v1, :cond_1

    move v10, v9

    goto :goto_1

    :cond_1
    move v10, v7

    .line 109
    :goto_1
    iget v11, p0, Landroid/support/v7/app/DrawerArrowDrawable;->mProgress:F

    invoke-static {v8, v10, v11}, Landroid/support/v7/app/DrawerArrowDrawable;->lerp(FFF)F

    move-result v8

    .line 110
    iget v10, p0, Landroid/support/v7/app/DrawerArrowDrawable;->mBarGap:F

    iget v11, p0, Landroid/support/v7/app/DrawerArrowDrawable;->mBarThickness:F

    add-float/2addr v10, v11

    iget v11, p0, Landroid/support/v7/app/DrawerArrowDrawable;->mProgress:F

    invoke-static {v10, v7, v11}, Landroid/support/v7/app/DrawerArrowDrawable;->lerp(FFF)F

    move-result v10

    .line 111
    iget-object v11, p0, Landroid/support/v7/app/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v11}, Landroid/graphics/Path;->rewind()V

    neg-float v11, v3

    div-float/2addr v11, v5

    .line 115
    iget-object v5, p0, Landroid/support/v7/app/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    add-float v12, v11, v4

    invoke-virtual {v5, v12, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 116
    iget-object v5, p0, Landroid/support/v7/app/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    sub-float/2addr v3, v4

    invoke-virtual {v5, v3, v7}, Landroid/graphics/Path;->rLineTo(FF)V

    float-to-double v2, v2

    float-to-double v4, v6

    .line 118
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-float v6, v12

    .line 119
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-float v2, v2

    .line 122
    iget-object v3, p0, Landroid/support/v7/app/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3, v11, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 123
    iget-object v3, p0, Landroid/support/v7/app/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3, v6, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 126
    iget-object v3, p0, Landroid/support/v7/app/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    neg-float v4, v10

    invoke-virtual {v3, v11, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 127
    iget-object v3, p0, Landroid/support/v7/app/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    neg-float v2, v2

    invoke-virtual {v3, v6, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 128
    iget-object v2, p0, Landroid/support/v7/app/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2, v7, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 129
    iget-object v2, p0, Landroid/support/v7/app/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 131
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 134
    iget-boolean v2, p0, Landroid/support/v7/app/DrawerArrowDrawable;->mSpin:Z

    if-eqz v2, :cond_3

    .line 135
    iget-boolean v2, p0, Landroid/support/v7/app/DrawerArrowDrawable;->mVerticalMirror:Z

    xor-int/2addr v1, v2

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x1

    :goto_2
    int-to-float v1, v1

    mul-float/2addr v8, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v8, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_3

    :cond_3
    if-eqz v1, :cond_4

    .line 138
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v9, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 140
    :cond_4
    :goto_3
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 141
    iget-object v0, p0, Landroid/support/v7/app/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/support/v7/app/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 143
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 164
    iget v0, p0, Landroid/support/v7/app/DrawerArrowDrawable;->mSize:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 169
    iget v0, p0, Landroid/support/v7/app/DrawerArrowDrawable;->mSize:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getProgress()F
    .locals 1

    .line 178
    iget v0, p0, Landroid/support/v7/app/DrawerArrowDrawable;->mProgress:F

    return v0
.end method

.method public isAutoMirrored()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method abstract isLayoutRtl()Z
.end method

.method public setAlpha(I)V
    .locals 1

    .line 148
    iget-object v0, p0, Landroid/support/v7/app/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 159
    iget-object v0, p0, Landroid/support/v7/app/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setProgress(F)V
    .locals 0

    .line 182
    iput p1, p0, Landroid/support/v7/app/DrawerArrowDrawable;->mProgress:F

    .line 183
    invoke-virtual {p0}, Landroid/support/v7/app/DrawerArrowDrawable;->invalidateSelf()V

    return-void
.end method

.method protected setVerticalMirror(Z)V
    .locals 0

    .line 93
    iput-boolean p1, p0, Landroid/support/v7/app/DrawerArrowDrawable;->mVerticalMirror:Z

    return-void
.end method
