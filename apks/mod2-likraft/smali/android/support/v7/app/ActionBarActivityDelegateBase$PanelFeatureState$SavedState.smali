.class Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;
.super Ljava/lang/Object;
.source "ActionBarActivityDelegateBase.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field featureId:I

.field isOpen:Z

.field menuState:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1566
    new-instance v0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState$1;

    invoke-direct {v0}, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState$1;-><init>()V

    sput-object v0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/app/ActionBarActivityDelegateBase$1;)V
    .locals 0

    .line 1536
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;-><init>()V

    return-void
.end method

.method static synthetic access$1100(Landroid/os/Parcel;)Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;
    .locals 0

    .line 1536
    invoke-static {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;->readFromParcel(Landroid/os/Parcel;)Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;

    move-result-object p0

    return-object p0
.end method

.method private static readFromParcel(Landroid/os/Parcel;)Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;
    .locals 3

    .line 1555
    new-instance v0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;

    invoke-direct {v0}, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;-><init>()V

    .line 1556
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;->featureId:I

    .line 1557
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;->isOpen:Z

    if-eqz v2, :cond_1

    .line 1560
    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p0

    iput-object p0, v0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    :cond_1
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1546
    iget p2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;->featureId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1547
    iget-boolean p2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;->isOpen:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1549
    iget-boolean p2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;->isOpen:Z

    if-eqz p2, :cond_0

    .line 1550
    iget-object p2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
