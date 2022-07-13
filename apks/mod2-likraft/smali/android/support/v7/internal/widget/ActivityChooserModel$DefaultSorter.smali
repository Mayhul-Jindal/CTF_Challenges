.class final Landroid/support/v7/internal/widget/ActivityChooserModel$DefaultSorter;
.super Ljava/lang/Object;
.source "ActivityChooserModel.java"

# interfaces
.implements Landroid/support/v7/internal/widget/ActivityChooserModel$ActivitySorter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/internal/widget/ActivityChooserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DefaultSorter"
.end annotation


# static fields
.field private static final WEIGHT_DECAY_COEFFICIENT:F = 0.95f


# instance fields
.field private final mPackageNameToActivityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/support/v7/internal/widget/ActivityChooserModel;


# direct methods
.method private constructor <init>(Landroid/support/v7/internal/widget/ActivityChooserModel;)V
    .locals 0

    .line 918
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActivityChooserModel$DefaultSorter;->this$0:Landroid/support/v7/internal/widget/ActivityChooserModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 921
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroid/support/v7/internal/widget/ActivityChooserModel$DefaultSorter;->mPackageNameToActivityMap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/internal/widget/ActivityChooserModel;Landroid/support/v7/internal/widget/ActivityChooserModel$1;)V
    .locals 0

    .line 918
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/ActivityChooserModel$DefaultSorter;-><init>(Landroid/support/v7/internal/widget/ActivityChooserModel;)V

    return-void
.end method


# virtual methods
.method public sort(Landroid/content/Intent;Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;",
            ">;)V"
        }
    .end annotation

    .line 926
    iget-object p1, p0, Landroid/support/v7/internal/widget/ActivityChooserModel$DefaultSorter;->mPackageNameToActivityMap:Ljava/util/Map;

    .line 928
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 930
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 932
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;

    const/4 v3, 0x0

    .line 933
    iput v3, v2, Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    .line 934
    iget-object v3, v2, Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 935
    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 938
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_1
    if-ltz v0, :cond_2

    .line 941
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;

    .line 942
    iget-object v3, v2, Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 943
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;

    if-eqz v3, :cond_1

    .line 945
    iget v4, v3, Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    iget v2, v2, Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;->weight:F

    mul-float/2addr v2, v1

    add-float/2addr v4, v2

    iput v4, v3, Landroid/support/v7/internal/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    const v2, 0x3f733333    # 0.95f

    mul-float/2addr v1, v2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 950
    :cond_2
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method
