.class Lcom/smartsoft/ble/Bluetooth$4;
.super Landroid/content/BroadcastReceiver;
.source "Bluetooth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartsoft/ble/Bluetooth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartsoft/ble/Bluetooth;


# direct methods
.method constructor <init>(Lcom/smartsoft/ble/Bluetooth;)V
    .locals 0

    .line 503
    iput-object p1, p0, Lcom/smartsoft/ble/Bluetooth$4;->this$0:Lcom/smartsoft/ble/Bluetooth;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 506
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.smartsoft.ble.ACTION_GATT_CONNECTED"

    .line 508
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "address"

    if-eqz v0, :cond_0

    .line 510
    iget-object p1, p0, Lcom/smartsoft/ble/Bluetooth$4;->this$0:Lcom/smartsoft/ble/Bluetooth;

    invoke-static {p1, v1}, Lcom/smartsoft/ble/Bluetooth;->access$702(Lcom/smartsoft/ble/Bluetooth;Z)Z

    .line 511
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 513
    iget-object p2, p0, Lcom/smartsoft/ble/Bluetooth$4;->this$0:Lcom/smartsoft/ble/Bluetooth;

    iget p2, p2, Lcom/smartsoft/ble/Bluetooth;->mCppThis:I

    iget-object v0, p0, Lcom/smartsoft/ble/Bluetooth$4;->this$0:Lcom/smartsoft/ble/Bluetooth;

    .line 514
    invoke-static {v0, p1}, Lcom/smartsoft/ble/Bluetooth;->access$800(Lcom/smartsoft/ble/Bluetooth;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 513
    invoke-static {p2, p1, v0}, Lcom/smartsoft/ble/NativeClass;->deviceConnected(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    const-string v0, "com.smartsoft.ble.ACTION_GATT_DISCONNECTED"

    .line 517
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 519
    iget-object p1, p0, Lcom/smartsoft/ble/Bluetooth$4;->this$0:Lcom/smartsoft/ble/Bluetooth;

    invoke-static {p1, v3}, Lcom/smartsoft/ble/Bluetooth;->access$702(Lcom/smartsoft/ble/Bluetooth;Z)Z

    .line 520
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 522
    iget-object p2, p0, Lcom/smartsoft/ble/Bluetooth$4;->this$0:Lcom/smartsoft/ble/Bluetooth;

    iget p2, p2, Lcom/smartsoft/ble/Bluetooth;->mCppThis:I

    iget-object v0, p0, Lcom/smartsoft/ble/Bluetooth$4;->this$0:Lcom/smartsoft/ble/Bluetooth;

    .line 523
    invoke-static {v0, p1}, Lcom/smartsoft/ble/Bluetooth;->access$800(Lcom/smartsoft/ble/Bluetooth;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 522
    invoke-static {p2, p1, v0}, Lcom/smartsoft/ble/NativeClass;->deviceDisconnected(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "com.smartsoft.ble.ACTION_GATT_SERVICES_DISCOVERED"

    .line 526
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 528
    iget-object p1, p0, Lcom/smartsoft/ble/Bluetooth$4;->this$0:Lcom/smartsoft/ble/Bluetooth;

    invoke-static {p1}, Lcom/smartsoft/ble/Bluetooth;->access$500(Lcom/smartsoft/ble/Bluetooth;)Lcom/smartsoft/ble/BleService;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/smartsoft/ble/BleService;->enableBle(I)V

    .line 529
    iget-object p1, p0, Lcom/smartsoft/ble/Bluetooth$4;->this$0:Lcom/smartsoft/ble/Bluetooth;

    invoke-static {p1}, Lcom/smartsoft/ble/Bluetooth;->access$500(Lcom/smartsoft/ble/Bluetooth;)Lcom/smartsoft/ble/BleService;

    move-result-object p1

    const/16 v0, 0x32

    invoke-virtual {p1, v0}, Lcom/smartsoft/ble/BleService;->delay(I)V

    .line 530
    iget-object p1, p0, Lcom/smartsoft/ble/Bluetooth$4;->this$0:Lcom/smartsoft/ble/Bluetooth;

    invoke-static {p1}, Lcom/smartsoft/ble/Bluetooth;->access$500(Lcom/smartsoft/ble/Bluetooth;)Lcom/smartsoft/ble/BleService;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/smartsoft/ble/BleService;->enableBle(I)V

    .line 531
    iget-object p1, p0, Lcom/smartsoft/ble/Bluetooth$4;->this$0:Lcom/smartsoft/ble/Bluetooth;

    invoke-static {p1}, Lcom/smartsoft/ble/Bluetooth;->access$500(Lcom/smartsoft/ble/Bluetooth;)Lcom/smartsoft/ble/BleService;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/smartsoft/ble/BleService;->delay(I)V

    .line 532
    iget-object p1, p0, Lcom/smartsoft/ble/Bluetooth$4;->this$0:Lcom/smartsoft/ble/Bluetooth;

    invoke-static {p1}, Lcom/smartsoft/ble/Bluetooth;->access$500(Lcom/smartsoft/ble/Bluetooth;)Lcom/smartsoft/ble/BleService;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/smartsoft/ble/BleService;->enableBle(I)V

    .line 534
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 536
    iget-object p2, p0, Lcom/smartsoft/ble/Bluetooth$4;->this$0:Lcom/smartsoft/ble/Bluetooth;

    iget p2, p2, Lcom/smartsoft/ble/Bluetooth;->mCppThis:I

    invoke-static {p2, p1}, Lcom/smartsoft/ble/NativeClass;->readyToWrite(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "com.smartsoft.ble.ACTION_DATA_AVAILABLE"

    .line 540
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "com.smartsoft.ble.EXTRA_DATA"

    .line 541
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    .line 543
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 545
    iget-object v0, p0, Lcom/smartsoft/ble/Bluetooth$4;->this$0:Lcom/smartsoft/ble/Bluetooth;

    iget v0, v0, Lcom/smartsoft/ble/Bluetooth;->mCppThis:I

    invoke-static {v0, p2, p1}, Lcom/smartsoft/ble/NativeClass;->dataReceived(ILjava/lang/String;[B)V

    goto :goto_0

    :cond_3
    const-string p2, "com.smartsoft.ble.ACTION_DATA_AVAILABLE_FUNC"

    .line 549
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    return-void
.end method
