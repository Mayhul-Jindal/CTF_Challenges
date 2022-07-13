.class Lorg/qtproject/qt/android/QtMessageDialogHelper$1$2;
.super Ljava/lang/Object;
.source "QtMessageDialogHelper.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/qtproject/qt/android/QtMessageDialogHelper$1;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/QtMessageDialogHelper$1;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper$1$2;->this$1:Lorg/qtproject/qt/android/QtMessageDialogHelper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 219
    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 221
    iget-object v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper$1$2;->this$1:Lorg/qtproject/qt/android/QtMessageDialogHelper$1;

    iget-object v0, v0, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$100(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 222
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
