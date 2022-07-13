.class public Landroid/support/v7/internal/widget/RtlSpacingHelper;
.super Ljava/lang/Object;
.source "RtlSpacingHelper.java"


# static fields
.field public static final UNDEFINED:I = -0x80000000


# instance fields
.field private mEnd:I

.field private mExplicitLeft:I

.field private mExplicitRight:I

.field private mIsRelative:Z

.field private mIsRtl:Z

.field private mLeft:I

.field private mRight:I

.field private mStart:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mLeft:I

    .line 31
    iput v0, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mRight:I

    const/high16 v1, -0x80000000

    .line 32
    iput v1, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mStart:I

    .line 33
    iput v1, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mEnd:I

    .line 34
    iput v0, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mExplicitLeft:I

    .line 35
    iput v0, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mExplicitRight:I

    .line 37
    iput-boolean v0, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mIsRtl:Z

    .line 38
    iput-boolean v0, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mIsRelative:Z

    return-void
.end method


# virtual methods
.method public getEnd()I
    .locals 1

    .line 53
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mIsRtl:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mLeft:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mRight:I

    :goto_0
    return v0
.end method

.method public getLeft()I
    .locals 1

    .line 41
    iget v0, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mLeft:I

    return v0
.end method

.method public getRight()I
    .locals 1

    .line 45
    iget v0, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mRight:I

    return v0
.end method

.method public getStart()I
    .locals 1

    .line 49
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mIsRtl:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mRight:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mLeft:I

    :goto_0
    return v0
.end method

.method public setAbsolute(II)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mIsRelative:Z

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    .line 71
    iput p1, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mExplicitLeft:I

    iput p1, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mLeft:I

    :cond_0
    if-eq p2, v0, :cond_1

    .line 72
    iput p2, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mExplicitRight:I

    iput p2, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mRight:I

    :cond_1
    return-void
.end method

.method public setDirection(Z)V
    .locals 1

    .line 76
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mIsRtl:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 79
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mIsRtl:Z

    .line 80
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mIsRelative:Z

    if-eqz v0, :cond_6

    const/high16 v0, -0x80000000

    if-eqz p1, :cond_3

    .line 82
    iget p1, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mEnd:I

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget p1, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mExplicitLeft:I

    :goto_0
    iput p1, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mLeft:I

    .line 83
    iget p1, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mStart:I

    if-eq p1, v0, :cond_2

    goto :goto_1

    :cond_2
    iget p1, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mExplicitRight:I

    :goto_1
    iput p1, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mRight:I

    goto :goto_4

    .line 85
    :cond_3
    iget p1, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mStart:I

    if-eq p1, v0, :cond_4

    goto :goto_2

    :cond_4
    iget p1, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mExplicitLeft:I

    :goto_2
    iput p1, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mLeft:I

    .line 86
    iget p1, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mEnd:I

    if-eq p1, v0, :cond_5

    goto :goto_3

    :cond_5
    iget p1, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mExplicitRight:I

    :goto_3
    iput p1, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mRight:I

    goto :goto_4

    .line 89
    :cond_6
    iget p1, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mExplicitLeft:I

    iput p1, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mLeft:I

    .line 90
    iget p1, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mExplicitRight:I

    iput p1, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mRight:I

    :goto_4
    return-void
.end method

.method public setRelative(II)V
    .locals 2

    .line 57
    iput p1, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mStart:I

    .line 58
    iput p2, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mEnd:I

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mIsRelative:Z

    .line 60
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mIsRtl:Z

    const/high16 v1, -0x80000000

    if-eqz v0, :cond_1

    if-eq p2, v1, :cond_0

    .line 61
    iput p2, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mLeft:I

    :cond_0
    if-eq p1, v1, :cond_3

    .line 62
    iput p1, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mRight:I

    goto :goto_0

    :cond_1
    if-eq p1, v1, :cond_2

    .line 64
    iput p1, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mLeft:I

    :cond_2
    if-eq p2, v1, :cond_3

    .line 65
    iput p2, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mRight:I

    :cond_3
    :goto_0
    return-void
.end method
