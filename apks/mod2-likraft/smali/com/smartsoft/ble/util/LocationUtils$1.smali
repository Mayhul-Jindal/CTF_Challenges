.class Lcom/smartsoft/ble/util/LocationUtils$1;
.super Ljava/lang/Object;
.source "LocationUtils.java"

# interfaces
.implements Lcom/smartsoft/ble/util/XPermissionUtils$OnPermissionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartsoft/ble/util/LocationUtils;->requestLocation(Landroid/content/Context;Lcom/smartsoft/ble/Bluetooth;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$bluetooth:Lcom/smartsoft/ble/Bluetooth;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/smartsoft/ble/Bluetooth;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/smartsoft/ble/util/LocationUtils$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/smartsoft/ble/util/LocationUtils$1;->val$bluetooth:Lcom/smartsoft/ble/Bluetooth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionDenied([Ljava/lang/String;Z)V
    .locals 2

    .line 43
    iget-object p1, p0, Lcom/smartsoft/ble/util/LocationUtils$1;->val$bluetooth:Lcom/smartsoft/ble/Bluetooth;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "permission is denied"

    .line 44
    invoke-virtual {p1, v0, v1}, Lcom/smartsoft/ble/Bluetooth;->setPermissionState(ZLjava/lang/String;)V

    .line 46
    :cond_0
    iget-object p1, p0, Lcom/smartsoft/ble/util/LocationUtils$1;->val$context:Landroid/content/Context;

    const v1, 0x7f04000b

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    if-eqz p2, :cond_1

    .line 48
    iget-object p1, p0, Lcom/smartsoft/ble/util/LocationUtils$1;->val$context:Landroid/content/Context;

    const p2, 0x7f04000d

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/smartsoft/ble/util/DialogUtil;->showPermissionManagerDialog(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onPermissionGranted()V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/smartsoft/ble/util/LocationUtils$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/smartsoft/ble/util/LocationUtils;->access$000(Landroid/content/Context;)V

    return-void
.end method
