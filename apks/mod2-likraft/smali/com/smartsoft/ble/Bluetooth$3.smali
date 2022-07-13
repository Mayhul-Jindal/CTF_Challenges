.class Lcom/smartsoft/ble/Bluetooth$3;
.super Ljava/lang/Object;
.source "Bluetooth.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    .line 475
    iput-object p1, p0, Lcom/smartsoft/ble/Bluetooth$3;->this$0:Lcom/smartsoft/ble/Bluetooth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 478
    invoke-static {}, Lcom/smartsoft/ble/Bluetooth;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Service connected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object p1, p0, Lcom/smartsoft/ble/Bluetooth$3;->this$0:Lcom/smartsoft/ble/Bluetooth;

    check-cast p2, Lcom/smartsoft/ble/BleService$LocalBinder;

    invoke-virtual {p2}, Lcom/smartsoft/ble/BleService$LocalBinder;->getService()Lcom/smartsoft/ble/BleService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/smartsoft/ble/Bluetooth;->access$502(Lcom/smartsoft/ble/Bluetooth;Lcom/smartsoft/ble/BleService;)Lcom/smartsoft/ble/BleService;

    .line 480
    iget-object p1, p0, Lcom/smartsoft/ble/Bluetooth$3;->this$0:Lcom/smartsoft/ble/Bluetooth;

    invoke-static {p1}, Lcom/smartsoft/ble/Bluetooth;->access$500(Lcom/smartsoft/ble/Bluetooth;)Lcom/smartsoft/ble/BleService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartsoft/ble/BleService;->initialize()Z

    move-result p1

    if-nez p1, :cond_0

    .line 481
    invoke-static {}, Lcom/smartsoft/ble/Bluetooth;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Unable to initialize Bluetooth!"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 484
    :cond_0
    iget-object p1, p0, Lcom/smartsoft/ble/Bluetooth$3;->this$0:Lcom/smartsoft/ble/Bluetooth;

    invoke-static {p1}, Lcom/smartsoft/ble/Bluetooth;->access$600(Lcom/smartsoft/ble/Bluetooth;)Lcom/smartsoft/ble/BluetoothInfo;

    move-result-object p1

    if-nez p1, :cond_1

    .line 485
    invoke-static {}, Lcom/smartsoft/ble/Bluetooth;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mActiveDevice is null!"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 490
    :cond_1
    iget-object p1, p0, Lcom/smartsoft/ble/Bluetooth$3;->this$0:Lcom/smartsoft/ble/Bluetooth;

    invoke-static {p1}, Lcom/smartsoft/ble/Bluetooth;->access$500(Lcom/smartsoft/ble/Bluetooth;)Lcom/smartsoft/ble/BleService;

    move-result-object p1

    iget-object p2, p0, Lcom/smartsoft/ble/Bluetooth$3;->this$0:Lcom/smartsoft/ble/Bluetooth;

    invoke-static {p2}, Lcom/smartsoft/ble/Bluetooth;->access$600(Lcom/smartsoft/ble/Bluetooth;)Lcom/smartsoft/ble/BluetoothInfo;

    move-result-object p2

    iget-object p2, p2, Lcom/smartsoft/ble/BluetoothInfo;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, p2}, Lcom/smartsoft/ble/BleService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 491
    invoke-static {}, Lcom/smartsoft/ble/Bluetooth;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Connect failure!"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 498
    invoke-static {}, Lcom/smartsoft/ble/Bluetooth;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Service disconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object p1, p0, Lcom/smartsoft/ble/Bluetooth$3;->this$0:Lcom/smartsoft/ble/Bluetooth;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/smartsoft/ble/Bluetooth;->access$502(Lcom/smartsoft/ble/Bluetooth;Lcom/smartsoft/ble/BleService;)Lcom/smartsoft/ble/BleService;

    return-void
.end method
