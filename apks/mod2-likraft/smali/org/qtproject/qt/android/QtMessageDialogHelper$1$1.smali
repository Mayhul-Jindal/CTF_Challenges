.class Lorg/qtproject/qt/android/QtMessageDialogHelper$1$1;
.super Ljava/lang/Object;
.source "QtMessageDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

    .line 203
    iput-object p1, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper$1$1;->this$1:Lorg/qtproject/qt/android/QtMessageDialogHelper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .line 206
    iget-object p1, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper$1$1;->this$1:Lorg/qtproject/qt/android/QtMessageDialogHelper$1;

    iget-object p1, p1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-virtual {p1}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->handler()J

    move-result-wide v0

    const/4 p1, -0x1

    invoke-static {v0, v1, p1}, Lorg/qtproject/qt/android/QtNativeDialogHelper;->dialogResult(JI)V

    return-void
.end method
