.class Lcom/smartsoft/ble/Bluetooth$5;
.super Ljava/lang/Object;
.source "Bluetooth.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


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

    .line 596
    iput-object p1, p0, Lcom/smartsoft/ble/Bluetooth$5;->this$0:Lcom/smartsoft/ble/Bluetooth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 6

    .line 601
    invoke-static {p3}, Lcom/smartsoft/ble/JScanRecord;->parseFromBytes([B)Lcom/smartsoft/ble/JScanRecord;

    move-result-object v5

    .line 603
    iget-object v0, p0, Lcom/smartsoft/ble/Bluetooth$5;->this$0:Lcom/smartsoft/ble/Bluetooth;

    invoke-static {v0, p3}, Lcom/smartsoft/ble/Bluetooth;->access$100(Lcom/smartsoft/ble/Bluetooth;[B)Lcom/smartsoft/ble/BleType;

    move-result-object v0

    .line 604
    sget-object v1, Lcom/smartsoft/ble/BleType;->Unknown:Lcom/smartsoft/ble/BleType;

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    .line 605
    iget-object v1, p0, Lcom/smartsoft/ble/Bluetooth$5;->this$0:Lcom/smartsoft/ble/Bluetooth;

    invoke-virtual {v0}, Lcom/smartsoft/ble/BleType;->ordinal()I

    move-result v3

    move-object v0, v1

    move-object v1, p1

    move-object v2, p3

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/smartsoft/ble/Bluetooth;->access$200(Lcom/smartsoft/ble/Bluetooth;Landroid/bluetooth/BluetoothDevice;[BIILcom/smartsoft/ble/JScanRecord;)V

    goto :goto_0

    .line 607
    :cond_0
    invoke-virtual {v5}, Lcom/smartsoft/ble/JScanRecord;->getManufacturerSpecificData()Landroid/util/SparseArray;

    move-result-object v0

    .line 608
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 611
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lcom/smartsoft/ble/Bluetooth;->access$300([B)Ljava/lang/String;

    move-result-object v0

    .line 612
    invoke-static {v0}, Lcom/smartsoft/ble/Bluetooth;->access$400(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 615
    :cond_2
    iget-object v0, p0, Lcom/smartsoft/ble/Bluetooth$5;->this$0:Lcom/smartsoft/ble/Bluetooth;

    sget-object v1, Lcom/smartsoft/ble/BleType;->JDY_Other:Lcom/smartsoft/ble/BleType;

    invoke-virtual {v1}, Lcom/smartsoft/ble/BleType;->ordinal()I

    move-result v3

    move-object v1, p1

    move-object v2, p3

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/smartsoft/ble/Bluetooth;->access$200(Lcom/smartsoft/ble/Bluetooth;Landroid/bluetooth/BluetoothDevice;[BIILcom/smartsoft/ble/JScanRecord;)V

    :goto_0
    return-void
.end method
