.class Landroid/support/v7/internal/widget/SpinnerCompat$DropdownPopup$1;
.super Ljava/lang/Object;
.source "SpinnerCompat.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/internal/widget/SpinnerCompat$DropdownPopup;-><init>(Landroid/support/v7/internal/widget/SpinnerCompat;Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v7/internal/widget/SpinnerCompat$DropdownPopup;

.field final synthetic val$this$0:Landroid/support/v7/internal/widget/SpinnerCompat;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/SpinnerCompat$DropdownPopup;Landroid/support/v7/internal/widget/SpinnerCompat;)V
    .locals 0

    .line 988
    iput-object p1, p0, Landroid/support/v7/internal/widget/SpinnerCompat$DropdownPopup$1;->this$1:Landroid/support/v7/internal/widget/SpinnerCompat$DropdownPopup;

    iput-object p2, p0, Landroid/support/v7/internal/widget/SpinnerCompat$DropdownPopup$1;->val$this$0:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 991
    iget-object p1, p0, Landroid/support/v7/internal/widget/SpinnerCompat$DropdownPopup$1;->this$1:Landroid/support/v7/internal/widget/SpinnerCompat$DropdownPopup;

    iget-object p1, p1, Landroid/support/v7/internal/widget/SpinnerCompat$DropdownPopup;->this$0:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {p1, p3}, Landroid/support/v7/internal/widget/SpinnerCompat;->setSelection(I)V

    .line 992
    iget-object p1, p0, Landroid/support/v7/internal/widget/SpinnerCompat$DropdownPopup$1;->this$1:Landroid/support/v7/internal/widget/SpinnerCompat$DropdownPopup;

    iget-object p1, p1, Landroid/support/v7/internal/widget/SpinnerCompat$DropdownPopup;->this$0:Landroid/support/v7/internal/widget/SpinnerCompat;

    iget-object p1, p1, Landroid/support/v7/internal/widget/SpinnerCompat;->mOnItemClickListener:Landroid/support/v7/internal/widget/AdapterViewCompat$OnItemClickListener;

    if-eqz p1, :cond_0

    .line 993
    iget-object p1, p0, Landroid/support/v7/internal/widget/SpinnerCompat$DropdownPopup$1;->this$1:Landroid/support/v7/internal/widget/SpinnerCompat$DropdownPopup;

    iget-object p1, p1, Landroid/support/v7/internal/widget/SpinnerCompat$DropdownPopup;->this$0:Landroid/support/v7/internal/widget/SpinnerCompat;

    iget-object p4, p0, Landroid/support/v7/internal/widget/SpinnerCompat$DropdownPopup$1;->this$1:Landroid/support/v7/internal/widget/SpinnerCompat$DropdownPopup;

    invoke-static {p4}, Landroid/support/v7/internal/widget/SpinnerCompat$DropdownPopup;->access$300(Landroid/support/v7/internal/widget/SpinnerCompat$DropdownPopup;)Landroid/widget/ListAdapter;

    move-result-object p4

    invoke-interface {p4, p3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide p4

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/support/v7/internal/widget/SpinnerCompat;->performItemClick(Landroid/view/View;IJ)Z

    .line 996
    :cond_0
    iget-object p1, p0, Landroid/support/v7/internal/widget/SpinnerCompat$DropdownPopup$1;->this$1:Landroid/support/v7/internal/widget/SpinnerCompat$DropdownPopup;

    invoke-virtual {p1}, Landroid/support/v7/internal/widget/SpinnerCompat$DropdownPopup;->dismiss()V

    return-void
.end method
