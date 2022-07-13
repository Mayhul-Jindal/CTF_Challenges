.class Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;
.super Landroid/support/v7/widget/LinearLayoutCompat;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/internal/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabView"
.end annotation


# instance fields
.field private final BG_ATTRS:[I

.field private mCustomView:Landroid/view/View;

.field private mIconView:Landroid/widget/ImageView;

.field private mTab:Landroid/support/v7/app/ActionBar$Tab;

.field private mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Landroid/support/v7/internal/widget/ScrollingTabContainerView;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/widget/ScrollingTabContainerView;Landroid/content/Context;Landroid/support/v7/app/ActionBar$Tab;Z)V
    .locals 3

    .line 381
    iput-object p1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->this$0:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    .line 382
    sget p1, Landroid/support/v7/appcompat/R$attr;->actionBarTabStyle:I

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const v1, 0x10100d4

    const/4 v2, 0x0

    aput v1, p1, v2

    .line 372
    iput-object p1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->BG_ATTRS:[I

    .line 383
    iput-object p3, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mTab:Landroid/support/v7/app/ActionBar$Tab;

    .line 385
    sget p3, Landroid/support/v7/appcompat/R$attr;->actionBarTabStyle:I

    invoke-static {p2, v0, p1, p3, v2}, Landroid/support/v7/internal/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/internal/widget/TintTypedArray;

    move-result-object p1

    .line 387
    invoke-virtual {p1, v2}, Landroid/support/v7/internal/widget/TintTypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 388
    invoke-virtual {p1, v2}, Landroid/support/v7/internal/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 390
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/internal/widget/TintTypedArray;->recycle()V

    if-eqz p4, :cond_1

    const p1, 0x800013

    .line 393
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->setGravity(I)V

    .line 396
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->update()V

    return-void
.end method


# virtual methods
.method public bindTab(Landroid/support/v7/app/ActionBar$Tab;)V
    .locals 0

    .line 400
    iput-object p1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mTab:Landroid/support/v7/app/ActionBar$Tab;

    .line 401
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->update()V

    return-void
.end method

.method public getTab()Landroid/support/v7/app/ActionBar$Tab;
    .locals 1

    .line 535
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mTab:Landroid/support/v7/app/ActionBar$Tab;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 415
    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 417
    const-class v0, Landroid/support/v7/app/ActionBar$Tab;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 422
    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 424
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 426
    const-class v0, Landroid/support/v7/app/ActionBar$Tab;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 7

    const/4 p1, 0x2

    new-array v0, p1, [I

    .line 517
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->getLocationOnScreen([I)V

    .line 519
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 520
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->getWidth()I

    move-result v2

    .line 521
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->getHeight()I

    move-result v3

    .line 522
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 524
    iget-object v5, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mTab:Landroid/support/v7/app/ActionBar$Tab;

    invoke-virtual {v5}, Landroid/support/v7/app/ActionBar$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v1, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 527
    aget v0, v0, v6

    div-int/2addr v2, p1

    add-int/2addr v0, v2

    div-int/2addr v4, p1

    sub-int/2addr v0, v4

    const/16 p1, 0x31

    invoke-virtual {v1, p1, v0, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 530
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/4 p1, 0x1

    return p1
.end method

.method public onMeasure(II)V
    .locals 1

    .line 432
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->onMeasure(II)V

    .line 435
    iget-object p1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->this$0:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    iget p1, p1, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->getMeasuredWidth()I

    move-result p1

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->this$0:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    iget v0, v0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    if-le p1, v0, :cond_0

    .line 436
    iget-object p1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->this$0:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    iget p1, p1, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->onMeasure(II)V

    :cond_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    .line 406
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 407
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->setSelected(Z)V

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    .line 409
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->sendAccessibilityEvent(I)V

    :cond_1
    return-void
.end method

.method public update()V
    .locals 10

    .line 442
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mTab:Landroid/support/v7/app/ActionBar$Tab;

    .line 443
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar$Tab;->getCustomView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 445
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_1

    if-eqz v0, :cond_0

    .line 447
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 448
    :cond_0
    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->addView(Landroid/view/View;)V

    .line 450
    :cond_1
    iput-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    .line 451
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 452
    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_d

    .line 453
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 454
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 457
    :cond_3
    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 458
    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->removeView(Landroid/view/View;)V

    .line 459
    iput-object v3, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    .line 462
    :cond_4
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 463
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    const/16 v5, 0x10

    const/4 v6, -0x2

    const/4 v7, 0x0

    if-eqz v1, :cond_6

    .line 466
    iget-object v8, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-nez v8, :cond_5

    .line 467
    new-instance v8, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 468
    new-instance v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    invoke-direct {v9, v6, v6}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    .line 470
    iput v5, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 471
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 472
    invoke-virtual {p0, v8, v7}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->addView(Landroid/view/View;I)V

    .line 473
    iput-object v8, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    .line 475
    :cond_5
    iget-object v8, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 476
    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 477
    :cond_6
    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_7

    .line 478
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 479
    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 482
    :cond_7
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_9

    .line 484
    iget-object v2, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-nez v2, :cond_8

    .line 485
    new-instance v2, Landroid/support/v7/internal/widget/CompatTextView;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->getContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Landroid/support/v7/appcompat/R$attr;->actionBarTabTextStyle:I

    invoke-direct {v2, v8, v3, v9}, Landroid/support/v7/internal/widget/CompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 487
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 488
    new-instance v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    invoke-direct {v8, v6, v6}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    .line 490
    iput v5, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 491
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 492
    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->addView(Landroid/view/View;)V

    .line 493
    iput-object v2, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    .line 495
    :cond_8
    iget-object v2, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    iget-object v2, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 497
    :cond_9
    iget-object v4, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_a

    .line 498
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 499
    iget-object v2, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 502
    :cond_a
    :goto_1
    iget-object v2, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v2, :cond_b

    .line 503
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_b
    if-nez v1, :cond_c

    .line 506
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 507
    invoke-virtual {p0, p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_2

    .line 509
    :cond_c
    invoke-virtual {p0, v3}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 510
    invoke-virtual {p0, v7}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->setLongClickable(Z)V

    :cond_d
    :goto_2
    return-void
.end method
