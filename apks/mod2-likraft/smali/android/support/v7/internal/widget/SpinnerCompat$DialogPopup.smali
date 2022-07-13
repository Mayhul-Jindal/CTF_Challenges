.class Landroid/support/v7/internal/widget/SpinnerCompat$DialogPopup;
.super Ljava/lang/Object;
.source "SpinnerCompat.java"

# interfaces
.implements Landroid/support/v7/internal/widget/SpinnerCompat$SpinnerPopup;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/internal/widget/SpinnerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogPopup"
.end annotation


# instance fields
.field private mListAdapter:Landroid/widget/ListAdapter;

.field private mPopup:Landroid/app/AlertDialog;

.field private mPrompt:Ljava/lang/CharSequence;

.field final synthetic this$0:Landroid/support/v7/internal/widget/SpinnerCompat;


# direct methods
.method private constructor <init>(Landroid/support/v7/internal/widget/SpinnerCompat;)V
    .locals 0

    .line 891
    iput-object p1, p0, Landroid/support/v7/internal/widget/SpinnerCompat$DialogPopup;->this$0:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/internal/widget/SpinnerCompat;Landroid/support/v7/internal/widget/SpinnerCompat$1;)V
    .locals 0

    .line 891
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/SpinnerCompat$DialogPopup;-><init>(Landroid/support/v7/internal/widget/SpinnerCompat;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 900
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat$DialogPopup;->mPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 901
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 902
    iput-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat$DialogPopup;->mPopup:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHintText()Ljava/lang/CharSequence;
    .locals 1

    .line 919
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getHorizontalOffset()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVerticalOffset()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .line 907
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat$DialogPopup;->mPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 936
    iget-object p1, p0, Landroid/support/v7/internal/widget/SpinnerCompat$DialogPopup;->this$0:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {p1, p2}, Landroid/support/v7/internal/widget/SpinnerCompat;->setSelection(I)V

    .line 937
    iget-object p1, p0, Landroid/support/v7/internal/widget/SpinnerCompat$DialogPopup;->this$0:Landroid/support/v7/internal/widget/SpinnerCompat;

    iget-object p1, p1, Landroid/support/v7/internal/widget/SpinnerCompat;->mOnItemClickListener:Landroid/support/v7/internal/widget/AdapterViewCompat$OnItemClickListener;

    if-eqz p1, :cond_0

    .line 938
    iget-object p1, p0, Landroid/support/v7/internal/widget/SpinnerCompat$DialogPopup;->this$0:Landroid/support/v7/internal/widget/SpinnerCompat;

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/support/v7/internal/widget/SpinnerCompat;->performItemClick(Landroid/view/View;IJ)Z

    .line 940
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat$DialogPopup;->dismiss()V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    .line 911
    iput-object p1, p0, Landroid/support/v7/internal/widget/SpinnerCompat$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const-string p1, "Spinner"

    const-string v0, "Cannot set popup background for MODE_DIALOG, ignoring"

    .line 945
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 1

    const-string p1, "Spinner"

    const-string v0, "Cannot set horizontal offset for MODE_DIALOG, ignoring"

    .line 955
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setPromptText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 915
    iput-object p1, p0, Landroid/support/v7/internal/widget/SpinnerCompat$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 1

    const-string p1, "Spinner"

    const-string v0, "Cannot set vertical offset for MODE_DIALOG, ignoring"

    .line 950
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public show()V
    .locals 3

    .line 923
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    return-void

    .line 926
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat$DialogPopup;->this$0:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/SpinnerCompat;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 927
    iget-object v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 928
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 930
    :cond_1
    iget-object v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat$DialogPopup;->this$0:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {v2}, Landroid/support/v7/internal/widget/SpinnerCompat;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat$DialogPopup;->mPopup:Landroid/app/AlertDialog;

    .line 932
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
