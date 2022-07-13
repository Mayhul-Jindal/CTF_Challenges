.class Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "ActivityChooserView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/internal/widget/ActivityChooserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityChooserViewAdapter"
.end annotation


# static fields
.field private static final ITEM_VIEW_TYPE_ACTIVITY:I = 0x0

.field private static final ITEM_VIEW_TYPE_COUNT:I = 0x3

.field private static final ITEM_VIEW_TYPE_FOOTER:I = 0x1

.field public static final MAX_ACTIVITY_COUNT_DEFAULT:I = 0x4

.field public static final MAX_ACTIVITY_COUNT_UNLIMITED:I = 0x7fffffff


# instance fields
.field private mDataModel:Landroid/support/v7/internal/widget/ActivityChooserModel;

.field private mHighlightDefaultActivity:Z

.field private mMaxActivityCount:I

.field private mShowDefaultActivity:Z

.field private mShowFooterView:Z

.field final synthetic this$0:Landroid/support/v7/internal/widget/ActivityChooserView;


# direct methods
.method private constructor <init>(Landroid/support/v7/internal/widget/ActivityChooserView;)V
    .locals 0

    .line 618
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 p1, 0x4

    .line 632
    iput p1, p0, Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/internal/widget/ActivityChooserView;Landroid/support/v7/internal/widget/ActivityChooserView$1;)V
    .locals 0

    .line 618
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;-><init>(Landroid/support/v7/internal/widget/ActivityChooserView;)V

    return-void
.end method


# virtual methods
.method public getActivityCount()I
    .locals 1

    .line 779
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroid/support/v7/internal/widget/ActivityChooserModel;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActivityChooserModel;->getActivityCount()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 2

    .line 668
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroid/support/v7/internal/widget/ActivityChooserModel;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActivityChooserModel;->getActivityCount()I

    move-result v0

    .line 669
    iget-boolean v1, p0, Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroid/support/v7/internal/widget/ActivityChooserModel;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActivityChooserModel;->getDefaultActivity()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 672
    :cond_0
    iget v1, p0, Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 673
    iget-boolean v1, p0, Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowFooterView:Z

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    return v0
.end method

.method public getDataModel()Landroid/support/v7/internal/widget/ActivityChooserModel;
    .locals 1

    .line 791
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroid/support/v7/internal/widget/ActivityChooserModel;

    return-object v0
.end method

.method public getDefaultActivity()Landroid/content/pm/ResolveInfo;
    .locals 1

    .line 768
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroid/support/v7/internal/widget/ActivityChooserModel;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActivityChooserModel;->getDefaultActivity()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public getHistorySize()I
    .locals 1

    .line 783
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroid/support/v7/internal/widget/ActivityChooserModel;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActivityChooserModel;->getHistorySize()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 680
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 690
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 685
    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroid/support/v7/internal/widget/ActivityChooserModel;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActivityChooserModel;->getDefaultActivity()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    add-int/lit8 p1, p1, 0x1

    .line 688
    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroid/support/v7/internal/widget/ActivityChooserModel;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActivityChooserModel;->getActivity(I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 654
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowFooterView:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getMaxActivityCount()I
    .locals 1

    .line 787
    iget v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    return v0
.end method

.method public getShowDefaultActivity()Z
    .locals 1

    .line 805
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 699
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 p1, 0x1

    if-ne v0, p1, :cond_2

    if-eqz p2, :cond_0

    .line 702
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 703
    :cond_0
    iget-object p2, p0, Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-virtual {p2}, Landroid/support/v7/internal/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Landroid/support/v7/appcompat/R$layout;->abc_activity_chooser_view_list_item:I

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 705
    invoke-virtual {p2, p1}, Landroid/view/View;->setId(I)V

    .line 706
    sget p1, Landroid/support/v7/appcompat/R$id;->title:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 707
    iget-object p3, p0, Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-virtual {p3}, Landroid/support/v7/internal/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v0, Landroid/support/v7/appcompat/R$string;->abc_activity_chooser_view_see_all:I

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-object p2

    .line 732
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_3
    if-eqz p2, :cond_4

    .line 712
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    sget v2, Landroid/support/v7/appcompat/R$id;->list_item:I

    if-eq v0, v2, :cond_5

    .line 713
    :cond_4
    iget-object p2, p0, Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-virtual {p2}, Landroid/support/v7/internal/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Landroid/support/v7/appcompat/R$layout;->abc_activity_chooser_view_list_item:I

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 716
    :cond_5
    iget-object p3, p0, Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-virtual {p3}, Landroid/support/v7/internal/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    .line 718
    sget v0, Landroid/support/v7/appcompat/R$id;->icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 719
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 720
    invoke-virtual {p1, p3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 722
    sget v0, Landroid/support/v7/appcompat/R$id;->title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 723
    invoke-virtual {p1, p3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public measureContentWidth()I
    .locals 9

    .line 739
    iget v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    const v1, 0x7fffffff

    .line 740
    iput v1, p0, Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    const/4 v1, 0x0

    .line 745
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 746
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 747
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;->getCount()I

    move-result v4

    const/4 v5, 0x0

    move v6, v1

    move-object v7, v5

    :goto_0
    if-ge v1, v4, :cond_0

    .line 750
    invoke-virtual {p0, v1, v7, v5}, Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 751
    invoke-virtual {v7, v2, v3}, Landroid/view/View;->measure(II)V

    .line 752
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 755
    :cond_0
    iput v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    return v6
.end method

.method public setDataModel(Landroid/support/v7/internal/widget/ActivityChooserModel;)V
    .locals 2

    .line 641
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->access$000(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/support/v7/internal/widget/ActivityChooserModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 642
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 643
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->access$1100(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/database/DataSetObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActivityChooserModel;->unregisterObserver(Ljava/lang/Object;)V

    .line 645
    :cond_0
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroid/support/v7/internal/widget/ActivityChooserModel;

    if-eqz p1, :cond_1

    .line 646
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 647
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->access$1100(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/database/DataSetObserver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/internal/widget/ActivityChooserModel;->registerObserver(Ljava/lang/Object;)V

    .line 649
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setMaxActivityCount(I)V
    .locals 1

    .line 761
    iget v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    if-eq v0, p1, :cond_0

    .line 762
    iput p1, p0, Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    .line 763
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setShowDefaultActivity(ZZ)V
    .locals 1

    .line 796
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;->mHighlightDefaultActivity:Z

    if-eq v0, p2, :cond_1

    .line 798
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    .line 799
    iput-boolean p2, p0, Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;->mHighlightDefaultActivity:Z

    .line 800
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public setShowFooterView(Z)V
    .locals 1

    .line 772
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowFooterView:Z

    if-eq v0, p1, :cond_0

    .line 773
    iput-boolean p1, p0, Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowFooterView:Z

    .line 774
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView$ActivityChooserViewAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
