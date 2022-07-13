.class abstract Landroid/support/v7/internal/widget/AbsSpinnerCompat;
.super Landroid/support/v7/internal/widget/AdapterViewCompat;
.source "AbsSpinnerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/internal/widget/AbsSpinnerCompat$RecycleBin;,
        Landroid/support/v7/internal/widget/AbsSpinnerCompat$SavedState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/internal/widget/AdapterViewCompat<",
        "Landroid/widget/SpinnerAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field mAdapter:Landroid/widget/SpinnerAdapter;

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field mHeightMeasureSpec:I

.field final mRecycler:Landroid/support/v7/internal/widget/AbsSpinnerCompat$RecycleBin;

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field final mSpinnerPadding:Landroid/graphics/Rect;

.field private mTouchFrame:Landroid/graphics/Rect;

.field mWidthMeasureSpec:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/AdapterViewCompat;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 41
    iput p1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSelectionLeftPadding:I

    .line 42
    iput p1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSelectionTopPadding:I

    .line 43
    iput p1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSelectionRightPadding:I

    .line 44
    iput p1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSelectionBottomPadding:I

    .line 45
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSpinnerPadding:Landroid/graphics/Rect;

    .line 47
    new-instance p1, Landroid/support/v7/internal/widget/AbsSpinnerCompat$RecycleBin;

    invoke-direct {p1, p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat$RecycleBin;-><init>(Landroid/support/v7/internal/widget/AbsSpinnerCompat;)V

    iput-object p1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mRecycler:Landroid/support/v7/internal/widget/AbsSpinnerCompat$RecycleBin;

    .line 55
    invoke-direct {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->initAbsSpinner()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/internal/widget/AdapterViewCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 41
    iput p1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSelectionLeftPadding:I

    .line 42
    iput p1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSelectionTopPadding:I

    .line 43
    iput p1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSelectionRightPadding:I

    .line 44
    iput p1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSelectionBottomPadding:I

    .line 45
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSpinnerPadding:Landroid/graphics/Rect;

    .line 47
    new-instance p1, Landroid/support/v7/internal/widget/AbsSpinnerCompat$RecycleBin;

    invoke-direct {p1, p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat$RecycleBin;-><init>(Landroid/support/v7/internal/widget/AbsSpinnerCompat;)V

    iput-object p1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mRecycler:Landroid/support/v7/internal/widget/AbsSpinnerCompat$RecycleBin;

    .line 64
    invoke-direct {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->initAbsSpinner()V

    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/internal/widget/AbsSpinnerCompat;Landroid/view/View;Z)V
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method private initAbsSpinner()V
    .locals 1

    const/4 v0, 0x1

    .line 71
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->setFocusable(Z)V

    const/4 v0, 0x0

    .line 72
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .line 229
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .line 35
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/SpinnerAdapter;
    .locals 1

    .line 308
    iget-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mAdapter:Landroid/widget/SpinnerAdapter;

    return-object v0
.end method

.method getChildHeight(Landroid/view/View;)I
    .locals 0

    .line 220
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    return p1
.end method

.method getChildWidth(Landroid/view/View;)I
    .locals 0

    .line 224
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    return p1
.end method

.method public getCount()I
    .locals 1

    .line 313
    iget v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mItemCount:I

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2

    .line 286
    iget v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 287
    iget v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSelectedPosition:I

    iget v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method abstract layout(IZ)V
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 147
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 151
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getPaddingLeft()I

    move-result v1

    .line 152
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getPaddingTop()I

    move-result v2

    .line 153
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getPaddingRight()I

    move-result v3

    .line 154
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getPaddingBottom()I

    move-result v4

    .line 156
    iget-object v5, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v6, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSelectionLeftPadding:I

    if-le v1, v6, :cond_0

    goto :goto_0

    :cond_0
    move v1, v6

    :goto_0
    iput v1, v5, Landroid/graphics/Rect;->left:I

    .line 158
    iget-object v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSelectionTopPadding:I

    if-le v2, v5, :cond_1

    goto :goto_1

    :cond_1
    move v2, v5

    :goto_1
    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 160
    iget-object v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSelectionRightPadding:I

    if-le v3, v2, :cond_2

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 162
    iget-object v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSelectionBottomPadding:I

    if-le v4, v2, :cond_3

    goto :goto_3

    :cond_3
    move v4, v2

    :goto_3
    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 165
    iget-boolean v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mDataChanged:Z

    if-eqz v1, :cond_4

    .line 166
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->handleDataChanged()V

    .line 173
    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getSelectedItemPosition()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v1, :cond_7

    .line 174
    iget-object v4, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v4, :cond_7

    invoke-interface {v4}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_7

    .line 176
    iget-object v4, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mRecycler:Landroid/support/v7/internal/widget/AbsSpinnerCompat$RecycleBin;

    invoke-virtual {v4, v1}, Landroid/support/v7/internal/widget/AbsSpinnerCompat$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_5

    .line 179
    iget-object v4, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v5, 0x0

    invoke-interface {v4, v1, v5, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    :cond_5
    if-eqz v4, :cond_7

    .line 184
    iget-object v5, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mRecycler:Landroid/support/v7/internal/widget/AbsSpinnerCompat$RecycleBin;

    invoke-virtual {v5, v1, v4}, Landroid/support/v7/internal/widget/AbsSpinnerCompat$RecycleBin;->put(ILandroid/view/View;)V

    .line 186
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_6

    .line 187
    iput-boolean v2, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mBlockLayoutRequests:Z

    .line 188
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    iput-boolean v3, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mBlockLayoutRequests:Z

    .line 191
    :cond_6
    invoke-virtual {p0, v4, p1, p2}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->measureChild(Landroid/view/View;II)V

    .line 193
    invoke-virtual {p0, v4}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getChildHeight(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    .line 194
    invoke-virtual {p0, v4}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getChildWidth(Landroid/view/View;)I

    move-result v2

    iget-object v4, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v4

    iget-object v4, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v4

    move v4, v2

    move v2, v3

    goto :goto_4

    :cond_7
    move v1, v3

    move v4, v1

    :goto_4
    if-eqz v2, :cond_8

    .line 202
    iget-object v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    if-nez v0, :cond_8

    .line 204
    iget-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int v4, v0, v2

    .line 208
    :cond_8
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 209
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 211
    invoke-static {v0, p2, v3}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v0

    .line 212
    invoke-static {v1, p1, v3}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v1

    .line 214
    invoke-virtual {p0, v1, v0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->setMeasuredDimension(II)V

    .line 215
    iput p2, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mHeightMeasureSpec:I

    .line 216
    iput p1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mWidthMeasureSpec:I

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    .line 406
    check-cast p1, Landroid/support/v7/internal/widget/AbsSpinnerCompat$SavedState;

    .line 408
    invoke-virtual {p1}, Landroid/support/v7/internal/widget/AbsSpinnerCompat$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v7/internal/widget/AdapterViewCompat;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 410
    iget-wide v0, p1, Landroid/support/v7/internal/widget/AbsSpinnerCompat$SavedState;->selectedId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    .line 411
    iput-boolean v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mDataChanged:Z

    .line 412
    iput-boolean v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mNeedSync:Z

    .line 413
    iget-wide v0, p1, Landroid/support/v7/internal/widget/AbsSpinnerCompat$SavedState;->selectedId:J

    iput-wide v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSyncRowId:J

    .line 414
    iget p1, p1, Landroid/support/v7/internal/widget/AbsSpinnerCompat$SavedState;->position:I

    iput p1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSyncPosition:I

    const/4 p1, 0x0

    .line 415
    iput p1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSyncMode:I

    .line 416
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->requestLayout()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .line 393
    invoke-super {p0}, Landroid/support/v7/internal/widget/AdapterViewCompat;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 394
    new-instance v1, Landroid/support/v7/internal/widget/AbsSpinnerCompat$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 395
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getSelectedItemId()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/support/v7/internal/widget/AbsSpinnerCompat$SavedState;->selectedId:J

    .line 396
    iget-wide v2, v1, Landroid/support/v7/internal/widget/AbsSpinnerCompat$SavedState;->selectedId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    .line 397
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getSelectedItemPosition()I

    move-result v0

    iput v0, v1, Landroid/support/v7/internal/widget/AbsSpinnerCompat$SavedState;->position:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 399
    iput v0, v1, Landroid/support/v7/internal/widget/AbsSpinnerCompat$SavedState;->position:I

    :goto_0
    return-object v1
.end method

.method public pointToPosition(II)I
    .locals 4

    .line 325
    iget-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mTouchFrame:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 327
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mTouchFrame:Landroid/graphics/Rect;

    .line 331
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 333
    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 334
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 335
    invoke-virtual {v2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 336
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 337
    iget p1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mFirstPosition:I

    add-int/2addr p1, v1

    return p1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method recycleAllViews()V
    .locals 6

    .line 235
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getChildCount()I

    move-result v0

    .line 236
    iget-object v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mRecycler:Landroid/support/v7/internal/widget/AbsSpinnerCompat$RecycleBin;

    .line 237
    iget v2, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mFirstPosition:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 241
    invoke-virtual {p0, v3}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    add-int v5, v2, v3

    .line 243
    invoke-virtual {v1, v5, v4}, Landroid/support/v7/internal/widget/AbsSpinnerCompat$RecycleBin;->put(ILandroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 301
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    .line 302
    invoke-super {p0}, Landroid/support/v7/internal/widget/AdapterViewCompat;->requestLayout()V

    :cond_0
    return-void
.end method

.method resetList()V
    .locals 3

    const/4 v0, 0x0

    .line 125
    iput-boolean v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mDataChanged:Z

    .line 126
    iput-boolean v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mNeedSync:Z

    .line 128
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->removeAllViewsInLayout()V

    const/4 v0, -0x1

    .line 129
    iput v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mOldSelectedPosition:I

    const-wide/high16 v1, -0x8000000000000000L

    .line 130
    iput-wide v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mOldSelectedRowId:J

    .line 132
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->setSelectedPositionInt(I)V

    .line 133
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->setNextSelectedPositionInt(I)V

    .line 134
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->invalidate()V

    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 35
    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 2

    .line 83
    iget-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_0

    .line 84
    iget-object v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/SpinnerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 85
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->resetList()V

    .line 88
    :cond_0
    iput-object p1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 p1, -0x1

    .line 90
    iput p1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mOldSelectedPosition:I

    const-wide/high16 v0, -0x8000000000000000L

    .line 91
    iput-wide v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mOldSelectedRowId:J

    .line 93
    iget-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_2

    .line 94
    iget v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mItemCount:I

    iput v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mOldItemCount:I

    .line 95
    iget-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mItemCount:I

    .line 96
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->checkFocus()V

    .line 98
    new-instance v0, Landroid/support/v7/internal/widget/AdapterViewCompat$AdapterDataSetObserver;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/widget/AdapterViewCompat$AdapterDataSetObserver;-><init>(Landroid/support/v7/internal/widget/AdapterViewCompat;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 99
    iget-object v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1, v0}, Landroid/widget/SpinnerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 101
    iget v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mItemCount:I

    if-lez v0, :cond_1

    const/4 p1, 0x0

    .line 103
    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->setSelectedPositionInt(I)V

    .line 104
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->setNextSelectedPositionInt(I)V

    .line 106
    iget p1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mItemCount:I

    if-nez p1, :cond_3

    .line 108
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->checkSelectionChanged()V

    goto :goto_0

    .line 112
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->checkFocus()V

    .line 113
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->resetList()V

    .line 115
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->checkSelectionChanged()V

    .line 118
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->requestLayout()V

    return-void
.end method

.method public setSelection(I)V
    .locals 0

    .line 259
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->setNextSelectedPositionInt(I)V

    .line 260
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->requestLayout()V

    .line 261
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->invalidate()V

    return-void
.end method

.method public setSelection(IZ)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 252
    iget p2, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mFirstPosition:I

    if-gt p2, p1, :cond_0

    iget p2, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getChildCount()I

    move-result v1

    add-int/2addr p2, v1

    sub-int/2addr p2, v0

    if-gt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 254
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->setSelectionInt(IZ)V

    return-void
.end method

.method setSelectionInt(IZ)V
    .locals 1

    .line 273
    iget v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mOldSelectedPosition:I

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    .line 274
    iput-boolean v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mBlockLayoutRequests:Z

    .line 275
    iget v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mSelectedPosition:I

    sub-int v0, p1, v0

    .line 276
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->setNextSelectedPositionInt(I)V

    .line 277
    invoke-virtual {p0, v0, p2}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->layout(IZ)V

    const/4 p1, 0x0

    .line 278
    iput-boolean p1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->mBlockLayoutRequests:Z

    :cond_0
    return-void
.end method
