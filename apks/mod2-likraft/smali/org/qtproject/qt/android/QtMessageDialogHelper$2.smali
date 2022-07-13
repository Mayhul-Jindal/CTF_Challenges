.class Lorg/qtproject/qt/android/QtMessageDialogHelper$2;
.super Ljava/lang/Object;
.source "QtMessageDialogHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/QtMessageDialogHelper;->hide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/QtMessageDialogHelper;)V
    .locals 0

    .line 354
    iput-object p1, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper$2;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 357
    iget-object v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper$2;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$000(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper$2;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$000(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper$2;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$000(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 359
    :cond_0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper$2;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->reset()V

    return-void
.end method
