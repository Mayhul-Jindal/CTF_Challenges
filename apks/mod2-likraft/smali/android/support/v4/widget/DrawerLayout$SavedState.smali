.class public Landroid/support/v4/widget/DrawerLayout$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "DrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/support/v4/widget/DrawerLayout$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field lockModeLeft:I

.field lockModeRight:I

.field openDrawerGravity:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1787
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$SavedState$1;

    invoke-direct {v0}, Landroid/support/v4/widget/DrawerLayout$SavedState$1;-><init>()V

    sput-object v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1773
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x0

    .line 1768
    iput v0, p0, Landroid/support/v4/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    .line 1769
    iput v0, p0, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeLeft:I

    .line 1770
    iput v0, p0, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeRight:I

    .line 1774
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/support/v4/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 1778
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    const/4 p1, 0x0

    .line 1768
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    .line 1769
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeLeft:I

    .line 1770
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeRight:I

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1783
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1784
    iget p2, p0, Landroid/support/v4/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
